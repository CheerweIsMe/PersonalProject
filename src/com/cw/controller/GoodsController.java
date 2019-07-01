package com.cw.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.xwork.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cw.pojo.Cart;
import com.cw.pojo.CartItem;
import com.cw.pojo.GoodsInfo;
import com.cw.pojo.Order;
import com.cw.pojo.OrderItem;
import com.cw.pojo.OrderList;
import com.cw.pojo.UpdateGoodsImageFile;
import com.cw.pojo.UserInfo;
import com.cw.pojo.WishList;
import com.cw.service.Goods;

@Controller
public class GoodsController {
	@Autowired
	public Goods gs;

	@RequestMapping(value = "allGoods")
	public String allGoods(HttpSession session) {
		List<GoodsInfo> goddsInfo = gs.allGoods();
		session.setAttribute("list", goddsInfo);
		System.out.print("111");
		return "shop-04";
	}

	@RequestMapping(value = "oneGoods")
	public String oneGoods(GoodsInfo gi, @RequestParam Integer id,
			HttpServletRequest request) {
		System.out.println(id);

		gi = gs.oneGoods(id);
		request.setAttribute("gds", gi);
		return "shop-detail";
	}

	@RequestMapping(value = "oneGoodsByName")
	public String oneGoodsByName(GoodsInfo gi, @RequestParam String name,
			HttpServletRequest request) {
		if (gi == null) {
			gi = new GoodsInfo();
		}
		gi = gs.oneGoodsByName(name);
		request.setAttribute("gds", gi);
		return "shop-detail";
	}

	@RequestMapping(value = "addCart")
	public String addCart(HttpSession session, HttpServletRequest request,
			@RequestParam Integer id, @RequestParam Integer num,
			HttpServletResponse response) throws IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		// 1.ʵ����session����
		session = request.getSession();

		// 2.��ȡsession �еĹ��ﳵ
		Cart cart = (Cart) session.getAttribute("cart");

		// �ж϶����Ƿ�Ϊ��
		if (cart == null) {
			cart = new Cart();
		}

