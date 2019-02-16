package com.sos.user.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.stereotype.Component;

import com.sos.user.beans.UserAccountForm;
import com.sos.user.dao.UserDao;

/**
 * 
 */

@Component(value = "userDao")
public class UserDaoImpl implements UserDao {

	DataSource dataSource;

	public DataSource getDataSource() {
		return this.dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public UserAccountForm isValidUser(UserAccountForm userAccountForm) {
		String query = "Select tbl_user_registration_id from sos.tbl_user_registration where email_id = ? and password = ?";
		PreparedStatement pstmt = null;
		Connection con = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(query);

			pstmt.setString(1, userAccountForm.getEmail());
			pstmt.setString(2, userAccountForm.getPassword());
			resultSet = pstmt.executeQuery();

			if (resultSet.next()) {
				userAccountForm.setUserRegistrationId(resultSet.getInt("tbl_user_registration_id"));
				userAccountForm = getUserDetailsByRegistraionId(userAccountForm);
				userAccountForm.setIsLoggedIn(true);
			}

			else
				userAccountForm.setIsLoggedIn(false);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return userAccountForm;
	}

	private UserAccountForm getUserDetailsByRegistraionId(UserAccountForm userAccountForm) {

		PreparedStatement pstmt = null;
		Connection con = null;
		ResultSet resultSet = null;
		String query = "Select TBL_USER_PROFILE_ID, FIRST_NAME, LAST_NAME, CONTACT_NO, USER_IMAGE, DATE_OF_BIRTH, GENDER from SOS.TBL_USER_PROFILE where tbl_user_registration_id = ?";
		try {

			con = dataSource.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, userAccountForm.getUserRegistrationId());
			resultSet = pstmt.executeQuery();
			if (resultSet.next()) {
				userAccountForm.setUserProfileId(resultSet.getInt("TBL_USER_PROFILE_ID"));
				userAccountForm.setFirstName(resultSet.getString("FIRST_NAME"));
				userAccountForm.setLastName(resultSet.getString("LAST_NAME"));
				userAccountForm.setContact(resultSet.getInt("CONTACT_NO"));
				userAccountForm.setUserImage(resultSet.getString("USER_IMAGE"));
				userAccountForm.setDateOfBirth(resultSet.getDate("DATE_OF_BIRTH"));
				userAccountForm.setGender(resultSet.getString("GENDER"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return userAccountForm;

	}

	@Override
	public Boolean registerUser(UserAccountForm userAccountForm) {

		int userInserted = 0;
		int success = insertIntoRegistration(userAccountForm);
		if (success > 0) {
			userAccountForm = isValidUser(userAccountForm);
			//change this to LAST_INSERT_ID() 
			userInserted = insertUserProfile(userAccountForm);
			userAccountForm.setIsLoggedIn(false);
		}

		return userInserted > 0 ? true : false;
	}

	private int insertIntoRegistration(UserAccountForm userAccountForm) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rowInserted = 0;
		String query = "INSERT INTO SOS.TBL_USER_REGISTRATION(EMAIL_ID,PASSWORD) VALUES(?,?)";

		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userAccountForm.getEmail());
			pstmt.setString(2, userAccountForm.getPassword());
			rowInserted = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowInserted;
	}

	private int insertUserProfile(UserAccountForm userAccountForm) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rowInserted = 0;
		String query = "INSERT INTO SOS.TBL_USER_PROFILE(FIRST_NAME,LAST_NAME,CONTACT_NO,USER_IMAGE,DATE_OF_BIRTH,GENDER,TBL_USER_REGISTRATION_ID) VALUES(?,?,?,?,?,?,?)";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userAccountForm.getFirstName());
			pstmt.setString(2, userAccountForm.getLastName());
			pstmt.setInt(3, userAccountForm.getContact());
			pstmt.setString(4, userAccountForm.getUserImage());
			pstmt.setDate(5, (Date) userAccountForm.getDateOfBirth());
			pstmt.setString(6, userAccountForm.getGender());
			pstmt.setInt(7, userAccountForm.getUserRegistrationId());
			rowInserted = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowInserted;
	}

	@Override
	public Boolean updateUser(UserAccountForm userAccountForm) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rowInserted = 0;
		String query = "UPDATE SOS.TBL_USER_PROFILE SET FIRST_NAME=? , LAST_NAME=? , CONTACT_NO = ? , DATE_OF_BIRTH = ? , GENDER = ? WHERE TBL_USER_PROFILE_ID= ? ";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userAccountForm.getFirstName());
			pstmt.setString(2, userAccountForm.getLastName());
			pstmt.setInt(3, userAccountForm.getContact());
			pstmt.setDate(4, convertFromJAVADateToSQLDate(userAccountForm.getDateOfBirth()));
			pstmt.setString(5, userAccountForm.getGender());
			pstmt.setInt(6, userAccountForm.getUserProfileId());
			rowInserted = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowInserted>0?true:false;

	}

	public static java.sql.Date convertFromJAVADateToSQLDate(
			java.util.Date javaDate) {
		java.sql.Date sqlDate = null;
		if (javaDate != null) {
			sqlDate = new Date(javaDate.getTime());
		}
		return sqlDate;
	}
}