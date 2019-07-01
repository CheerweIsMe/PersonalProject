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
<script>
	function AddCartServlet() {
		var id = document.getElementById("id").value;
		var num = document.getElementById("num").value;
		window.location.href = "${pageContext.request.contextPath}/addCart.do?id="
				+ id + "&num=" + num;

	}

	function AddWishListServlet() {
		var num = document.getElementById("num").value;
		var id = document.getElementById("id").value;
		window.location.href = "${pageContext.request.contextPath}/addWishList.do?id="
				+ id + "&num=" + num;

	}

	function delGoods() {
		var id = document.getElementById("id").value;
		window.location.href = "${pageContext.request.contextPath}/delGoods.do?id="
				+ id;

	}
</script>

</head>
<body class="animsition">
	<div class="shop-detail-1 woocommerce" id="page">
		<nav id="menu">
			<ul>
				<li><a href="index.jsp">主页</a></li>
				<li><a class="#"
					href="${pageContext.request.contextPath}/allGoods.do">商城</a>
					<ul>
						<li><a href="wish-list.jsp">心愿单</a></li>
					</ul></li>
				<li><a href="#">功能</a>
					<ul>

						<li><c:if test="${u == null }">
								<li><c:if test="${s == null }">
										<a href="login.jsp">登录</a>
									</c:if></li>
							</c:if></li>
						<li><c:if test="${u != null }">
								<a href="${pageContext.request.contextPath}/outLogin.do">注销</a>
							</c:if></li>

						<li><c:if test="${u == null }">
								<li><c:if test="${s == null }">
										<a href="register.jsp">注册</a>
									</c:if></li>
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
									href="${pageContext.request.contextPath}/allGoods.do">商城</a>
									<ul>
										<li><a href="wish-list.jsp">心愿单</a></li>
									</ul></li>

								<%-- <li><a>功能</a>
									<ul>
										<li><c:if test="${u == null }">
												<li><c:if test="${s == null }">
														<a href="login.jsp">登录</a>
													</c:if></li>
											</c:if></li>
										<li><c:if test="${u != null }">
												<a href="${pageContext.request.contextPath}/outLogin.do">注销</a>
											</c:if></li>

										<li><c:if test="${u == null }">
												<li><c:if test="${s == null }">
														<a href="register.jsp">注册</a>
													</c:if></li>
											</c:if></li>


										<li><c:if test="${u == null }">
												<li><c:if test="${s == null }">
														<a href="salerlogin.jsp">卖家登录</a>
													</c:if></li>
											</c:if></li>

										<li><c:if test="${u == null }">
												<li><a href="salerregister.jsp">卖家注册</a></li>
											</c:if></li>


										<li><c:if test="${s != null }">
												<li><a href="SaleruserInfo.jsp">卖家个人中心</a></li>
											</c:if></li>
										<li><c:if test="${s != null }">
												<a href="addgoods.jsp">添加商品</a>
											</c:if></li>
									</ul> --%>
									<li><c:if test="${u == null }">
												<li><c:if test="${s == null }">
														<a href="login.jsp">登录</a>
													</c:if></li>
											</c:if></li>
										<li><c:if test="${u != null }">
												<a href="${pageContext.request.contextPath}/outLogin.do">注销</a>
											</c:if></li>

										<li><c:if test="${u == null }">
												<li><c:if test="${s == null }">
														<a href="register.jsp">注册</a>
													</c:if></li>
											</c:if></li>


										<li><c:if test="${u == null }">
												<li><c:if test="${s == null }">
														<a href="salerlogin.jsp">卖家登录</a>
													</c:if></li>
											</c:if></li>

										<li><c:if test="${u == null }">
												<li><a href="salerregister.jsp">卖家注册</a></li>
											</c:if></li>


										<li><c:if test="${s != null }">
												<li><a href="SaleruserInfo.jsp">卖家个人中心</a></li>
											</c:if></li>
										<li><c:if test="${s != null }">
												<a href="addgoods.jsp">添加商品</a>
											</c:if></li>
											<li><c:if test="${u != null }">
												<a onclick="ViewOrder(${u.uid})" href="#">查看订单</a>
											</c:if></li>
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
			<img class="rellax bg-overlay" src="picture/01.jpg" alt="">
			<div class="overlay-call-to-action"></div>
			<h3 class="heading-style-3">商品细节</h3>
		</section>
		<section class="boxed-sm">
			<div class="container">
				<div class="row product-detail">
					<div class="row main">
						<div class="col-md-6">
							<div class="woocommerce-product-gallery">
								<div class="main-carousel">
									<div class="item">
										<img class="img-responsive" src="picture/${gds.img}"
											alt="product thumbnail">
									</div>




								</div>

							</div>
						</div>
						<div class="col-md-6">
							<div class="summary">
								<div class="desc">
									<div class="header-desc">
										<h2 id="name" name="name" class="product-title">${gds.name}</h2>
										<p class="price">￥${gds.price}</p>
									</div>
									<div class="body-desc">
										<div class="woocommerce-product-details-short-description">
											<p>${gds.info}</p>
										</div>
									</div>
									<div class="footer-desc">

										<div class="quantity buttons-added">

											<input class="input-text qty text" step="1" min="1" id="num"
												max="${gds.num}" name="quantity" value="1" title="Qty"
												size="4" pattern="[0-9]*" inputmode="numeric" type="number">
											<input type="hidden" name="pid" id="id" value="${gds.id }">
										</div>
										<h1>
											<a></a>
										</h1>
										<button onclick="AddCartServlet()"
											class="btn btn-wishlist btn-brand-ghost no-radius">加入购物车</button>
										<button onclick="AddWishListServlet()"
											class="btn btn-wishlist btn-brand-ghost no-radius">
											<i class="fa fa-heart"></i>
										</button>
										<c:if test="${s != null }">
											<button onclick="delGoods()"
												class="btn btn-wishlist btn-brand-ghost no-radius">删除</button>
										</c:if>


									</div>
								</div>
								<div class="product-meta">
									<p class="posted-in">
										<a href="#" rel="tag"></a>
									</p>
									<p class="tagged-as">
										<a href="#" rel="tag"></a> <a href="#" rel="tag"></a> <a
											href="#" rel="tag"></a> <a href="#" rel="tag"></a> <a
											href="#" rel="tag"></a>
									</p>
									<p class="id">
										<a href="#"></a>
									</p>
								</div>
								<div class="widget-social align-left"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="woocommerce-tabs">
					<div class="row">
						<div class="col-md-6">
							<div class="tab-content tab-content-style-1">
								<div class="tab-pane fade in active" id="Description"
									role="tabpanel"></div>
								<div class="tab-pane fade" id="Additional-Information"
									role="tabpanel"></div>

							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="container">
				<div class="relate-product"></div>
			</div>
		</section>
	</div>
	<footer class="footer-style-1">
		<div class="container">
			<div class="row">
				<div class="footer-style-1-inner">
					<div class="widget-footer widget-text col-first col-small">
						<a href="#"> </a>
						<div class="widget-link">
							<ul>
								
							</ul>
						</div>
					</div>
					<div class="widget-footer widget-link col-second col-medium">
						<div class="list-link">
							<h4 class="h4 heading"></h4>
							<ul>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
							</ul>
						</div>
						<div class="list-link">
							<h4 class="h4 heading"></h4>
							<ul>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
							</ul>
						</div>
						<div class="list-link">
							<h4 class="h4 heading"></h4>
							<ul>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
							</ul>
						</div>
					</div>
					<div
						class="widget-footer widget-newsletter-footer col-last col-small">
						<h4 class="h4 heading"></h4>
						<p></p>
						<form class="organic-form form-inline btn-add-on circle border">
							<div class="form-group"></div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right style-1">
			<div class="container">
				<div class="row">
					<div class="copy-right-inner">
						<p></p>
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
										<form class="cart">
											<div class="quantity buttons-added">
												<input class="minus" value="-" type="button" /> <input
													class="input-text qty text" step="1" min="1" max=""
													name="quantity" value="1" title="Qty" size="4"
													pattern="[0-9]*" inputmode="numeric" type="number" /> <input
													class="plus" value="+" type="button" />
											</div>
											<div class="group-btn-control-wrapper">
												<!-- <button class="btn btn-brand no-radius">添加到购物车</button>  -->
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
	<script src="js/config-carousel.js">
		
	</script>
	<script src="js/config-carousel-thumbnail.js">
		
	</script>
	<script src="js/config-carousel-product-quickview.js"></script>
	<!-- Demo Only-->
	<script src="js/demo-add-to-cart.js">
		
	</script>
</body>
</html>
