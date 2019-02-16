package com.sos.blog.dao;

import java.util.ArrayList;
import java.util.Map;

import com.sos.blog.beans.BlogBean;
import com.sos.blog.beans.CommentBean;

public interface BlogDao {

	ArrayList<BlogBean> getAllBlogs();

	ArrayList<String> getCategoriesByBlogId(int id);

	ArrayList<String> getTagsByBlogId(int id);

	Map<Integer ,CommentBean> getCommentsByBlogId(int id);

	Boolean addNewComment(CommentBean newComment);



}
