package com.sos.blog.beans;

import java.util.ArrayList;
import java.util.Date;

public class CommentBean {

	private int commentId;

	private int parentId;

	private int blogPostId;

	private String commentText;

	private String firstName;

	private String lastName;

	private int userProfileId;

	private Boolean isEnabled;

	private Date dateOfComment;

	private Boolean isReplyComment;

	private ArrayList<CommentBean> listOfReplies = new ArrayList<>();

	public int getCommentId() {
		return commentId;
	}

	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}

	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public int getBlogPostId() {
		return blogPostId;
	}

	public void setBlogPostId(int blogPostId) {
		this.blogPostId = blogPostId;
	}

	public String getCommentText() {
		return commentText;
	}

	public void setCommentText(String commentText) {
		this.commentText = commentText;
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

	public int getUserProfileId() {
		return userProfileId;
	}

	public void setUserProfileId(int userProfileId) {
		this.userProfileId = userProfileId;
	}

	public Boolean getIsEnabled() {
		return isEnabled;
	}

	public void setIsEnabled(Boolean isEnabled) {
		this.isEnabled = isEnabled;
	}

	public Date getDateOfComment() {
		return dateOfComment;
	}

	public void setDateOfComment(Date dateOfComment) {
		this.dateOfComment = dateOfComment;
	}

	public Boolean getIsReplyComment() {
		return isReplyComment;
	}

	public void setIsReplyComment(Boolean isReplyComment) {
		this.isReplyComment = isReplyComment;
	}

	public ArrayList<CommentBean> getListOfReplies() {
		return listOfReplies;
	}

	public void setListOfReplies(ArrayList<CommentBean> listOfReplies) {
		this.listOfReplies = listOfReplies;
	}

}
