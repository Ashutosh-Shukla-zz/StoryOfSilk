package com.sos.design.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sos.design.service.DesignService;

@Controller
public class DesignController {

	@Autowired
	private DesignService designService;

	@RequestMapping(value = "design")
	public ModelAndView openDesignPage(HttpServletRequest request, HttpServletResponse response) {

		String id= request.getParameter("id");
		designService.getProductDetailsById(Integer.parseInt(id));
		ModelAndView model = new ModelAndView();

		model.setViewName(".sos.design");
		return model;

	}

	@RequestMapping(value = "designDetail")
	public ModelAndView openDesignPage1(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView();
		

		model.setViewName(".sos.design");
		return model;

	}
}
