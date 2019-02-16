package com.sos.user.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sos.user.beans.UserAccountForm;
import com.sos.user.delegate.UserDelegate;

@Controller
public class UserAccountController {
	@Autowired
	private UserDelegate userDelegate;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	    sdf.setLenient(true);
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}

	@RequestMapping(value = "/account")
	public ModelAndView openAccountPage(HttpSession httpSession, UserAccountForm userAccountForm) {

		userAccountForm = (UserAccountForm) httpSession.getAttribute("userAccountForm");
		ModelAndView model = new ModelAndView(".sos.user.account");
		 List<String> mySelectValues = new ArrayList<String>();
		    mySelectValues.add("M");
		    mySelectValues.add("F");
		    mySelectValues.add("O");
		    model.addObject("mySelectValues", mySelectValues);
		model.addObject("userAccountForm",userAccountForm);
		return model;

	}

	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public ModelAndView updateUserDetails(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("userAccountForm") UserAccountForm userAccountForm ) {

		String messageOnScreen = null;
		Boolean success = userDelegate.updateUser(userAccountForm);
		if (success) {
			request.getSession().setAttribute("userAccountForm", userAccountForm);
			messageOnScreen = "User information updated successfully.";

		} else {
			messageOnScreen = "Update Failed try again.!";
		}
		ModelAndView model = new ModelAndView(".sos.user.account");
		 List<String> mySelectValues = new ArrayList<String>();
		    mySelectValues.add("M");
		    mySelectValues.add("F");
		    mySelectValues.add("O");
		    model.addObject("mySelectValues", mySelectValues);
		model.addObject("messageOnScreen", messageOnScreen);
		model.addObject("userAccountForm", userAccountForm);
		return model;

	}
}
