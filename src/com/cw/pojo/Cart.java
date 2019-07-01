package com.cw.pojo;

import java.util.*;

//���ﳵ����
public class Cart {
	// ���ϴ����Ʒ��,key(�����ظ�):��ƷID��value(��Ʒ��)
	private HashMap<Integer, CartItem> map = new HashMap<Integer, CartItem>();
	private int count; // ������
	private double totalPrice; // �ܼ۸�

	public HashMap<Integer, CartItem> getMap() {
		return map;
	}

	public void setMap(HashMap<Integer, CartItem> map) {
		this.map = map;
	}

	// ��ȡ���ﳵ�е�������
	public int getCount() {
		// �������� �����е���Ʒ�������
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
	
	
	// �Զ��巽��,����Ʒ��ӵ����ﳵ�ķ���

	public void addCartItem(int num, GoodsInfo gds) {
		// �Ȼ�ȡ�����еĹ�����
		CartItem item = map.get(gds.getId());
		// �ж���Ʒ���Ƿ�Ϊ�գ����Ϊ�գ���������
		if (item == null) {
			item = new CartItem();
			item.setNum(num);
			item.setGds(gds);
		} else {
			// ��Ϊ�գ�ȡ��ԭ������Ʒ�������ټ����µ�����
			int oldNum = item.getNum();
			item.setNum(oldNum + num);
		}

		// ����Ʒ�����ڼ���
		map.put(gds.getId(), item);
	}

}
