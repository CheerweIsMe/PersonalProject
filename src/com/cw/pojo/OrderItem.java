package com.cw.pojo;

import java.util.Date;

public class OrderItem {
	private String itemid;//订单项id
	//商品名称
	private int count;//订单数量
	private float subtotal;//小计
	private Integer id;//商品id
	private String oid;//订单id
	private String name; 
	
	// ----------------------------------
	
	private String tel;
	private String address;
	private String rname;
	
	
	
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
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	
	
	//-------------------------
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getItemid() {
		return itemid;
	}
	public void setItemid(String itemid) {
		this.itemid = itemid;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public float getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(float subtotal) {
		this.subtotal = subtotal;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	
	

	/*private String itemid;
	private int count ;   
	private int num; //购买数量
	private double price;//小计价格
	private GoodsInfo gds;
	private Order order;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public GoodsInfo getGds() {
		return gds;
	}
	public void setGds(GoodsInfo gds) {
		this.gds = gds;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	*/
	
	/*private Cart cart;
	private int num; //购买数量
	private double price;//小计价格
	
	
	
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public int getNum() {
		return cart.getCount();
	}
	public void setNum(int num) {
		this.num = num;
	}
	public double getPrice() {
		return  cart.getTotalPrice();
	}
	public void setPrice(double price) {
		this.price = cart.getTotalPrice();
	}
	@Override
	public String toString() {
		return "OrderItem [cart=" + cart + ", num=" + num + ", price=" + price
				+ "]";
	}
	*/
}
