<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>主页</title>
<meta charset="utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="css/647be82565184316a7ba9bc638b40a97.css" rel="stylesheet" />
<link href="css/1025b57c3b8b4b63a93efd3b6bed0d58.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
	function addRecInfo() {
		/**/
		window.location.href = "check-out.jsp";

	}

	function CheckGoods(uid) {
		var rname = document.getElementById("rname").value;
		var rtel = document.getElementById("rtel").value;
		var raddress = document.getElementById("raddress").value;
		window.location.href = "${pageContext.request.contextPath}/addorderList.do?id="
				+ uid
				+ "&rname="
				+ rname
				+ "&rtel="
				+ rtel
				+ "&raddress="
				+ raddress;
	}
	function queryUpdate(id, txt, oldNum) {
		//得到文本框中的新数据
		var newNum = txt.value;

		var flag = confirm("确认要修改数量吗?");
		if (flag)
			window.location.href = "${pageContext.request.contextPath}/updateCart.do?pid="
					+ id + "&num=" + newNum;
		else
			txt.value = oldNum;
	}

	function doDelete(pid) {
		var flag = confirm("是否要删除这一项吗?");
		if (flag)
			window.location.href = "${pageContext.request.contextPath}/deleteCart.do?pid="
					+ pid;
	}

	$(document)
			.ready(
					function() {
						$("#name")
								.bind(
										"click",
										function() {
											var name = $("#name").text();
											window.location.href = "${pageContext.request.contextPath}/oneGoodsByName.do?name="
													+ name;
										});
					});

	$(document).ready(function() {
		$("#order").bind("click", function() {
			var name = $("#name").text();
			+name;
		});
	});

	function oneGoods(id) {
		window.location.href = "${pageContext.request.contextPath}/oneGoods.do?id="
				+ id;
	}

	function JTrim(s) {
		return s.replace(/(^\s*)|(\s*$)/g, "");
	}

	/* function CheckNull()

	{

	　　var userName = document.getElementById('textName').value;

	　　if (JTrim(UserName) != "")

	　　{

	　　　　　　//写操作

	　　}

	} */

	function isnull(uid) {
		var rname = document.getElementById("rname").value;
		var rtel = document.getElementById("rtel").value;
		var raddress = document.getElementById("raddress").value;

		if (rname != "" && rtel != "" && raddress != "") {
			window.location.href = "${pageContext.request.contextPath}/addorderList.do?id="
					+ uid
					+ "&rname="
					+ rname
					+ "&rtel="
					+ rtel
					+ "&raddress="
					+ raddress;
			//btn.disabled = true;
		} else {
			alert("信息不完善！");
			//return false;
			//btn.disabled = false;

		}

	}

	/* 	function fun(){  
			  // 1.获取多选框对象
			  var obj = document.getElementById("ckbox");
			  // 2.获取注册按钮对象
			  var regBtn = document.getElementById("regist");

			  // 判断多选框是否被选中
			  if(obj.checked){
			    regBtn.disabled = false;
			  }else{
			    regBtn.disabled = true;
			  }
			} */
</script>

