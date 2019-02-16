package com.sos.common.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.sos.common.beans.ApparelBean;

public interface BaseService {

	ArrayList<ApparelBean> getlistofApparelsByGender(ArrayList<ApparelBean> listOfAllApparel, String gender);

	ArrayList<ApparelBean> getListOFAllApparels();

	Map<String, ArrayList<HashMap<String, String>>> getDataCache();

}
