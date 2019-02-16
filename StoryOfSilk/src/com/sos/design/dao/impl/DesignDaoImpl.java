package com.sos.design.dao.impl;

import org.springframework.stereotype.Component;

import com.sos.common.beans.ApparelBean;
import com.sos.design.dao.DesignDao;

@Component(value="designDao")
public class DesignDaoImpl implements DesignDao {

	@Override
	public ApparelBean getProductDetailsById(int id) {
		
		return null;
	}

}
