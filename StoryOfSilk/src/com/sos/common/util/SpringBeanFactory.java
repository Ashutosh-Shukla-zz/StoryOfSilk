package com.sos.common.util;

import org.springframework.beans.factory.BeanFactory;

public class SpringBeanFactory {
	
	private static BeanFactory factory;
	
	public static Object getSpringBean(String beanName){
		return factory.getBean(beanName);
	}
	

	public static BeanFactory getFactory() {
		return factory;
	}

	public static void setFactory(BeanFactory factory0) {
		factory = factory0;
	}
	
	

}
