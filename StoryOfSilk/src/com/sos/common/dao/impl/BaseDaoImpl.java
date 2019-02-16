package com.sos.common.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sos.common.beans.ApparelBean;
import com.sos.common.dao.BaseDao;
import com.sos.common.util.SpringBeanFactory;

@Component(value="baseDao")
public class BaseDaoImpl implements BaseDao{
	
	@Autowired
	DataSource dataSource;
	
	DataSource dataSource1;
	

	/*public DataSource getDataSource() {
		return this.dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
*/
	

	@Override
	public ArrayList<ApparelBean> getListOFAllApparels() {
		
		ArrayList<ApparelBean> listofAllApparels = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		Connection con = null;
		ResultSet resultSet = null;
		String query = "SELECT TBL_APPAREL_TYPE_ID, NAME, DESCRIPTION, GENDER, ENABLED, BASE_IMAGE FROM TBL_APPAREL_TYPE WHERE ENABLED=?";
		
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setBoolean(1, true);
			resultSet = pstmt.executeQuery();

			while (resultSet.next()) {
				ApparelBean apparelBean = new ApparelBean();
				
				apparelBean.setApparelId(resultSet.getInt("TBL_APPAREL_TYPE_ID"));
				apparelBean.setApparelName(resultSet.getString("NAME"));
				apparelBean.setApparelDesc(resultSet.getString("DESCRIPTION"));
				apparelBean.setGender(resultSet.getString("GENDER"));
				apparelBean.setBaseImage(resultSet.getString("BASE_IMAGE"));
				apparelBean.setIsenabled(resultSet.getBoolean("ENABLED"));
				
				listofAllApparels.add(apparelBean);
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listofAllApparels;
	}


	@Override
	public ArrayList<HashMap<String, String>> getDataCache(String query) {
		
		  
		dataSource1 = (DataSource) SpringBeanFactory.getSpringBean("dataSource");
		
		PreparedStatement pstmt = null;
		Connection con = null;
		ResultSet resultSet = null;
		ArrayList<HashMap<String, String>> tableData = new ArrayList<>();
		
		try {
			
			con = dataSource1.getConnection();
			pstmt = con.prepareStatement(query);
			resultSet = pstmt.executeQuery();
			
			ResultSetMetaData md = resultSet.getMetaData();
			int columns = md.getColumnCount();
			
			
			while (resultSet.next()) {
				HashMap<String,String> row = new HashMap<String,String>(columns);
				for(int i=1; i<=columns; ++i){           
				      row.put(md.getColumnName(i), resultSet.getObject(i).toString());
				     }
				tableData.add(row);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return tableData;
	}


	
}
