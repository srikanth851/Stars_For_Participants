package com.cognizant.dao;

import java.io.FileInputStream;
//import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

//data base connection
public class DB {
	//variables creation.
	private static Connection con = null;
	private static Properties props = new Properties();
//	private static DB instance;

	private DB() {
	}

//	public static DB getInstance() {
//		if(instance==null) {
//			instance= new DB();
//		}
//		return instance;
//	}

	public static Connection getConnection() throws ClassNotFoundException, SQLException {

//		System.out.println("----> "+ System.getProperty("user.dir"));
		try {

			FileInputStream fis = null;
			fis = new FileInputStream("src\\main\\resources\\database.properties");
			props.load(fis);

			// load the Driver Class
			Class.forName(props.getProperty("DB_DRIVER_CLASS"));

			// create the connection now
			con = DriverManager.getConnection(props.getProperty("DB_URL"), props.getProperty("DB_USERNAME"),
					props.getProperty("DB_PASSWORD"));
		} catch (IOException e) {
			e.printStackTrace();
		}

		return con;
	}
}
