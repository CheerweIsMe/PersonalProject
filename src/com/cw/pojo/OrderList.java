package com.cw.pojo;

import java.util.HashMap;

public class OrderList {
	/*// ���ϴ����Ʒ��,key(�����ظ�):��ƷID��value(��Ʒ��)
	private HashMap<Integer, OrderItem> map = new HashMap<Integer, OrderItem>();
	private int count; // ������
	private double totalPrice; // �ܼ۸�

	public HashMap<Integer, OrderItem> getMap() {
		return map;
	}

	public void setMap(HashMap<Integer, OrderItem> map) {
		this.map = map;
	}

	public int getCount() {
		// �������� �����е���Ʒ�����ּ�
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

	// �Զ��巽��
/*
	public void addOrderItem(int num, GoodsInfo gds) {
		// �Ȼ�ȡ�����еĹ�����
		OrderItem item = map.get(gds.getId());
		// �ж���Ʒ���Ƿ�Ϊ�գ����Ϊ�գ���������
		if (item == null) {
			item = new OrderItem();
			item.setNum(num);
			item.setGds(gds);
		} else {
			// ��Ϊ�գ�ȡ��ԭ������Ʒ�������ټ����µ�����
			int oldNum = item.getNum();
			item.setNum(oldNum + num);
		}

		// ����Ʒ�����ڼ���
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
