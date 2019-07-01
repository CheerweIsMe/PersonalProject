package com.cw.pojo;

import java.util.*;

//购物车的类
public class Cart {
	// 集合存放商品项,key(不能重复):商品ID。value(商品项)
	private HashMap<Integer, CartItem> map = new HashMap<Integer, CartItem>();
	private int count; // 总数量
	private double totalPrice; // 总价格

	public HashMap<Integer, CartItem> getMap() {
		return map;
	}

	public void setMap(HashMap<Integer, CartItem> map) {
		this.map = map;
	}

	// 获取购物车中的总熟练
	public int getCount() {
		// 遍历集合 把所有的商品数量相加
		int sum = 0;
		for (CartItem item : map.values()) {
			sum += item.getNum();
		}
		this.count = sum;
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public double getTotalPrice() {
		double sumPrice = 0;

		for (CartItem item : map.values()) {
			sumPrice += item.getPrice();
		}
		this.totalPrice = sumPrice;
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "Cart [map=" + map + ", count=" + count + ", totalPrice="
				+ totalPrice + "]";
	}
	//
	
	
	// 自定义方法,把商品添加到购物车的方法

	public void addCartItem(int num, GoodsInfo gds) {
		// 先获取集合中的购物项
		CartItem item = map.get(gds.getId());
		// 判断商品项是否为空，如果为空，创建对象
		if (item == null) {
			item = new CartItem();
			item.setNum(num);
			item.setGds(gds);
		} else {
			// 不为空，取出原来的商品数量，再加上新的数量
			int oldNum = item.getNum();
			item.setNum(oldNum + num);
		}

		// 把商品项存放在集合
		map.put(gds.getId(), item);
	}

}
