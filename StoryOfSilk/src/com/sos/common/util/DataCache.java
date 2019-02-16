package com.sos.common.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.sos.common.service.BaseService;
import com.sos.common.service.impl.BaseServiceImpl;

public class DataCache {

	static DataCache dataCache = null;

	private Map<String, ArrayList<HashMap<String, String>>> dataCacheMap = new HashMap<>();

	@Autowired
	private BaseService baseService = new BaseServiceImpl();

	public static DataCache getInstance() {
		if (dataCache == null) {
			dataCache = new DataCache();
		}
		return dataCache;

	}

	public void getDataCache() {

		dataCacheMap = (Map<String, ArrayList<HashMap<String, String>>>) baseService.getDataCache();

	}
	
	public ArrayList<HashMap<String, String>> fetchDataByName(String dataCacheName) {
		
		
		return null;
		
	}
	

}
