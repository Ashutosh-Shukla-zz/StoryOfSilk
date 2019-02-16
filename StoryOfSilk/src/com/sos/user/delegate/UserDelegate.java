package com.sos.user.delegate;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sos.user.beans.UserAccountForm;
import com.sos.user.service.UserService;

@Component(value = "userDelegate")
public class UserDelegate {
	@Autowired
	private UserService userService;

	public UserAccountForm isValidUser(UserAccountForm userAccountForm) throws SQLException {
		return userService.isValidUser(userAccountForm);
	}

	public Boolean registerUser(UserAccountForm userAccountForm) {
		// TODO Auto-generated method stub
		return userService.registerUser(userAccountForm);
	}
	
	public Boolean updateUser(UserAccountForm userAccountForm) {
		// TODO Auto-generated method stub
		return userService.updateUser(userAccountForm);
	}
}
