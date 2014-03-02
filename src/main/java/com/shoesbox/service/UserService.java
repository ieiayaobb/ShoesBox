package com.shoesbox.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoesbox.dao.UserDao;
import com.shoesbox.dao.UserDetailDao;
import com.shoesbox.entity.User;
import com.shoesbox.entity.UserDetail;


@Service("userService")
public class UserService {
	
	@Autowired
	UserDao userDao;
	@Autowired
	UserDetailDao userDetailDao;
	
//	//通过用户名查询用户详情
//	public User getUser(String username){
//		return userDao.getUser(username);
//	}
//
//	//查询用户是否存在
//	public boolean findUser(String username){
//		List<User> userList = userDao.findUser(username);
//		if(userList.size()==0){
//			return true;
//		}
//		return false;
//	}
	
	//添加用户
	public void addUser(User user,UserDetail userDetail){
		userDetailDao.add(userDetail);
		user.setUserDetail(userDetail);
		userDao.add(user);
	}
	

}