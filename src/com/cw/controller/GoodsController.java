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
		// 1.实例化session对象
		session = request.getSession();

		// 2.获取session 中的购物车
		Cart cart = (Cart) session.getAttribute("cart");

		// 判断对象是否为空
		if (cart == null) {
			cart = new Cart();
		}

		System.out.println(id);
		GoodsInfo gi = gs.oneGoods(id);
		// 商品添加到购物车的方法
		cart.addCartItem(num, gi);
		// 保存在session中
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

		// 2.从session对象获取购物车对象
		session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");

		// 3.根据ID移出指定商品
		cart.getMap().remove(pid);

		// 4.重新保存数据
		session.setAttribute("cart", cart);

		// 5.跳转到购物车显示
		response.sendRedirect("shop-cart.jsp");
		return null;

	}

	@RequestMapping(value = "updateCart")
	public String updateCart(HttpSession session, HttpServletRequest request,
			@RequestParam Integer pid, @RequestParam Integer num,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		// 1.获取URL传值的数据
		pid = Integer.parseInt(request.getParameter("pid"));
		num = Integer.parseInt(request.getParameter("num"));

		// 2.从session对象获取购物车对象
		session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");

		// 3.根据ID获取购物项并修改数量
		CartItem item = cart.getMap().get(pid);
		item.setNum(num);

		// 4.重新保存数据
		session.setAttribute("cart", cart);

		// 5.跳转到购物车显示
		response.sendRedirect("shop-cart.jsp");
		return null;

	}

	@RequestMapping(value = "addWishList")
	public String addWishList(HttpSession session, HttpServletRequest request,
			@RequestParam Integer id, @RequestParam Integer num,
			HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		// 1.实例化session对象
		session = request.getSession();

		// 2.获取session 中的购物车
		WishList wl = (WishList) session.getAttribute("wishlist");

		// 判断对象是否为空
		if (wl == null) {
			wl = new WishList();
		}

		System.out.println(id);
		GoodsInfo gi = gs.oneGoods(id);

		// 商品添加到购物车的方法
		wl.addWishItem(num, gi);
		// 保存在session中
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

		// 2.从session对象获取收藏对象
		session = request.getSession();
		WishList wishlist = (WishList) session.getAttribute("wishlist");

		// 3.根据ID移出指定商品
		wishlist.getMap().remove(pid);

		// 4.重新保存数据
		session.setAttribute("wishlist", wishlist);

		// 5.跳转到购物车显示
		response.sendRedirect("wish-list.jsp");

		return null;
	}

	@RequestMapping(value = "delGoods")
	public String delGoods(HttpServletRequest request,
			HttpServletResponse response, @RequestParam Integer id)
			throws IllegalStateException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		System.out.println("被删除的是" + id);
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
			// 上传图片
			String imgName = RandomStringUtils.randomAlphanumeric(10);
			img = imgName + ".jpg";
			File newFile = new File(request.getServletContext().getRealPath(
					"/picture"), img);
			newFile.getParentFile().mkdirs();
			file.getImage().transferTo(newFile);

			// 获取表单数据
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
		// 1.实例化session对象
		session = request.getSession();

		UserInfo ui = (UserInfo) session.getAttribute("u");

		if (ui == null) {
			try {
				response.getWriter().println(
						"<script>alert('要先登录哦');history.back();</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			// 7.获得收货人信息
			OrderList order = new OrderList(); // 1.获取URL传值的数据
			
			order.setName(request.getParameter("name"));
			order.setTel(request.getParameter("tel"));
			order.setAddress(request.getParameter("address"));
			System.out.println("收货人姓名"+order.getName());
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
		
		// 1.实例化session对象
		/*session = request.getSession();
		UserInfo ui = (UserInfo) session.getAttribute("u");*/

		if (id == null) {
			try {
				System.out.println("要先登录！！");
				response.getWriter().println(
						"<script>alert('要先登录哦');history.back();</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
		Order order = new Order();
		//创建orderitem集合
				ArrayList<Order> listorder =new ArrayList<Order>();
		// 2.获取session 中
		Cart cart = (Cart) session.getAttribute("cart");
		order.setUid(id);
		// 2.获得当前时间,并且转换为纯数字形式
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");// 设置日期格式
		String currenttime = df.format(new Date());// new Date()为获取当前系统时间
		// 3.生成oid
		String oid = id+""+ currenttime;
		order.setOid(oid);
		// 5.获得将购物车中的总计
		float total = (float) cart.getTotalPrice();
		order.setTotal(total);
		
		int state = 1;
		order.setState(state);
		//获取收货人信息
		System.out.println("raddress"+raddress);
		order.setAddress(raddress);
		order.setRname(rname);
		order.setTel(rtel);
		
		//获取系统时间
		Date ordertime = new Date();
		order.setOrdertime(ordertime);
		listorder.add(order);
		gs.addOrder(listorder);
		
		//创建orderitem集合
		ArrayList<OrderItem> list =new ArrayList<OrderItem>();
		//获取map集合
		Map<Integer, CartItem> cartItems=new HashMap<Integer, CartItem>();
		cartItems=cart.getMap();
		
		//3.遍历map结合
		   Set<Integer>set=cartItems.keySet();//获得map集合中的key对象集合
		   Iterator<Integer>it=set.iterator();//生成一个迭代器
		   while(it.hasNext()){//遍历map
			    Integer key=it.next();//获得key 
		   CartItem items=cartItems.get(key); //获得集合中的第一个商品
		   OrderItem orderitem=new OrderItem();
		   //1.生成订单详情编号为pid+oid
		   String keys=String.valueOf(key);
		   String  itemsid=oid+keys;
		   System.out.println("itemsid:"+itemsid);
		   
		   //1.1 获取商品名称
		   String name=items.getGds().getName();
		   System.out.println("商品名称："+name);
		   //2.获得商品数量
		   int count=items.getNum();
		   System.out.println("count:"+count);
		   //3.获得小计
		   float subtotal=(float)items.getPrice();
		   System.out.println("subtotal:"+subtotal);
		   //4.将这类商品信息存入orderitem实体类中
		   orderitem.setItemid(itemsid);
		   orderitem.setCount(count);
		   orderitem.setName(name);
		   orderitem.setSubtotal(subtotal);
		   System.out.println("key:"+key);
		   orderitem.setId(key);
		   orderitem.setOid(oid);
		   //5.将orderitems实体类存入集合中
		   list.add(orderitem);  
		   }
		   gs.addOrderItem(list);
		   		
		 //查询所有订单
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
		
		//查询单个顶
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
		
		//查询所有订单
		List<Order> allOrder = new ArrayList<Order>();
		
		System.out.println("selectALLOrder:"+id);
		allOrder=gs.selectAllOrder(id);
		request.setAttribute("allOrder", allOrder);
		
		
				return "orderList";
	}
	
	
	
}
