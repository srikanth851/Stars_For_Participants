package com.cognizant.model.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.cognizant.dao.DB;
import com.cognizant.model.User;

@Service
public class Util {

	// converts browser date string to sql date
	public static java.sql.Date stringToSqlDateConverter(String sDate) {
		Date utDate = null;
		System.out.println("==========> sDate: " + sDate);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			utDate = sdf.parse(sDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
//		System.out.println("==========> utilDate: " + utDate);
		java.sql.Date sqlDate;
		String s = new SimpleDateFormat("yyyy-MM-dd").format(utDate);
//		System.out.println("==========> dateString: " + utDate);
		sqlDate = java.sql.Date.valueOf(s);
//		System.out.println("==========> sqlDate: " + sqlDate);
		return sqlDate;
	}

	// converts browser date string to sql date
	public static String utilDateToString(Date utDate) {
		return new SimpleDateFormat("dd-MM-yyyy").format(utDate);
	}
}
