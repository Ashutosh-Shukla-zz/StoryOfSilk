package com.sos.design.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sos.common.beans.ApparelBean;
import com.sos.design.dao.DesignDao;
import com.sos.design.service.DesignService;

@Component(value = "designService")
public class DesignServiceImpl implements DesignService{
	
	@Autowired
	private DesignDao designDao;

	@Override
	public ApparelBean getProductDetailsById(int id) {
		return designDao.getProductDetailsById(id);
	}

}
