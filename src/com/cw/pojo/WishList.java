package com.cw.pojo;

import java.util.HashMap;

public class WishList {
	//集合存放商品项,key(不能重复):商品ID。value(商品项)
	private HashMap<Integer, WishItem> map = new HashMap<Integer, WishItem>();
	private int count; //总数量 
	public HashMap<Integer, WishItem> getMap() {
		return map;
	}
	public void setMap(HashMap<Integer, WishItem> map) {
		this.map = map;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
	//自定义方法,把商品添加到购物车的方法
	
		 public void addWishItem(int num,GoodsInfo gds) {
			 //先获取集合中的购物项
			 WishItem item = map.get(gds.getId());
				//判断商品项是否为空，如果为空，创建对象	 
			 if(item==null){
				 item = new WishItem();
				 item.setNum(num);
				 item.setGds(gds);
			 }else{
				 //不为空，取出原来的商品数量，再加上新的数量
				 int oldNum = item.getNum();
				 item.setNum(oldNum+num);
			 }
			 
			 //把商品项存放在集合
			 map.put(gds.getId(), item);
		}
}
