package com.sos.blog.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sos.blog.beans.BlogBean;
import com.sos.blog.beans.CommentBean;
import com.sos.blog.dao.BlogDao;
import com.sos.blog.service.BlogService;

@Component("blogService")
public class BlogServiceImpl implements BlogService {

	@Autowired
	private BlogDao blogDao;

	@Override
	public ArrayList<BlogBean> getAllBlogs() {
		// TODO Auto-generated method stub
		return blogDao.getAllBlogs();
	}

	public BlogBean getBlogDetailById(BlogBean blogBean) {
		blogBean.setListOfCategories(blogDao.getCategoriesByBlogId(blogBean.getPostId()));
		blogBean.setListOfTags(blogDao.getTagsByBlogId(blogBean.getPostId()));
		blogBean.setListOfComments(blogDao.getCommentsByBlogId(blogBean.getPostId()));
		return blogBean;
	}

	@Override
	public Boolean addNewComment(CommentBean newComment) {
		// TODO Auto-generated method stub
		return blogDao.addNewComment(newComment);
	}

}
