package com.cw.pojo;

import java.util.Date;

public class OrderItem {
	private String itemid;//������id
	//��Ʒ����
	private int count;//��������
	private float subtotal;//С��
	private Integer id;//��Ʒid
	private String oid;//����id
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
	private int num; //��������
	private double price;//С�Ƽ۸�
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
	private int num; //��������
	private double price;//С�Ƽ۸�
	
	
	
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
