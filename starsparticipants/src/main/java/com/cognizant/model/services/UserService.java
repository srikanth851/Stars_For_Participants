package com.cognizant.model.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.stereotype.Service;

import com.cognizant.dao.DB;
import com.cognizant.model.User;

@Service
public class UserService {

	// to insert new user data into database
	public boolean registerNewUser(User user) {
		boolean isRegistrationDone = false;
		Connection connection = null;
		PreparedStatement myStatement = null;
		try {
			try {
				connection = DB.getConnection();
			} catch (SQLException | ClassNotFoundException e) {
				e.printStackTrace();
			}
			String myQuery = "INSERT INTO user(firstname, lastname, dateofbirth, gender, contactNo, username, password, usercat)"
							+" values(?, ?, ?, ?, ?, ?, ?, ?);";
			System.out.println("=============>> dateOfBirth: " + user.getDateOfBirth());
			myStatement = connection.prepareStatement(myQuery);
			myStatement.setString(1, user.getFirstname());
			myStatement.setString(2, user.getLastname());
			myStatement.setDate(3, Util.stringToSqlDateConverter(user.getDateOfBirth()));
			myStatement.setString(4, user.getGender());
			myStatement.setString(5, user.getContactNo());
			myStatement.setString(6, user.getUsername());
			myStatement.setString(7, user.getPassword());
			myStatement.setString(8, user.getUsercat());
			int rows = myStatement.executeUpdate();
			isRegistrationDone = (rows == 1) ? true : false;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return isRegistrationDone;
	}

	// to check and get existing user from database
	public User checkForExistingUser(User user) {
		User returnUser = new User();

		Connection connection = null;
		PreparedStatement myStatement = null;
		ResultSet myResult = null;
		try {
			try {
				connection = DB.getConnection();
			} catch (SQLException | ClassNotFoundException e) {
				e.printStackTrace();
			}
			String myQuery = "SELECT userId, firstname, username, password, usercat FROM user WHERE username= ? AND password= ?;";
			myStatement = connection.prepareStatement(myQuery);
			myStatement.setString(1, user.getUsername());
			myStatement.setString(2, user.getPassword());
			myResult = myStatement.executeQuery();
			while (myResult.next()) {
				returnUser.setUserId(myResult.getInt(1));
				returnUser.setFirstname(myResult.getString(2));
				returnUser.setUsername(myResult.getString(3));
				returnUser.setPassword(myResult.getString(4));
				returnUser.setUsercat(myResult.getString(5));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return returnUser;
	}

}
