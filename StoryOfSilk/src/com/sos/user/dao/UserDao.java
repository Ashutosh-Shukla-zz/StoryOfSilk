package com.sos.user.dao;

import java.sql.SQLException;

import com.sos.user.beans.UserAccountForm;

/**
 * This interface will be used to communicate with the
 * Database
 */
public interface UserDao
{
		public UserAccountForm isValidUser(UserAccountForm userAccountForm) throws SQLException;

		public Boolean registerUser(UserAccountForm userAccountForm);

		public Boolean updateUser(UserAccountForm userAccountForm);
}
