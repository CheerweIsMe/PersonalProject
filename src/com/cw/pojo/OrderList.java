package com.cw.pojo;

import java.util.HashMap;

public class OrderList {
	/*// 集合存放商品项,key(不能重复):商品ID。value(商品项)
	private HashMap<Integer, OrderItem> map = new HashMap<Integer, OrderItem>();
	private int count; // 总数量
	private double totalPrice; // 总价格

	public HashMap<Integer, OrderItem> getMap() {
		return map;
	}

	public void setMap(HashMap<Integer, OrderItem> map) {
		this.map = map;
	}

	public int getCount() {
		// 遍历集合 把所有的商品熟练现价
				int sum = 0;
				for (OrderItem item : map.values()) {
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

		for (OrderItem item : map.values()) {
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
	}*/

	// 自定义方法
/*
	public void addOrderItem(int num, GoodsInfo gds) {
		// 先获取集合中的购物项
		OrderItem item = map.get(gds.getId());
		// 判断商品项是否为空，如果为空，创建对象
		if (item == null) {
			item = new OrderItem();
			item.setNum(num);
			item.setGds(gds);
		} else {
			// 不为空，取出原来的商品数量，再加上新的数量
			int oldNum = item.getNum();
			item.setNum(oldNum + num);
		}

		// 把商品项存放在集合
		map.put(gds.getId(), item);
	}*/
	
	
	private String name;
	private String tel;
	private String address;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
