
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<html>
<head>
<title>Home</title>
<meta charset="utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="css/647be82565184316a7ba9bc638b40a97.css" rel="stylesheet" />
<link href="css/1025b57c3b8b4b63a93efd3b6bed0d58.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script type="text/javascript">
	function doDelete(pid) {
		var flag = confirm("是否要删除这一项吗?");
		if (flag)
			window.location.href = "${pageContext.request.contextPath}/deleteWishList.do?pid="
					+ pid;
	}
</script>
</head>
<body class="animsition">
	<div class="wish-list" id="page">
		<nav id="menu">
			<ul>
				<li><a href="index.jsp">主页</a></li>
				<li><a class="active"
					href="${pageContext.request.contextPath}/allGoods.do">商城</a></li>
				<li><a href="#">功能</a>
					<ul>

						<li><c:if test="${u == null }">
								<a href="login.html">登录</a>
							</c:if></li>
						<li><c:if test="${u != null }">
								<a href="${pageContext.request.contextPath}/outLogin.do">注销</a>
							</c:if></li>
						<li><a href="register.jsp">注册</a></li>
						<li><a href="userInfo.jsp">个人中心</a></li>
						<li><a href="userInfo.jsp">卖家登录</a></li>
						<li><a href="userInfo.jsp">卖家注册</a></li>
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
									href="${pageContext.request.contextPath}/allGoods.do">商城</a>
									<ul>

										<li><a href="wish-list.jsp">心愿单</a></li>

									</ul></li>
								<%-- <li><a href="faq.html">功能</a>
									<ul>
										<li><c:if test="${u == null }">
												<a href="login.jsp">登录</a>
											</c:if></li>
										<li><c:if test="${u != null }">
												<a href="${pageContext.request.contextPath}/outLogin.do">注销</a>
											</c:if></li>
										<li><a href="register.jsp">注册</a></li>
										<li><a href="userInfo.jsp">个人中心</a></li>
									</ul></li> --%>
									<li><c:if test="${u == null }">
												<a href="login.jsp">登录</a>
											</c:if></li>
										<li><c:if test="${u != null }">
												<a href="${pageContext.request.contextPath}/outLogin.do">注销</a>
											</c:if></li>
										<li><a href="register.jsp">注册</a></li>
										<li><c:if test="${u != null }">
												<a onclick="ViewOrder(${u.uid})" href="#">查看订单</a>
											</c:if></li>
							</ul>
							</li>
							</ul>
						</nav>
						<aside class="right">
							<div class="widget widget-control-header">
								<div>${u.name}</div>
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
			<img class="rellax bg-overlay" src="picture/014.jpg" alt="">
			<div class="overlay-call-to-action"></div>
			<h3 class="heading-style-3">心愿单</h3>
		</section>
		<section class="boxed-sm">
			<div class="container">
				<div class="woocommerce">
					<form class="woocommerce-cart-form">
						<table name="" class="woocommerce-cart-table">
							<thead>
								<tr>
									<th class="product-thumbnail">产品</th>
									<th class="product-name"></th>
									<th class="product-price">价格</th>
									<th class="product-status">数量</th>
									<th class="product-add-to-cart"></th>
									<th class="product-remove"></th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${wishlist.map}" var="entry">
									<tr>

										<td class="product-name" data-title="Product"><a
											class="product-name" href="shop-detail.jsp">${entry.value.gds.name }</a>
										</td>
										<td class="product-price" data-title="Weight"></td>
										<td class="product-price" data-title="Weight">${entry.value.gds.price }</td>
										<td class="product-stock-status" data-title="Stock Status">
											${entry.value.num}</td>

										<td class="product-add-to-cart"><a class="btn btn-brand"
											href="${pageContext.request.contextPath}/addCart.do?id=${entry.value.gds.id }&num=${entry.value.num}">加入购物车</a></td>
										<td class="product-remove text-right"><a class="remove"
											href="javascript:doDelete(${entry.key })"
											aria-label="Remove this item">x</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</form>
				</div>
			</div>
		</section>
	</div>
	<footer class="footer-style-1">
		<div class="container">
			<div class="row">
				
			</div>
		</div>
		<div class="copy-right style-1">
			<div class="container">
				<div class="row">
					<div class="copy-right-inner">
						<div class="widget widget-footer widget-footer-creadit-card">
							<ul class="list-unstyle">
								
							</ul>
						</div>
					</div>
				</div>
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
										<form class="wishlist">
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
	<script src="js/jquery.min.js"></script>
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
