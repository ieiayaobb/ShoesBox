package com.shoesbox.utils;

import com.shoesbox.service.AdminService;
import com.shoesbox.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

//import AdminService;
//import CommonService;
import com.shoesbox.service.CommonService;


public class ServiceFactory{
	
	public static ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
	
	//get service instance
	public static UserService userService = (UserService)ctx.getBean("userService");
	public static AdminService adminService = (AdminService)ctx.getBean("adminService");
	public static CommonService commonService = (CommonService)ctx.getBean("commonService");
}