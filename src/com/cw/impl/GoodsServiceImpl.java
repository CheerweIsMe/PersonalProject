package com.cw.impl;

import java.util.ArrayList;
import java.util.List;
















import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cw.mapper.GoodsMapper;
import com.cw.pojo.CartItem;
import com.cw.pojo.GoodsInfo;
import com.cw.pojo.Order;
import com.cw.pojo.OrderItem;
import com.cw.service.Goods;
@Service
public class GoodsServiceImpl implements Goods {
	@Autowired
	public GoodsMapper gm;
	


	public List<GoodsInfo> allGoods()  {
			return gm.allGoods();
	}



	public GoodsInfo oneGoods(Integer id) {
		GoodsInfo goods =gm.oneGoods(id);
		return goods;
	}


	@Override
	public void addGoods(String name, double price, Integer num, String info,
			String img) {
			gm.addGoods(name, price, num, info, img);
	}



	@Override
	public int findGoods(String name) {
		if(gm.findGoods(name)==0){
			return 0;
		}
		return 1;
	}



	@Override
	public void delGoods(Integer id) {
		gm.delGoods(id);
	}



	@Override
	public GoodsInfo oneGoodsByName(String name) {
		GoodsInfo goods =gm.oneGoodsByName(name);
		return goods;
	}



	@Override
	public void addOrder(ArrayList<Order> listorder) {
		gm.addOrder(listorder);
	}



	@Override
	public void addOrderItem(ArrayList<OrderItem> list) {
			gm.addOrderItem(list);
	}



	@Override
	public List<OrderItem> selectOneOrder(String oid) {
		return gm.selectOneOrder(oid);
	}



	@Override
	public List<Order> selectAllOrder(Integer uid) {
		// TODO Auto-generated method stub
		return gm.selectAllOrder(uid);
	}



	@Override
	public void addReceive(ArrayList<Order> listorderR) {
		gm.addReceive(listorderR);
		
	}



	@Override
	public void delOrder(String oid) {
		gm.delOrder(oid);
	}



	

}