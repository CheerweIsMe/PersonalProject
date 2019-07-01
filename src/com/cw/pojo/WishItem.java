package com.cw.pojo;

public class WishItem {
	private GoodsInfo gds;
	private int num; //购买数量
	//private double price;//小计价格
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
}
