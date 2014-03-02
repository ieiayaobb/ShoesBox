package com.shoesbox.service;

import java.util.List;

import com.shoesbox.dao.OrderDao;
import com.shoesbox.dao.UserDao;
import com.shoesbox.entity.Goods;
import com.shoesbox.entity.ShoppingCart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoesbox.dao.GoodsDao;
import com.shoesbox.dao.ShoppingCartDao;
import com.shoesbox.entity.Order;
import com.shoesbox.entity.User;



@Service("commonService")
public class CommonService {
	
	@Autowired
	GoodsDao goodsDao;
	@Autowired
	ShoppingCartDao cartDao;
	@Autowired
    UserDao userDao;
	@Autowired
    OrderDao orderDao;
//	public List<Goods> findGoodsByCode(int categoryCode){
//		return goodsDao.findGoodsByCode(categoryCode);
//	}
//
//	public Goods getGoodsByIf(int goodsId){
//		return goodsDao.getGoodsById(goodsId);
//	}
	
	public void addCart(ShoppingCart cart){
		cartDao.add(cart);
	}
	
//	public User getUser(String userName){
//		return userDao.getUser(userName);
//	}
//
//	public List<ShoppingCart> findAllShoppings(){
//		return cartDao.findAllShoppings();
//	}
//
//	public List<ShoppingCart> findAllShoppingById(int userId){
//		return cartDao.findAllShoppingByUser(userId);
//	}
	
	public void addOrder(Order order){
		orderDao.add(order);
	}
}
