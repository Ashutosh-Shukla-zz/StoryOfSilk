package com.sos.blog.beans;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class BlogBean {

	private int postId;

	private String file;

	private Boolean isFeatured;

	private Boolean isEnabled;

	private Boolean isCommentsEnabled;

	private int views = 0;

	private String blogTitle;

	private List<String> imagePath;

	private Date datePosted;

	private int noOfComments = 0;

	private String article;

	private String firstName;

	private String lastName;

	private ArrayList<String> listOfCategories;

	private ArrayList<String> listOfTags;

	private ArrayList<String> listOfRelatedBlog;

	private Map<Integer, CommentBean> listOfComments;

	private CommentBean newComment;

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public Boolean getIsFeatured() {
		return isFeatured;
	}

	public void setIsFeatured(Boolean isFeatured) {
		this.isFeatured = isFeatured;
	}

	public Boolean getIsEnabled() {
		return isEnabled;
	}

	public void setIsEnabled(Boolean isEnabled) {
		this.isEnabled = isEnabled;
	}

	public Boolean getIsCommentsEnabled() {
		return isCommentsEnabled;
	}

	public void setIsCommentsEnabled(Boolean isCommentsEnabled) {
		this.isCommentsEnabled = isCommentsEnabled;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public String getBlogTitle() {
		return blogTitle;
	}

	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}

	public List<String> getImagePath() {
		return imagePath;
	}

	public void setImagePath(List<String> imagePath) {
		this.imagePath = imagePath;
	}

	public Date getDatePosted() {
		return datePosted;
	}

	public void setDatePosted(Date datePosted) {
		this.datePosted = datePosted;
	}

	public int getNoOfComments() {
		return noOfComments;
	}

	public void setNoOfComments(int noOfComments) {
		this.noOfComments = noOfComments;
	}

	public String getArticle() {
		return article;
	}

	public void setArticle(String article) {
		this.article = article;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public ArrayList<String> getListOfCategories() {
		return listOfCategories;
	}

	public void setListOfCategories(ArrayList<String> listOfCategories) {
		this.listOfCategories = listOfCategories;
	}

	public ArrayList<String> getListOfTags() {
		return listOfTags;
	}

	public void setListOfTags(ArrayList<String> listOfTags) {
		this.listOfTags = listOfTags;
	}

	public ArrayList<String> getListOfRelatedBlog() {
		return listOfRelatedBlog;
	}

	public void setListOfRelatedBlog(ArrayList<String> listOfRelatedBlog) {
		this.listOfRelatedBlog = listOfRelatedBlog;
	}

	public Map<Integer, CommentBean> getListOfComments() {
		return listOfComments;
	}

	public void setListOfComments(Map<Integer, CommentBean> listOfComments) {
		this.listOfComments = listOfComments;
	}

	public CommentBean getNewComment() {
		return newComment;
	}

	public void setNewComment(CommentBean newComment) {
		this.newComment = newComment;
	}

}
