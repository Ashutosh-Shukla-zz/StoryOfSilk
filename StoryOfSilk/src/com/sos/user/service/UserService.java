/**
 *
 */
package com.sos.user.service;

import java.sql.SQLException;

import com.sos.user.beans.UserAccountForm;

/**
 * @author 
 *
 */
public interface UserService
{
		public UserAccountForm isValidUser(UserAccountForm userAccountForm) throws SQLException;

		public Boolean registerUser(UserAccountForm userAccountForm);

		public Boolean updateUser(UserAccountForm userAccountForm);
}
