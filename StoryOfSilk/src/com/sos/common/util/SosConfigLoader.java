package com.sos.common.util;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

public class SosConfigLoader implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {

		System.out.println("Called");
		WebApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(arg0.getServletContext());
		SpringBeanFactory.setFactory(ctx);
		//SomeBean someBean = (SomeBean) ctx.getBean("someBean");
		
		DataCache.getInstance().getDataCache();
	}

	
	
	
	
}
