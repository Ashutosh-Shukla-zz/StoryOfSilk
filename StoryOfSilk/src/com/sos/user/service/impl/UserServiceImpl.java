package com.sos.user.service.impl;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sos.user.beans.UserAccountForm;
import com.sos.user.dao.UserDao;
import com.sos.user.service.UserService;

@Component(value="userService")
public class UserServiceImpl implements UserService
{
		@Autowired
		private UserDao userDao;

		
		@Override
		public UserAccountForm isValidUser(UserAccountForm userAccountForm) throws SQLException
		{
				return userDao.isValidUser(userAccountForm);
		}


		@Override
		public Boolean registerUser(UserAccountForm userAccountForm) {
			return userDao.registerUser(userAccountForm);
		}


		@Override
		public Boolean updateUser(UserAccountForm userAccountForm) {
			// TODO Auto-generated method stub
			 return userDao.updateUser(userAccountForm);
		}

}
