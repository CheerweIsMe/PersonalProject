package com.cw.pojo;

//import java.util.ArrayList;
import java.util.Date;
/*import java.util.HashMap;
import java.util.Iterator;
import java.util.List;*/

public class Order {
		private String oid; 
		private Date ordertime;
		private double total;
		private int state;
		private String tel;
		private String address;
		private String rname;
		private int uid;
		
		public int getUid() {
			return uid;
		}

		public void setUid(int uid) {
			this.uid = uid;
		}

		public String getOid() {
			return oid;
		}

		public void setOid(String oid) {
			this.oid = oid;
		}

		public Date getOrdertime() {
			return ordertime;
		}

		public void setOrdertime(Date ordertime) {
			this.ordertime = ordertime;
		}

		public double getTotal() {
			return total;
		}

		public void setTotal(double total) {
			this.total = total;
		}

		public int getState() {
			return state;
		}

		public void setState(int state) {
			this.state = state;
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

		public String getRname() {
			return rname;
		}

		public void setRname(String rname) {
			this.rname = rname;
		}

		

	

	

	// 集合存放商品项,key(不能重复):订单ID。value(商品项)
	/*	private HashMap<Integer, OrderItem> map = new HashMap<Integer, OrderItem>();
		private int count; // 总数量
		private double totalPrice; // 总价格

		public HashMap<Integer, OrderItem> getMap() {
			return map;
		}

		public void setMap(HashMap<Integer, OrderItem> map) {
			this.map = map;
		}

		// 获取购物车中的总数量
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
			return "Order [map=" + map + ", count=" + count + ", totalPrice="
					+ totalPrice + "]";
		}
		//通过迭代器获取key
		
		
		
		// 自定义方法,将购物车添加到订单详情的方法

		public void addCartItem(int num, Cart cart) {
			// 先获取集合中的购物项
			OrderItem item = map.get(cart.getMap());
			// 判断商品项是否为空，如果为空，创建对象
			if (item == null) {
				item = new OrderItem();
				item.setNum(num);
				item.setCart(cart);
			} else {
				// 不为空，取出原来的商品数量，再加上新的数量
				int oldNum = item.getNum();
				item.setNum(oldNum + num);
			}

			// 把购物车项存放在集合
			 Integer key = null;
			Iterator<Integer> iter = cart.getMap().keySet().iterator();
			while(iter.hasNext()){
				    key=iter.next();
				    System.out.println("购物车传递数据到订单详情："+key);
				   }
			map.put(key,item);
		}*/
}
