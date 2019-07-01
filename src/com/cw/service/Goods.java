package com.cw.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cw.pojo.CartItem;
import com.cw.pojo.GoodsInfo;
import com.cw.pojo.Order;
import com.cw.pojo.OrderItem;

public interface Goods    {
	List<GoodsInfo> allGoods();
	GoodsInfo oneGoods(Integer id);
	GoodsInfo oneGoodsByName(String name);
	
	
	int findGoods(String name);
	void addGoods(String name,double price,Integer num,String info,String img);
	void delGoods(Integer id);
	
	
	void addReceive(ArrayList<Order> listorderR);
	void addOrder(ArrayList<Order> listorder);
	void addOrderItem(ArrayList<OrderItem> list);
	List<Order> selectAllOrder(@Param("uid") Integer uid);
	List<OrderItem> selectOneOrder(@Param("oid") String oid);
	void delOrder(String oid);
}
