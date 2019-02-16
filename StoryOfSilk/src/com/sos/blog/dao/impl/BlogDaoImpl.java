package com.sos.blog.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.stereotype.Component;

import com.sos.blog.beans.BlogBean;
import com.sos.blog.beans.CommentBean;
import com.sos.blog.dao.BlogDao;

@Component(value = "blogDao")
public class BlogDaoImpl implements BlogDao {

	DataSource dataSource;

	public DataSource getDataSource() {
		return this.dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public ArrayList<BlogBean> getAllBlogs() {
		ArrayList<BlogBean> listOfAllBlogs = new ArrayList<BlogBean>();
		PreparedStatement pstmt = null;
		Connection con = null;
		ResultSet resultSet = null;
		String query = "SELECT BLOG.TITLE, BLOG.BANNER_IMAGE, BLOG.DATE_PUBLISHED, (SELECT COUNT(TBL_BLOG_COMMENT_ID) FROM TBL_BLOG_COMMENT C WHERE C.TBL_BLOG_POST_ID = BLOG.TBL_BLOG_POST_ID AND PARENT_ID = 0),"
				+ "ARTICLE, (SELECT FIRST_NAME FROM TBL_USER_PROFILE P WHERE P.TBL_USER_PROFILE_ID = BLOG.TBL_USER_PROFILE_ID), "
				+ "(SELECT LAST_NAME FROM TBL_USER_PROFILE P WHERE P.TBL_USER_PROFILE_ID = BLOG.TBL_USER_PROFILE_ID), "
				+ "BLOG.TBL_BLOG_POST_ID, BLOG.FILE, BLOG.FEATURED, BLOG.ENABLED, BLOG.COMMENTS_ENABLED, BLOG.VIEWS FROM SOS.TBL_BLOG_POST BLOG";

		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(query);
			resultSet = pstmt.executeQuery();

			while (resultSet.next()) {
				BlogBean blogBean = new BlogBean();
				blogBean.setBlogTitle(resultSet.getString(1));
				blogBean.setImagePath(Arrays.asList(resultSet.getString(2).split(",")));
				blogBean.setDatePosted(resultSet.getDate(3));
				blogBean.setNoOfComments(resultSet.getInt(4));
				blogBean.setArticle(resultSet.getString(5));
				blogBean.setFirstName(resultSet.getString(6));
				blogBean.setLastName(resultSet.getString(7));
				blogBean.setPostId(resultSet.getInt(8));
				blogBean.setFile(resultSet.getString(9));
				blogBean.setIsFeatured(resultSet.getBoolean(10));
				blogBean.setIsEnabled(resultSet.getBoolean(11));
				blogBean.setIsCommentsEnabled(resultSet.getBoolean(12));
				blogBean.setViews(resultSet.getInt(13));
				listOfAllBlogs.add(blogBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listOfAllBlogs;
	}

	@Override
	public ArrayList<String> getCategoriesByBlogId(int id) {
		ArrayList<String> listOfCategories = new ArrayList<String>();
		PreparedStatement pstmt = null;
		Connection con = null;
		ResultSet resultSet = null;
		String query = "SELECT NAME FROM TBL_BLOG_CATEGORY WHERE TBL_BLOG_CATEGORY_ID IN "
				+ "(SELECT TBL_BLOG_CATEGORY_ID FROM TBL_BLOG_POST_TO_CATEGORY WHERE TBL_BLOG_POST_ID = ?)";

		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, id);
			resultSet = pstmt.executeQuery();

			while (resultSet.next()) {
				listOfCategories.add(resultSet.getString("NAME"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listOfCategories;
	}

	@Override
	public ArrayList<String> getTagsByBlogId(int id) {
		ArrayList<String> listOfTags = new ArrayList<String>();
		PreparedStatement pstmt = null;
		Connection con = null;
		ResultSet resultSet = null;
		String query = "SELECT TAG FROM SOS.TBL_BLOG_TAG WHERE TBL_BLOG_POST_ID = ?";

		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, id);
			resultSet = pstmt.executeQuery();

			while (resultSet.next()) {
				listOfTags.add(resultSet.getString("TAG"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listOfTags;
	}

	@Override
	public Map<Integer, CommentBean> getCommentsByBlogId(int id) {
		Map<Integer, CommentBean> listOfComments = new HashMap<Integer, CommentBean>();
		PreparedStatement pstmt = null;
		Connection con = null;
		ResultSet resultSet = null;
		String query = "SELECT TBL_BLOG_COMMENT_ID, PARENT_ID, COMMENT_TEXT, "
				+ "(SELECT FIRST_NAME FROM TBL_USER_PROFILE P WHERE P.TBL_USER_PROFILE_ID = C.TBL_USER_PROFILE_ID) AS FIRST_NAME, "
				+ "(SELECT LAST_NAME FROM TBL_USER_PROFILE P WHERE P.TBL_USER_PROFILE_ID = C.TBL_USER_PROFILE_ID) AS LAST_NAME, "
				+ "ENABLED, DATE_COMMENTED, IS_REPLY FROM SOS.TBL_BLOG_COMMENT C WHERE C.TBL_BLOG_POST_ID = ? ORDER BY TBL_BLOG_COMMENT_ID ASC";

		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, id);
			resultSet = pstmt.executeQuery();

			while (resultSet.next()) {

				
				CommentBean commentBean = new CommentBean();
				commentBean.setCommentId(resultSet.getInt("TBL_BLOG_COMMENT_ID"));
				commentBean.setCommentText(resultSet.getString("COMMENT_TEXT"));
				commentBean.setParentId(resultSet.getInt("PARENT_ID"));
				commentBean.setFirstName(resultSet.getString("FIRST_NAME"));
				commentBean.setLastName(resultSet.getString("LAST_NAME"));
				commentBean.setIsEnabled(resultSet.getBoolean("ENABLED"));
				commentBean.setDateOfComment(resultSet.getDate("DATE_COMMENTED"));
				commentBean.setIsReplyComment(resultSet.getBoolean("IS_REPLY"));
				
				if(commentBean.getParentId()==0)
					listOfComments.put(commentBean.getCommentId(), commentBean);
				else{
					CommentBean parentComment= listOfComments.get(commentBean.getParentId());
					parentComment.getListOfReplies().add(commentBean);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		
		return listOfComments;
	}

	public ArrayList<CommentBean> getRepliesFromCommentId(int commentId) {
		ArrayList<CommentBean> listOfReplies = new ArrayList<CommentBean>();
		PreparedStatement pstmt = null;
		Connection con = null;
		ResultSet resultSet = null;
		String query = "SELECT TBL_BLOG_COMMENT_ID, PARENT_ID, COMMENT_TEXT, "
				+ "(SELECT FIRST_NAME FROM TBL_USER_PROFILE P WHERE P.TBL_USER_PROFILE_ID = C.TBL_USER_PROFILE_ID) AS FIRST_NAME, "
				+ "(SELECT LAST_NAME FROM TBL_USER_PROFILE P WHERE P.TBL_USER_PROFILE_ID = C.TBL_USER_PROFILE_ID) AS LAST_NAME, "
				+ "ENABLED, DATE_COMMENTED, IS_REPLY FROM SOS.TBL_BLOG_COMMENT C WHERE PARENT_ID = ? AND IS_REPLY = 1 ORDER BY TBL_BLOG_COMMENT_ID";

		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, commentId);
			resultSet = pstmt.executeQuery();

			while (resultSet.next()) {

				CommentBean commentBean = new CommentBean();
				commentBean.setCommentId(resultSet.getInt("TBL_BLOG_COMMENT_ID"));
				commentBean.setCommentText(resultSet.getString("COMMENT_TEXT"));
				commentBean.setParentId(resultSet.getInt("PARENT_ID"));
				commentBean.setFirstName(resultSet.getString("FIRST_NAME"));
				commentBean.setLastName(resultSet.getString("LAST_NAME"));
				commentBean.setIsEnabled(resultSet.getBoolean("ENABLED"));
				commentBean.setDateOfComment(resultSet.getDate("DATE_COMMENTED"));
				commentBean.setIsReplyComment(resultSet.getBoolean("IS_REPLY"));
				listOfReplies.add(commentBean);
			}
		}

		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listOfReplies;
	}

	@Override
	public Boolean addNewComment(CommentBean newComment) {
		PreparedStatement pstmt = null;
		Connection con = null;
		int result = 0;
		String query=null;
		if(newComment.getParentId()<1){
			query = "INSERT INTO TBL_BLOG_COMMENT(TBL_BLOG_POST_ID,COMMENT_TEXT,TBL_USER_PROFILE_ID,ENABLED,DATE_COMMENTED,IS_REPLY,PARENT_ID)"
				+ " VALUES (?,?,?,?,NOW(),?,?)";
		}
		else{ 
			query = "INSERT INTO TBL_BLOG_COMMENT(TBL_BLOG_POST_ID,COMMENT_TEXT,TBL_USER_PROFILE_ID,ENABLED,DATE_COMMENTED,IS_REPLY,PARENT_ID)"
					+ " VALUES (?,?,?,?,NOW(),?,?)";
		}
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, newComment.getBlogPostId());
			pstmt.setString(2, newComment.getCommentText());
			pstmt.setInt(3, newComment.getUserProfileId());
			pstmt.setBoolean(4, newComment.getIsEnabled());
			pstmt.setBoolean(5, newComment.getIsReplyComment());
			
			if(newComment.getParentId()<1)
				pstmt.setInt(6, 0);
			else
				pstmt.setInt(6, newComment.getParentId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result > 0 ? Boolean.TRUE : Boolean.FALSE;
	}

}
