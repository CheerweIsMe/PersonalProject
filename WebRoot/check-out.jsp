<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>收货信息</title>
<meta charset="utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="css/647be82565184316a7ba9bc638b40a97.css" rel="stylesheet" />
<link href="css/1025b57c3b8b4b63a93efd3b6bed0d58.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
</head>
<body class="animsition">
	<div class="checkout" id="page">
		<nav id="menu">
			<ul>
				<li><a href="index.jsp">主页</a></li>
				<li><a class="active"
					href="${pageContext.request.contextPath}/allGoods.do">商城</a>
					<ul>
						<li><a href="wish-list.jsp">心愿单</a></li>
					</ul></li>
				<li><a href="#">功能</a>
					<ul>
						<li><c:if test="${u != null }">
								<a href="${pageContext.request.contextPath}/outLogin.do">注销</a>
							</c:if></li>
						<li><c:if test="${s != null }">
								<a href="addgoods.jsp">添加商品</a>
							</c:if></li>
						<li><c:if test="${s != null }">
								<a href="${pageContext.request.contextPath}/outLogin.do">注销</a>
							</c:if></li>
						<li><c:if test="${u == null }">
								<li><c:if test="${s == null }">
										<a href="login.jsp">买家登陆</a>
									</c:if></li>
							</c:if></li>
						<li><c:if test="${s == null }">

								<li><a href="register.jsp">买家注册</a></li>
							</c:if></li>

						<li><c:if test="${s == null }">

								<li><a href="userInfo.jsp">买家个人中心</a></li>

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
									href="${pageContext.request.contextPath}/allGoods.do">商店</a>
									<ul>
										<li><a href="wish-list.jsp">心愿单</a></li>
									</ul></li>
								<li><a href="#">功能</a>
									<ul>
										<li><c:if test="${u != null }">
												<a href="${pageContext.request.contextPath}/outLogin.do">注销</a>
											</c:if></li>
										<li><c:if test="${s != null }">
												<a href="addgoods.jsp">添加商品</a>
											</c:if></li>
										<li><c:if test="${s != null }">
												<a href="${pageContext.request.contextPath}/outLogin.do">注销</a>
											</c:if></li>
										<li><c:if test="${u == null }">
												<li><c:if test="${s == null }">
														<a href="login.jsp">买家登陆</a>
													</c:if></li>
											</c:if></li>
										<li><c:if test="${s == null }">

												<li><a href="register.jsp">买家注册</a></li>
											</c:if></li>

										<li><c:if test="${s == null }">

												<li><a href="userInfo.jsp">买家个人中心</a></li>

											</c:if></li>

									</ul></li>
							</ul>
						</nav>
						<aside class="right">
							<div class="widget widget-control-header"></div>

							<div
								class="widget widget-control-header widget-shop-cart js-widget-shop-cart">
								<a class="control" href="shop-cart.html">
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
			<img class="rellax bg-overlay" src="picture/015.jpg" alt="">
			<div class="overlay-call-to-action"></div>
			<h3 class="heading-style-3">收货信息</h3>
		</section>
		<section class="boxed-sm">
			<div class="container">
				<div class="woocommerce">
					<div class="woocommerce-info-wrapper">
						<div class="row">
							<div class="woocommerce-info">
								<li><c:if test="${u == null }">
										<i class="fa fa-check"></i>要登陆才能完成订单哦
                  <a href="login.jsp">点击登陆</a>
									</c:if></li>

							</div>

						</div>
					</div>
					<div class="row">
						<form class="woocommerce-checkout"
							action="${pageContext.request.contextPath}/receivingInfo.do">
							<h4>订单细节</h4>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group organic-form no-radius">
										<label>姓名*</label> <input class="form-control" type="text" id="name"
											name="name">
									</div>
								</div>

							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group organic-form no-radius">
										<label>电话*</label> <input class="form-control" type="text" id="tel"
											name="tel">
									</div>
								</div>

							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group organic-form no-radius">
										<label>地址*</label> <input class="form-control" type="text" id="address"
											name="address">
									</div>
								</div>

							</div>



							<div class="woocommerce-checkout-payment">


								<div class="form-place-order">
									<br> <input class="place_order btn btn-brand pill"
										name="woocommerce_checkout_place_order" value="提交"
										data-value="Place order" type="submit">
								</div>
							</div>
						</form>
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

