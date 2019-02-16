package com.sos.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sos.user.beans.UserAccountForm;
import com.sos.user.delegate.UserDelegate;

@Controller
public class LoginController {
	@Autowired
	private UserDelegate userDelegate;

	private UserAccountForm userAccountForm = new UserAccountForm();

	/*
	 * @RequestMapping(value = "/login") public ModelAndView
	 * displayLogin(HttpServletRequest request, HttpServletResponse response,
	 * LoginBean loginBean) { ModelAndView model = new ModelAndView("login"); //
	 * LoginBean loginBean = new LoginBean(); model.addObject("loginBean",
	 * loginBean); return model; }
	 */

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView executeLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView model = null;
		try {
			userAccountForm.setEmail(request.getParameter("email"));
			userAccountForm.setPassword(request.getParameter("password"));

			userAccountForm = userDelegate.isValidUser(userAccountForm);
			if (userAccountForm.getIsLoggedIn()) {
				System.out.println("User Login Successful");
				request.getSession().setAttribute("userAccountForm", userAccountForm);
				model = new ModelAndView(".sos.home");
			} else {
				model = new ModelAndView(".sos.home");
				request.setAttribute("messageErrorLogin", "Invalid credentials!!");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return model;
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public ModelAndView performLogoutAction(HttpServletRequest request) {
		// TODO: Any specific logging actions if needed.
		// System.out.println("inside applogout");
		request.getSession().invalidate();
		return new ModelAndView("redirect:/welcome");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerUser(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView model = null;

		userAccountForm.setEmail(request.getParameter("email"));
		userAccountForm.setPassword(request.getParameter("password"));
		userAccountForm.setFirstName(request.getParameter("firstName"));
		userAccountForm.setLastName(request.getParameter("lastName"));
		userAccountForm.setGender(request.getParameter("gender"));

		Boolean success = userDelegate.registerUser(userAccountForm);
		if (success) {
			System.out.println("User Registration Successful");
			model = new ModelAndView(".sos.home");
			request.setAttribute("messageErrorLogin", "Registration Complete. Please Login to Continue");
		} else {
			System.out.println("User Registration Failed");
			model = new ModelAndView(".sos.home");
			request.setAttribute("messageErrorLogin", "Registration Failed. Please register again");
		}
		return model;
	}
}