</head>
<body class="animsition">
	<div class="shop-cart" id="page">
		<nav id="menu">
			<ul>
				<li><a href="index.jsp">主页</a></li>
				<li><a class="active"
					href="${pageContext.request.contextPath}/allGoods.do">商店</a></li>
				<li><a href="faq.html">功能</a>
					<ul>

						<li><c:if test="${u == null }">
								<a href="login.jsp">登录</a>
							</c:if></li>
						<li><c:if test="${u != null }">
								<a href="${pageContext.request.contextPath}/outLogin.do">注销</a>
							</c:if></li>
					</ul></li>
			</ul>
		</nav>
		<header class="header-style-1 static">
			<div class="container">
				<div class="row">
					<div class="header-1-inner">

						<nav>
							<ul class="menu hidden-xs">
								<li><a href="index.jsp">主页</a></li>
								<li><a class="active"
									href="${pageContext.request.contextPath}/allGoods.do">商店</a></li>
								<%-- <li><a href="faq.html">功能</a>
									<ul>
										<li><c:if test="${u == null }">
												<a href="login.jsp">登录</a>
											</c:if></li>
										<li><c:if test="${u != null }">
												<a href="${pageContext.request.contextPath}/outLogin.do">注销</a>
											</c:if></li>
										<li><a href="register.jsp">注册</a></li>

										<li><c:if test="${u == null }">
												<li><c:if test="${s == null }">
														<a href="salerlogin.jsp">卖家登录</a>
													</c:if></li>
											</c:if></li>

										<li><c:if test="${u == null }">
												<li><a href="salerregister.jsp">卖家注册</a></li>
											</c:if></li>


										<li><c:if test="${u == null }">
												<li><a href="SaleruserInfo.jsp">卖家个人中心</a></li>
											</c:if></li>
										<li><c:if test="${s != null }">
												<a href="addgoods.jsp">添加商品</a>
											</c:if></li>

									</ul></li> --%>

								<li><c:if test="${u == null }">
										<a href="login.jsp">登录</a>
									</c:if></li>
								<li><c:if test="${u != null }">
										<a href="${pageContext.request.contextPath}/outLogin.do">注销</a>
									</c:if></li>
								<li><a href="register.jsp">注册</a></li>

								<li><c:if test="${u == null }">
										<li><c:if test="${s == null }">
												<a href="salerlogin.jsp">卖家登录</a>
											</c:if></li>
									</c:if></li>

								<li><c:if test="${u == null }">
										<li><a href="salerregister.jsp">卖家注册</a></li>
									</c:if></li>
								<li><c:if test="${u != null }">
										<a onclick="ViewOrder(${u.uid})" href="#">查看订单</a>
									</c:if></li>


								<li><c:if test="${s != null }">
										<a href="addgoods.jsp">添加商品</a>
									</c:if></li>
							</ul>
						</nav>
						<aside class="right">
							<div class="widget widget-control-header">
								<div id="uid">${u.name}</div>
							</div>

							<div
								class="widget widget-control-header widget-shop-cart js-widget-shop-cart">
								<a class="control" href="shop-cart.jsp">
									<p class="counter">0</p> <span class="lnr lnr-cart"></span>
								</a>
							</div>
							<div
								class="widget widget-control-header hidden-lg hidden-md hidden-sm">
								<a class="navbar-toggle js-offcanvas-has-events" type="button"
									href="#menu"> <span class="icon-bar"></span> <span
									class="icon-bar"></span> <span class="icon-bar"></span>
								</a>
							</div>
						</aside>
					</div>
				</div>
			</div>
		</header>
		<section class="sub-header shop-detail-1">
			<img class="rellax bg-overlay" src="picture/013.jpg" alt="">
			<div class="overlay-call-to-action"></div>
			<h3 class="heading-style-3">商店购物车</h3>
		</section>
		<section class="boxed-sm">
			<div class="container">
				<div class="woocommerce">
					<form class="woocommerce-cart-form">
						<table class="woocommerce-cart-table">
							<thead>
								<tr>
									<th class="product-thumbnail">产品</th>
									<th class="product-quantity">数量</th>
									<th class="product-price">价格</th>
									<th class="product-subtotal">总价</th>
									<th class="product-remove"></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${cart.map}" var="entry">
									<tr>
										<!--<td class="product-thumbnail">	<img
								src="picture/${entry.value.gds.img }" alt="product-thumbnail">  
									</td>-->
										<td class="product-name" data-title="Product"><a
											class="product-name" id="name"
											href="javascript:oneGoods(${entry.key });">${entry.value.gds.name }</a></td>

										<td class="product-quantity" data-title="Quantity"><input
											id="num" min="1" max="" name="product-name"
											value="${entry.value.num}" size="4"
											onchange="queryUpdate(${entry.key }, this, ${entry.value.num })"></td>

										<td class="product-price" data-title="Price">${entry.value.gds.price }</td>

										<td class="product-subtotal" data-title="Total">${entry.value.price }</td>


										<td class="product-remove"><a class="remove"
											href="javascript:doDelete(${entry.key })"
											aria-label="Remove this item">×</a></td>
										<td><input type="hidden" id="id"
											value="${entry.value.gds.id }"></td>

									</tr>
								</c:forEach>

							</tbody>
							<tfoot>
								<tr>
									<td colspan="7">
										<div class="form-coupon organic-form"></div>
									</td>
								</tr>
							</tfoot>
						</table>
					</form>
					<div class="cart_totals">
						<h3 class="title">总计支付</h3>
						<div class="row">
							<div class="col-md-8">
								<table class="woocommerce-cart-subtotal">
									<tbody>

										<tr>
											<td data-title="Total" id="totalPrice">￥${cart.getTotalPrice() }</td>
										</tr>
									</tbody>
								</table>
								<div class="woocommerce-info">
									<li><c:if test="${u == null }">
											<i class="fa fa-check"></i>要登录才能完成订单哦
                  <a href="login.jsp">点击登录</a>
										</c:if></li>

								</div>

								<h4>收货信息</h4>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group organic-form no-radius">
											<label>姓名*</label> <input class="form-control" type="text"
												id="rname"
												onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')"
												name="name">
										</div>
									</div>

								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group organic-form no-radius">
											<label>电话*</label> <input class="form-control" type="text"
												id="rtel" onkeyup="value=value.replace(/[^\d、0-9]/g,'')"
												name="tel">
										</div>
									</div>

								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group organic-form no-radius">
											<label>地址*</label> <input class="form-control" type="text"
												id="raddress"
												onkeyup="value=value.replace(/[^\u4E00-\u9FA5\Z0-9]/g,'')"
												onclick="checkRecive()" name="address">
										</div>
									</div>

								</div>
								<div class="proceed-to-checkout">
									<!-- <button class="btn btn-brand pill" onclick="addRecInfo()">添加收货信息*</button> -->
									<c:if test="${u != null }">
									<button class="btn btn-brand pill" onclick="isnull(${u.uid })"
										id="order">结账</button>
										</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<footer class="footer-style-1">
		<div class="container">
			<div class="row"></div>
		</div>
		<div class="copy-right style-1">
			<div class="container">
				<div class="row"></div>
			</div>
		</div>
	</footer>
	<div class="modal fade" id="quick-view-product" tabindex="-1"
		role="dialog">
		<div class="modal-dialog modal-lg modal-quickview woocommerce"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-6">
							<div class="woocommerce-product-gallery">
								<div class="main-carousel-product-quick-view">
									<div class="item">
										<img class="img-responsive" src="picture/01.jpg"
											alt="product thumbnail" />
									</div>
									<div class="item">
										<img class="img-responsive" src="picture/02.jpg"
											alt="product thumbnail" />
									</div>
									<div class="item">
										<img class="img-responsive" src="picture/03.jpg"
											alt="product thumbnail" />
									</div>
									<div class="item">
										<img class="img-responsive" src="picture/04.jpg"
											alt="product thumbnail" />
									</div>
									<div class="item">
										<img class="img-responsive" src="picture/05.jpg"
											alt="product thumbnail" />
									</div>
								</div>
								<div class="thumbnail-carousel-product-quickview">
									<div class="item">
										<img class="img-responsive" src="picture/01.jpg"
											alt="product thumbnail" />
									</div>
									<div class="item">
										<img class="img-responsive" src="picture/02.jpg"
											alt="product thumbnail" />
									</div>
									<div class="item">
										<img class="img-responsive" src="picture/03.jpg"
											alt="product thumbnail" />
									</div>
									<div class="item">
										<img class="img-responsive" src="picture/04.jpg"
											alt="product thumbnail" />
									</div>
									<div class="item">
										<img class="img-responsive" src="picture/05.jpg"
											alt="product thumbnail" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="summary">
								<div class="desc">
									<div class="header-desc">
										<h2 class="product-title">沙拉</h2>
										<p class="price">$2.00</p>
									</div>
									<div class="body-desc">
										<div class="woocommerce-product-details-short-description">
											<p>Duis vestibulum ante velit. Pellentesque orci felis,
												pharetra ut pharetra ut, interdum at mauris. Aenean
												efficitur aliquet libero sit amet scelerisque. Suspendisse
												efficitur mollis eleifend. Aliquam tortor nibh, venenatis
												quis sem dapibus, varius egestas lorem a sollicitudin.</p>
										</div>
									</div>
									<div class="footer-desc">
										<form class="cart">
											<div class="quantity buttons-added">
												<input class="minus" value="-" type="button" /> <input
													class="input-text qty text" step="1" min="1" max=""
													name="quantity" value="1" title="Qty" size="4"
													pattern="[0-9]*" inputmode="numeric" type="number" /> <input
													class="plus" value="+" type="button" />
											</div>
											<div class="group-btn-control-wrapper">
												<button class="btn btn-brand no-radius">加入购物车</button>
												<button class="btn btn-wishlist btn-brand-ghost no-radius">
													<i class="fa fa-heart"></i>
												</button>
											</div>
										</form>
									</div>
								</div>
								<div class="product-meta">
									<p class="posted-in">
										类别: <a href="#" rel="tag">食物</a>
									</p>
									<p class="tagged-as">
										标签: <a href="#" rel="tag">自然</a>, <a href="#" rel="tag">有机</a>,
										<a href="#" rel="tag">健康</a>, <a href="#" rel="tag">绿色</a>, <a
											href="#" rel="tag">蔬菜</a>
									</p>
									<p class="id">
										编号: <a href="#">A203</a>
									</p>
								</div>
								<div class="widget-social align-left">
									<ul>
										<li><a class="facebook" data-toggle="tooltip"
											title="Facebook" href="http://www.facebook.com/authemes">
												<i class="fa fa-facebook"></i>
										</a></li>
										<li><a class="pinterest" data-toggle="tooltip"
											title="Pinterest" href="http://www.pinterest.com/authemes">
												<i class="fa fa-pinterest"></i>
										</a></li>
										<li><a class="twitter" data-toggle="tooltip"
											title="Twitter" href="http://www.twitter.com/authemes"> <i
												class="fa fa-twitter"></i>
										</a></li>
										<li><a class="google-plus" data-toggle="tooltip"
											title="Google Plus" href="https://plus.google.com/authemes">
												<i class="fa fa-google-plus"></i>
										</a></li>
										<li><a class="instagram" data-toggle="tooltip"
											title="Instagram" href="https://instagram.com/authemes">
												<i class="fa fa-instagram"></i>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="js/bootstrap.min.js"></script>
	<script src="js/function-check-viewport.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/select2.full.min.js"></script>
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<script src="js/jquery.mmenu.all.min.js"></script>
	<script src="js/rellax.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/bootstrap-notify.min.js"></script>
	<script src="js/bootstrap-slider.js"></script>
	<script src="js/in-view.min.js"></script>
	<script src="js/countup.js"></script>
	<script src="js/animsition.min.js"></script>
	<script src="js/global.js"></script>
	<script src="js/config-mm-menu.js"></script>
</body>
</html>
