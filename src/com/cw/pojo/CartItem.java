package com.cw.pojo;

public class CartItem {
	
	private GoodsInfo gds;
	private int num; //��������
	private double price;//С�Ƽ۸�
	
	
	
	public GoodsInfo getGds() {
		return gds;
	}
	public void setGds(GoodsInfo gds) {
		this.gds = gds;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public double getPrice() {
		return num * gds.getPrice();
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "CartItem [gds=" + gds + ", num=" + num + ", price=" + price
				+ "]";
	}
	
	
}
