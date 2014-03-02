package com.shoesbox.action;

import java.util.List;

import com.shoesbox.base.BaseAction;
import com.shoesbox.entity.Goods;
import com.shoesbox.service.AdminService;
import com.shoesbox.utils.ServiceFactory;
import com.shoesbox.entity.User;

public class AdminAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	AdminService adminService = ServiceFactory.adminService;
	private Goods goods;
//	private Desc desc;
	private List<Goods> goodsList;
	private int goodsId;
	private User user;
	private String errorMessage;
	
	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

//	public Desc getDesc() {
//		return desc;
//	}
//
//	public void setDesc(Desc desc) {
//		this.desc = desc;
//	}
		
	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public String showAdminLogin(){
		return SUCCESS;
	}
	
	public String adminLogin(){
        System.out.print("hi");
        System.out.print(user.getUserName());
        System.out.print(user.getPassWord());
		if(user.getUserName().equals("user")&&user.getPassWord().equals("123")){
			return SUCCESS;
		}
		else{
			errorMessage = "用户名或密码有误，请重新登录";
			return ERROR;
		}
	}
	
	public List<Goods> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}

//	public String managerInfo(){
//		goodsList=adminService.findAllGoods();
//		return SUCCESS;
//	}
//
//	public String showUpdateGoods(){
//		goods=adminService.getGoodsById(goodsId);
//		desc=goods.getDesc();
//		return SUCCESS;
//	}
//
//	public String updateGoods(){
//		adminService.updateGoods(goods,desc);
//		return SUCCESS;
//	}
	
	public String deleteGoods(){
		return SUCCESS;
	}
	
	public String showAddGoods(){
		return SUCCESS;
	}
	
//	public String addGoods(){
//		adminService.addGoods(goods,desc);
//		this.addActionMessage("添加成功");
//		return SUCCESS;
//	}
}