		System.out.println(id);
		GoodsInfo gi = gs.oneGoods(id);
		// ��Ʒ��ӵ����ﳵ�ķ���
		cart.addCartItem(num, gi);
		// ������session��
		session.setAttribute("cart", cart);
		response.getWriter().println("<script>history.back();</script>");
		return null;

	}

	@RequestMapping(value = "deleteCart")
	public String deleteCart(HttpSession session, HttpServletRequest request,
			@RequestParam Integer pid, HttpServletResponse response)
			throws IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		// 2.��session�����ȡ���ﳵ����
		session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");

		// 3.����ID�Ƴ�ָ����Ʒ
		cart.getMap().remove(pid);

		// 4.���±�������
		session.setAttribute("cart", cart);

		// 5.��ת�����ﳵ��ʾ
		response.sendRedirect("shop-cart.jsp");
		return null;

	}

	@RequestMapping(value = "updateCart")
	public String updateCart(HttpSession session, HttpServletRequest request,
			@RequestParam Integer pid, @RequestParam Integer num,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		// 1.��ȡURL��ֵ������
		pid = Integer.parseInt(request.getParameter("pid"));
		num = Integer.parseInt(request.getParameter("num"));

		// 2.��session�����ȡ���ﳵ����
		session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");

		// 3.����ID��ȡ������޸�����
		CartItem item = cart.getMap().get(pid);
		item.setNum(num);

		// 4.���±�������
		session.setAttribute("cart", cart);

		// 5.��ת�����ﳵ��ʾ
		response.sendRedirect("shop-cart.jsp");
		return null;

	}

	@RequestMapping(value = "addWishList")
	public String addWishList(HttpSession session, HttpServletRequest request,
			@RequestParam Integer id, @RequestParam Integer num,
			HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		// 1.ʵ����session����
		session = request.getSession();

		// 2.��ȡsession �еĹ��ﳵ
		WishList wl = (WishList) session.getAttribute("wishlist");

		// �ж϶����Ƿ�Ϊ��
		if (wl == null) {
			wl = new WishList();
		}

		System.out.println(id);
		GoodsInfo gi = gs.oneGoods(id);

		// ��Ʒ��ӵ����ﳵ�ķ���
		wl.addWishItem(num, gi);
		// ������session��
		session.setAttribute("wishlist", wl);
		response.getWriter().println("<script>history.back();</script>");
	
		return null;
	}

	@RequestMapping(value = "deleteWishList")
	public String deleteWishList(HttpSession session,
			HttpServletRequest request, @RequestParam Integer pid,
			HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		// 2.��session�����ȡ�ղض���
		session = request.getSession();
		WishList wishlist = (WishList) session.getAttribute("wishlist");

		// 3.����ID�Ƴ�ָ����Ʒ
		wishlist.getMap().remove(pid);

		// 4.���±�������
		session.setAttribute("wishlist", wishlist);

		// 5.��ת�����ﳵ��ʾ
		response.sendRedirect("wish-list.jsp");

		return null;
	}

	@RequestMapping(value = "delGoods")
	public String delGoods(HttpServletRequest request,
			HttpServletResponse response, @RequestParam Integer id)
			throws IllegalStateException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		System.out.println("��ɾ������" + id);
		gs.delGoods(id);

		return "redirect:/allGoods.do";

	}

	@RequestMapping(value = "addGoods")
	public String addGoods(HttpServletRequest request,
			UpdateGoodsImageFile file, String name, double price, Integer num,
			String info, String img, HttpServletResponse response)
			throws IllegalStateException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		int findGood = gs.findGoods(name);
		if (findGood == 0) {
			// �ϴ�ͼƬ
			String imgName = RandomStringUtils.randomAlphanumeric(10);
			img = imgName + ".jpg";
			File newFile = new File(request.getServletContext().getRealPath(
					"/picture"), img);
			newFile.getParentFile().mkdirs();
			file.getImage().transferTo(newFile);

			// ��ȡ������
			name = request.getParameter("name");
			num = Integer.parseInt(request.getParameter("num"));
			info = request.getParameter("info");
			price = Double.parseDouble(request.getParameter("price"));
			/*
			 * System.out.println(name); System.out.println(img);
			 */
			gs.addGoods(name, price, num, info, img);
			return "redirect:/allGoods.do";

		} else {

		}

		return null;

	}

	@RequestMapping(value = "receivingInfo")
	public String receivingInfo(HttpSession session,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		// 1.ʵ����session����
		session = request.getSession();

		UserInfo ui = (UserInfo) session.getAttribute("u");

		if (ui == null) {
			try {
				response.getWriter().println(
						"<script>alert('Ҫ�ȵ�¼Ŷ');history.back();</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			// 7.����ջ�����Ϣ
			OrderList order = new OrderList(); // 1.��ȡURL��ֵ������
			
			order.setName(request.getParameter("name"));
			order.setTel(request.getParameter("tel"));
			order.setAddress(request.getParameter("address"));
			System.out.println("�ջ�������"+order.getName());
			request.setAttribute("List", order);
			
			response.sendRedirect("shop-cart.jsp");
		}
		return null;

	}

	@RequestMapping(value = "addorderList")
	public String addorderList(HttpSession session, HttpServletRequest request,
			@RequestParam Integer id, @RequestParam String rname, @RequestParam String rtel, @RequestParam String raddress, 
			HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		// 1.ʵ����session����
		/*session = request.getSession();
		UserInfo ui = (UserInfo) session.getAttribute("u");*/

		if (id == null) {
			try {
				System.out.println("Ҫ�ȵ�¼����");
				response.getWriter().println(
						"<script>alert('Ҫ�ȵ�¼Ŷ');history.back();</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
		Order order = new Order();
		//����orderitem����
				ArrayList<Order> listorder =new ArrayList<Order>();
		// 2.��ȡsession ��
		Cart cart = (Cart) session.getAttribute("cart");
		order.setUid(id);
		// 2.��õ�ǰʱ��,����ת��Ϊ��������ʽ
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");// �������ڸ�ʽ
		String currenttime = df.format(new Date());// new Date()Ϊ��ȡ��ǰϵͳʱ��
		// 3.����oid
		String oid = id+""+ currenttime;
		order.setOid(oid);
		// 5.��ý����ﳵ�е��ܼ�
		float total = (float) cart.getTotalPrice();
		order.setTotal(total);
		
		int state = 1;
		order.setState(state);
		//��ȡ�ջ�����Ϣ
		System.out.println("raddress"+raddress);
		order.setAddress(raddress);
		order.setRname(rname);
		order.setTel(rtel);
		
		//��ȡϵͳʱ��
		Date ordertime = new Date();
		order.setOrdertime(ordertime);
		listorder.add(order);
		gs.addOrder(listorder);
		
		//����orderitem����
		ArrayList<OrderItem> list =new ArrayList<OrderItem>();
		//��ȡmap����
		Map<Integer, CartItem> cartItems=new HashMap<Integer, CartItem>();
		cartItems=cart.getMap();
		
		//3.����map���
		   Set<Integer>set=cartItems.keySet();//���map�����е�key���󼯺�
		   Iterator<Integer>it=set.iterator();//����һ��������
		   while(it.hasNext()){//����map
			    Integer key=it.next();//���key 
		   CartItem items=cartItems.get(key); //��ü����еĵ�һ����Ʒ
		   OrderItem orderitem=new OrderItem();
		   //1.���ɶ���������Ϊpid+oid
		   String keys=String.valueOf(key);
		   String  itemsid=oid+keys;
		   System.out.println("itemsid:"+itemsid);
		   
		   //1.1 ��ȡ��Ʒ����
		   String name=items.getGds().getName();
		   System.out.println("��Ʒ���ƣ�"+name);
		   //2.�����Ʒ����
		   int count=items.getNum();
		   System.out.println("count:"+count);
		   //3.���С��
		   float subtotal=(float)items.getPrice();
		   System.out.println("subtotal:"+subtotal);
		   //4.��������Ʒ��Ϣ����orderitemʵ������
		   orderitem.setItemid(itemsid);
		   orderitem.setCount(count);
		   orderitem.setName(name);
		   orderitem.setSubtotal(subtotal);
		   System.out.println("key:"+key);
		   orderitem.setId(key);
		   orderitem.setOid(oid);
		   //5.��orderitemsʵ������뼯����
		   list.add(orderitem);  
		   }
		   gs.addOrderItem(list);
		   		
		 //��ѯ���ж���
			List<Order> allOrder = new ArrayList<Order>();
			
			System.out.println("selectALLOrder:"+id);
			Integer uid=id;
			allOrder=gs.selectAllOrder(uid);
			request.setAttribute("allOrder", allOrder);
		
		
			
			
					return "orderList";
					}
		return null;
		

	}
	
	@RequestMapping(value = "selectOneOrder",method = RequestMethod.GET)
	public String selectOneOrder(HttpSession session,@RequestParam String oid,@RequestParam Integer id,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		
		//��ѯ������
		List<OrderItem>oneOrder=new ArrayList<OrderItem>();
		 oid=request.getParameter("oid");
		oneOrder=gs.selectOneOrder(oid);
		
		session.setAttribute("oneOrder", oneOrder);
		
				return "orderDetails";
		
	}
	
	
	@RequestMapping(value = "selectAllOrder")
	public String selectAllOrder(HttpSession session,	@RequestParam Integer id,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		
		//��ѯ���ж���
		List<Order> allOrder = new ArrayList<Order>();
		
		System.out.println("selectALLOrder:"+id);
		allOrder=gs.selectAllOrder(id);
		request.setAttribute("allOrder", allOrder);
		
		
				return "orderList";
	}
	
	
	
}
