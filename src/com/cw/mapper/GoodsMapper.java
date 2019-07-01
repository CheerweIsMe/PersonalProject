package com.cw.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cw.pojo.CartItem;
import com.cw.pojo.GoodsInfo;
import com.cw.pojo.Order;
import com.cw.pojo.OrderItem;
public interface GoodsMapper {
	// …Ã∆∑≤È—Ø
	public List<GoodsInfo> allGoods();

	public GoodsInfo oneGoods(@Param("id") Integer id);
	public GoodsInfo oneGoodsByName(@Param("name") String name);
	
	public int findGoods(@Param("name") String name);

	public void addGoods(@Param("name") String name,
			@Param("price") double price, @Param("num") Integer num,
			@Param("info") String info, @Param("img") String img);
	
	public void delGoods(@Param("id") Integer id);
	
	public void addReceive(ArrayList<Order> listorderR);
	public void addOrder(ArrayList<Order> listorder);
	public void addOrderItem(ArrayList<OrderItem> list);
	
	
	public List<Order> selectAllOrder(@Param("uid") Integer uid);
	
	public  List<OrderItem> selectOneOrder(@Param("oid") String oid);
	public void delOrder(@Param("oid") String oid);
}
