package com.shoesbox.dao.impl;

import java.util.List;

import com.shoesbox.dao.ShoppingCartDao;
import com.shoesbox.entity.ShoppingCart;
import org.springframework.stereotype.Repository;

import com.shoesbox.base.BaseDaoImpl;

@Repository
public class ShoppingCartDaoImpl extends BaseDaoImpl implements ShoppingCartDao {

//	@SuppressWarnings("unchecked")
//	public List<ShoppingCart> findAllShoppings() {
//		String hql = "from ShoppingCart cart";
//		List<ShoppingCart> cartList = super.getHibernateTemplate().find(hql);
//		return cartList;
//	}
//
//	public List<ShoppingCart> findAllShoppingByUser(int userId) {
//		String hql = "from ShoppingCart cart where cart.userId=?";
//		Object[] obj = new Object[]{userId};
//		@SuppressWarnings("unchecked")
//		List<ShoppingCart> cartList = super.getHibernateTemplate().find(hql, obj);
//		return cartList;
//	}

}
