package com.cw.pojo;

import java.util.HashMap;

public class WishList {
	//���ϴ����Ʒ��,key(�����ظ�):��ƷID��value(��Ʒ��)
	private HashMap<Integer, WishItem> map = new HashMap<Integer, WishItem>();
	private int count; //������ 
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
	
	
	//�Զ��巽��,����Ʒ��ӵ����ﳵ�ķ���
	
		 public void addWishItem(int num,GoodsInfo gds) {
			 //�Ȼ�ȡ�����еĹ�����
			 WishItem item = map.get(gds.getId());
				//�ж���Ʒ���Ƿ�Ϊ�գ����Ϊ�գ���������	 
			 if(item==null){
				 item = new WishItem();
				 item.setNum(num);
				 item.setGds(gds);
			 }else{
				 //��Ϊ�գ�ȡ��ԭ������Ʒ�������ټ����µ�����
				 int oldNum = item.getNum();
				 item.setNum(oldNum+num);
			 }
			 
			 //����Ʒ�����ڼ���
			 map.put(gds.getId(), item);
		}
}
