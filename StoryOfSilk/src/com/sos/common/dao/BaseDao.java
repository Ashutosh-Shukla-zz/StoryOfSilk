package com.sos.common.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.sos.common.beans.ApparelBean;

public interface BaseDao {

	ArrayList<ApparelBean> getListOFAllApparels();

	 ArrayList<HashMap<String, String>> getDataCache(String query);


}
