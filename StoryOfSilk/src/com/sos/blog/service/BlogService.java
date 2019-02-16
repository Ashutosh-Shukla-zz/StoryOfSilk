package com.sos.blog.service;

import java.util.ArrayList;

import com.sos.blog.beans.BlogBean;
import com.sos.blog.beans.CommentBean;

public interface BlogService {

	ArrayList<BlogBean> getAllBlogs();

	BlogBean getBlogDetailById(BlogBean blogBean);

	Boolean addNewComment(CommentBean newComment);

}
