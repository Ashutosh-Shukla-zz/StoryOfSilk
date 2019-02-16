package com.sos.common.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sos.common.beans.ApparelBean;
import com.sos.common.dao.BaseDao;
import com.sos.common.dao.impl.BaseDaoImpl;
import com.sos.common.service.BaseService;

@Component(value = "baseService")
public class BaseServiceImpl implements BaseService {

	@Autowired
	private BaseDao baseDao;

	//Change this method after datacache implementation
	@Override
	public ArrayList<ApparelBean> getlistofApparelsByGender(ArrayList<ApparelBean> listOfAllApparel, String gender) {

		ArrayList<ApparelBean> listOfApparel = new ArrayList<>();
		for (ApparelBean apparelBean : listOfAllApparel) {
			if (apparelBean.getGender().equalsIgnoreCase(gender)) {
				listOfApparel.add(apparelBean);
			}
		}
		return listOfApparel;
	}

	@Override
	public ArrayList<ApparelBean> getListOFAllApparels() {
		// TODO Auto-generated method stub
		return baseDao.getListOFAllApparels();
	}

	@Override
	public Map<String, ArrayList<HashMap<String, String>>> getDataCache() {
		
		BaseDao baseDao = new BaseDaoImpl();
		Map<String, ArrayList<HashMap<String, String>>> dataCacheMap = new HashMap<>();
		
		
		List<HashMap<String, String>> dataCacheTable = new  ArrayList<HashMap<String, String>>();;
		String query = "SELECT * FROM TBL_DATA_CACHE";
		dataCacheTable = baseDao.getDataCache(query);
		
		Iterator<HashMap<String, String>> iter = dataCacheTable.iterator();
		
		while(iter.hasNext()){
			Map<String,String> iteratorValue= new HashMap<>();
			iteratorValue = iter.next();
			ArrayList<HashMap<String,String>> cahachedTable = new ArrayList<>();
			cahachedTable = baseDao.getDataCache(iteratorValue.get("data_cache_query"));
			dataCacheMap.put(iteratorValue.get("data_cache_name"), cahachedTable);
		}
		
		
	/*	for(ArrayList<HashMap<String, String>> list: dataCacheTable.){
			Map<String,String> cahachedTable = new HashMap<>();
			cahachedTable = baseDao.getDataCache(entry.getValue());
			
			dataCacheMap.put(entry.getKey(), cahachedTable);
		}*/
		return dataCacheMap;
		
	}

}
