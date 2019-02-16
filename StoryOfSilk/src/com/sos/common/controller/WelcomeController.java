package com.sos.common.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sos.common.beans.ApparelBean;
import com.sos.common.service.BaseService;
import com.sos.user.beans.UserAccountForm;

@Controller
public class WelcomeController {

	@Autowired
	private BaseService baseService;
	
	@RequestMapping(value = "/welcome")
	public ModelAndView displayIndex(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView model = new ModelAndView(".sos.home");

		// setting cache here until a framework is setup
		//
		
		@SuppressWarnings("unused")
		//Map<String, ArrayList<HashMap<String, String>>> dataCacheObject= new HashMap<>();
		
		//dataCacheObject = baseService.getDataCache();
		ArrayList<ApparelBean> listOfAllApparel = baseService.getListOFAllApparels();
		ArrayList<ApparelBean> listOfMaleApparel = baseService.getlistofApparelsByGender(listOfAllApparel,"M");
		ArrayList<ApparelBean> listOfFemaleApparel = baseService.getlistofApparelsByGender(listOfAllApparel,"F");
		//if (request.getSession().getAttribute("listOfMaleApparel") == null) 
			request.getSession().setAttribute("listOfMaleApparel", listOfMaleApparel);
		//if (request.getSession().getAttribute("listOfFemaleApparel") == null || request.getSession().getAttribute("listOfFemaleApparel") == ) 
			request.getSession().setAttribute("listOfFemaleApparel", listOfFemaleApparel);

		if (request.getSession().getAttribute("userAccountForm") != null) {
			model.addObject("userAccountForm", request.getSession().getAttribute("userAccountForm"));
		} else {
			UserAccountForm userAccountForm = new UserAccountForm();
			request.getSession().setAttribute("userAccountForm", userAccountForm);
			model.addObject("userAccountForm", userAccountForm);
		}
		return model;
	}
}
