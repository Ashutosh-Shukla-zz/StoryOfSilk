package com.sos.blog.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sos.blog.beans.BlogBean;
import com.sos.blog.service.BlogService;
import com.sos.user.beans.UserAccountForm;

@Controller
public class BlogContoller {

	@Autowired
	private BlogService blogService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		sdf.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}

	@RequestMapping(value = "/blog")
	public ModelAndView openBlogPage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView model = new ModelAndView(".sos.blog");
		ArrayList<BlogBean> listOfBlogs = new ArrayList<BlogBean>();
		listOfBlogs = blogService.getAllBlogs();
		request.getSession().setAttribute("listOfBlogs", listOfBlogs);
		model.addObject("listOfBlogs", listOfBlogs);
		return model;

	}

	@RequestMapping(value = "/blog-detail")
	public ModelAndView openBlogDetail(@RequestParam("id") int id, HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute("blogBean") BlogBean blogBean) {

		blogBean = new BlogBean();
		blogBean = getBlogBeanById(request, response, id);
		if (blogBean != null)
			blogBean = blogService.getBlogDetailById(blogBean);
		else {
		} // todo{}
		request.getSession().setAttribute("blogBean", blogBean);
		blogBean.setNewComment(null);
		ModelAndView model = new ModelAndView(".sos.blog.detail");
		model.addObject("blogBean", blogBean);
		return model;
	}

	@RequestMapping(value = "/addComment")
	public ModelAndView addComment(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("blogBean") BlogBean blogBean, ModelMap model) {

		BlogBean blogBeanSession = new BlogBean();
		UserAccountForm userAccountForm = (UserAccountForm) request.getSession().getAttribute("userAccountForm");
		blogBean.getNewComment().setUserProfileId(userAccountForm.getUserProfileId());
		blogBeanSession = (BlogBean) request.getSession().getAttribute("blogBean");
		blogBeanSession.setNewComment(blogBean.getNewComment());
		blogBeanSession.getNewComment().setBlogPostId(blogBeanSession.getPostId());
		// later to be changed to FALSE for a staging area
		blogBeanSession.getNewComment().setIsEnabled(Boolean.TRUE);
		// blogBeanSession.getNewComment().setIsReplyComment(Boolean.FALSE);
		String commentUpdated = null;
		Boolean status = blogService.addNewComment(blogBeanSession.getNewComment());
		if (status) {
			commentUpdated = "COMMENT UPDATED SUCCESSFULY.";
		} else {
			commentUpdated = "COMMENT ADDING FAILED, PLEASE RETRY.";
		}

		model.addAttribute("commentUpdated", commentUpdated);

		return new ModelAndView("redirect:/blog-detail?id=" + blogBeanSession.getPostId(), model);

	}

	// method to get filled blog bean from the session
	private BlogBean getBlogBeanById(HttpServletRequest request, HttpServletResponse response, int id) {

		@SuppressWarnings("unchecked")
		ArrayList<BlogBean> listOfBlogs = (ArrayList<BlogBean>) request.getSession().getAttribute("listOfBlogs");
		for (BlogBean blogBean : listOfBlogs) {
			if (blogBean.getPostId() == id) {
				return blogBean; // gotcha!
			}
		}
		return null;
	}
}
