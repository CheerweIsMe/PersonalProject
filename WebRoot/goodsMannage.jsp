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
	function addCart(id) {
		var num = document.getElementById("count").value;
		window.location.href = "AddCartServlet?id=" + id + "&num=" + num;
	}
	
	function AddCartServlet(){
		var id = document.getElementById("id").value;
		var num = document.getElementById("num").value;
		window.location.href = "${pageContext.request.contextPath}/addCart.do?id=" + id + "&num=" + num;
		
	}
	
	function AddWishListServlet(){
		var num = document.getElementById("num").value;
		var id = document.getElementById("id").value;
		window.location.href = "${pageContext.request.contextPath}/addWishList.do?id=" + id + "&num=" + num;
		
	}
</script>

</head>
<body class="animsition">
	<div class="shop-detail-1 woocommerce" id="page">
		<nav id="menu">
			<ul>
				<li><a href="index.jsp">主页</a></li>
				<li><a class="active" href="${pageContext.request.contextPath}/allGoods.do">商店</a></li>
				<li><a href="faq.html">功能</a>
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
										<li><c:if test="${u == null }">
										<li><c:if test="${s == null }">
												<a href="salerlogin.jsp">卖家登陆</a>
											</c:if></li>
											</c:if></li>
											
										<li><c:if test="${u == null }">
											<li><a href="salerregister.jsp">卖家注册</a></li>
											</c:if></li>


											<li><c:if test="${u == null }">
										<li><a href="SaleruserInfo.jsp">卖家个人中心</a></li>
											</c:if></li>
											
											<li><c:if test="${u == null }">
										<li><a href="SaleruserInfo.jsp">商品管理</a></li>
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
								<li><a class="active" href="ProjectServlet?action=list">商城</a>
								<ul><li><a href="wish-list.jsp">心愿单</a></li></ul></li>
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
										<li><c:if test="${u == null }">
										<li><c:if test="${s == null }">
												<a href="salerlogin.jsp">卖家登陆</a>
											</c:if></li>
											</c:if></li>
											
										<li><c:if test="${u == null }">
											<li><a href="salerregister.jsp">卖家注册</a></li>
											</c:if></li>


											<li><c:if test="${u == null }">
										<li><a href="SaleruserInfo.jsp">卖家个人中心</a></li>
											</c:if></li>
											
											<li><c:if test="${u == null }">
										<li><a href="SaleruserInfo.jsp">商品管理</a></li>
											</c:if></li>

									</ul></li>
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
			<img class="rellax bg-overlay" src="picture/01.jpg" alt="">
			<div class="overlay-call-to-action"></div>
			<h3 class="heading-style-3">商品细节</h3>
		</section>
		<section class="boxed-sm">
			<div class="container">
				<div class="row product-detail">
					<div class="row main">
						<div class="col-md-6">
							
						</div>
						<div class="col-md-6">
							<div class="summary">
							<form action="${pageContext.request.contextPath}/updateGoods.do" method="post" enctype="multipart/form-data">
							<div class="main-carousel">
							<div class="item">
										<input calss=img-responsive type="file" name="image" accept="image/*">
									</div>
							</div>
								<div class="desc">
									<div class="header-desc">
										<h2 class="product-title"><label>商品名称*</label><input name="name" type="text" value="${gds.name}"></h2>
										<p class="price">￥${gds.price}</p>
									</div>
									<div class="body-desc">
										<div class="woocommerce-product-details-short-description">
											<p><input>${gds.info}</p>
										</div>
									</div>
									<div class="footer-desc">
									
											<div class="quantity buttons-added">
												<input id="count" class="minus" value="-" type="button">
												<input class="input-text qty text" step="1" min="1" id="num"
													max="${gds.num}" name="quantity" value="1" title="Qty"
													size="4" pattern="[0-9]*" inputmode="numeric" type="number">
												<input class="plus" value="+" type="button"> <input
													type="hidden" name="pid" id="id"value="${gds.id }">
											</div>
											<button onclick="AddCartServlet()" >加入购物车</button>
											<button onclick="AddWishListServlet()"  class="btn btn-wishlist btn-brand-ghost no-radius">
												<i class="fa fa-heart"></i>
											</button>
									
										
									</div>
								</div>
								</form>
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
				<div class="woocommerce-tabs">
					<div class="row">
						<div class="col-md-6">
							<div class="tab-content tab-content-style-1">
								<div class="tab-pane fade in active" id="Description"
									role="tabpanel">
									<h3 class="title-tab">描述</h3>
									<ul class="arrow">
										<li>负责任地使用能源和自然资源</li>
										<li>维护生物多样性</li>
										<li>尊重区域环境平衡</li>
										<li>提高土壤肥力</li>
										<li>保护水质</li>
										<li>促进动物健康和福利。</li>
										<li>满足动物的特殊需求</li>
									</ul>
								</div>
								<div class="tab-pane fade" id="Additional-Information"
									role="tabpanel">
									<h3 class="title-tab">额外的信息</h3>
									<table
										class="shop_attributes table table-striped table-bordered">
										<tbody>
											<tr>
												<th>国家</th>
												<td>
													<p>英格兰, 伦敦</p>
												</td>
											</tr>
											<tr>
												<th>重量</th>
												<td>
													<p>3.5 Kg</p>
												</td>
											</tr>
											<tr>
												<th>第二天交付可用的</th>
												<td>
													<p>是的</p>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="tab-pane fade" id="Review" role="tabpanel">
									<h3 class="title-tab">2 条沙拉有机店的评论</h3>
									<ol class="comment-list">
										<li>
											<div class="the-comment">
												<div class="avatar">
													<img class="avatar" alt="avatar" src="picture/01.png">
												</div>
												<div class="comment-box">
													<div class="comment-author meta">
														<p class="author">马克·亨特</p>
														<p class="time">15 三月 2017</p>
													</div>
													<div class="comment-text">
														<p>这是一个测试…… 这是一种很好的方法。这是一个测试……</p>
													</div>
												</div>
											</div>
										</li>
										<li>
											<div class="the-comment">
												<div class="avatar">
													<img class="avatar" alt="avatar" src="picture/02.png">
												</div>
												<div class="comment-box">
													<div class="comment-author meta">
														<p class="author">洛丽·彼得斯</p>
														<p class="time">16 三月 2017</p>
													</div>
													<div class="comment-text">
														<p>这是一个回复测试……</p>
													</div>
												</div>
											</div>
										</li>
									</ol>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<ul class="tabs tab-style-1" role="tablist">
								<li class="active" role="presentation"><a
									href="#Description" aria-controls="Description" role="tab"
									data-toggle="tab">描述 <i class="more-less fa fa-angle-down"></i>
								</a></li>
								<li role="presentation"><a href="#Additional-Information"
									aria-controls="Additional-Information" role="tab"
									data-toggle="tab">额外的信息 <i
										class="more-less fa fa-angle-down"></i>
								</a></li>
								<li role="presentation"><a href="#Review"
									aria-controls="Review" role="tab" data-toggle="tab">审查 (2)
										<i class="more-less fa fa-angle-down"></i>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="relate-product">
					<div class="heading-wrapper text-center">
						<h3 class="heading">相关产品</h3>
					</div>
					<div class="row">
						<div class="carousel-product">
							<div class="item">
								<figure class="item">
									<div class="product product-style-1">
										<div class="img-wrapper">
											<a href="shop-detail.html"> <img class="img-responsive"
												src="picture/01.jpg" alt="product thumbnail">
											</a>
											<div class="product-control-wrapper bottom-right">
												<div class="wrapper-control-item">
													<a class="js-quick-view" href="#" type="button"
														data-toggle="modal" data-target="#quick-view-product">
														<span class="lnr lnr-eye"></span>
													</a>
												</div>
												<div class="wrapper-control-item item-wish-list">
													<a class="js-wish-list js-notify-add-wish-list" href="#">
														<span class="lnr lnr-heart"></span>
													</a>
												</div>
												<div
													class="wrapper-control-item item-add-cart js-action-add-cart">
													<a class="animate-icon-cart" href="#"> <span
														class="lnr lnr-cart"></span>
													</a>
													<svg x="0px" y="0px" width="36px" height="32px"
														viewbox="0 0 36 32">
                              <path stroke-dasharray="19.79 19.79"
															fill="none" ,="," stroke-width="2"
															stroke-linecap="square" stroke-miterlimit="10"
															d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                            </svg>
												</div>
											</div>
										</div>
										<figcaption class="desc text-center">
											<h3>
												<a class="product-name" href="shop-detail.html">沙拉</a>
											</h3>
											<span class="price">$3.20</span>
										</figcaption>
									</div>
								</figure>
							</div>
							<div class="item">
								<figure class="item">
									<div class="product product-style-1">
										<div class="img-wrapper">
											<a href="shop-detail.html"> <img class="img-responsive"
												src="picture/02.jpg" alt="product thumbnail">
											</a>
											<div class="product-control-wrapper bottom-right">
												<div class="wrapper-control-item">
													<a class="js-quick-view" href="#" type="button"
														data-toggle="modal" data-target="#quick-view-product">
														<span class="lnr lnr-eye"></span>
													</a>
												</div>
												<div class="wrapper-control-item item-wish-list">
													<a class="js-wish-list js-notify-add-wish-list" href="#">
														<span class="lnr lnr-heart"></span>
													</a>
												</div>
												<div
													class="wrapper-control-item item-add-cart js-action-add-cart">
													<a class="animate-icon-cart" href="shop-cart.jsp"> <span
														class="lnr lnr-cart"></span>
													</a>
													<svg x="0px" y="0px" width="36px" height="32px"
														viewbox="0 0 36 32">
                              <path stroke-dasharray="19.79 19.79"
															fill="none" ,="," stroke-width="2"
															stroke-linecap="square" stroke-miterlimit="10"
															d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                            </svg>
												</div>
											</div>
										</div>
										<figcaption class="desc text-center">
											<h3>
												<a class="product-name" href="shop-detail.html">洋葱</a>
											</h3>
											<span class="price">$3.20</span>
										</figcaption>
									</div>
								</figure>
							</div>
							<div class="item">
								<figure class="item">
									<div class="product product-style-1">
										<div class="img-wrapper">
											<a href="shop-detail.html"> <img class="img-responsive"
												src="picture/03.jpg" alt="product thumbnail">
											</a>
											<div class="product-control-wrapper bottom-right">
												<div class="wrapper-control-item">
													<a class="js-quick-view" href="#" type="button"
														data-toggle="modal" data-target="#quick-view-product">
														<span class="lnr lnr-eye"></span>
													</a>
												</div>
												<div class="wrapper-control-item item-wish-list">
													<a class="js-wish-list js-notify-add-wish-list" href="#">
														<span class="lnr lnr-heart"></span>
													</a>
												</div>
												<div
													class="wrapper-control-item item-add-cart js-action-add-cart">
													<a class="animate-icon-cart" href="#"> <span
														class="lnr lnr-cart"></span>
													</a>
													<svg x="0px" y="0px" width="36px" height="32px"
														viewbox="0 0 36 32">
                              <path stroke-dasharray="19.79 19.79"
															fill="none" ,="," stroke-width="2"
															stroke-linecap="square" stroke-miterlimit="10"
															d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                            </svg>
												</div>
											</div>
										</div>
										<figcaption class="desc text-center">
											<h3>
												<a class="product-name" href="shop-detail.html">豆类</a>
											</h3>
											<span class="price">$3.50</span>
										</figcaption>
									</div>
								</figure>
							</div>
							<div class="item">
								<figure class="item">
									<div class="product product-style-1">
										<div class="img-wrapper">
											<a href="shop-detail.html"> <img class="img-responsive"
												src="picture/04.jpg" alt="product thumbnail">
											</a>
											<div class="product-control-wrapper bottom-right">
												<div class="wrapper-control-item">
													<a class="js-quick-view" href="#" type="button"
														data-toggle="modal" data-target="#quick-view-product">
														<span class="lnr lnr-eye"></span>
													</a>
												</div>
												<div class="wrapper-control-item item-wish-list">
													<a class="js-wish-list js-notify-add-wish-list" href="#">
														<span class="lnr lnr-heart"></span>
													</a>
												</div>
												<div
													class="wrapper-control-item item-add-cart js-action-add-cart">
													<a class="animate-icon-cart" href="#"> <span
														class="lnr lnr-cart"></span>
													</a>
													<svg x="0px" y="0px" width="36px" height="32px"
														viewbox="0 0 36 32">
                              <path stroke-dasharray="19.79 19.79"
															fill="none" ,="," stroke-width="2"
															stroke-linecap="square" stroke-miterlimit="10"
															d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                            </svg>
												</div>
											</div>
										</div>
										<figcaption class="desc text-center">
											<h3>
												<a class="product-name" href="shop-detail.html">柠檬</a>
											</h3>
											<span class="price">$1.08</span>
										</figcaption>
									</div>
								</figure>
							</div>
							<div class="item">
								<figure class="item">
									<div class="product product-style-1">
										<div class="img-wrapper">
											<a href="shop-detail.html"> <img class="img-responsive"
												src="picture/05.jpg" alt="product thumbnail">
											</a>
											<div class="product-control-wrapper bottom-right">
												<div class="wrapper-control-item">
													<a class="js-quick-view" href="#" type="button"
														data-toggle="modal" data-target="#quick-view-product">
														<span class="lnr lnr-eye"></span>
													</a>
												</div>
												<div class="wrapper-control-item item-wish-list">
													<a class="js-wish-list js-notify-add-wish-list" href="#">
														<span class="lnr lnr-heart"></span>
													</a>
												</div>
												<div
													class="wrapper-control-item item-add-cart js-action-add-cart">
													<a class="animate-icon-cart" href="#"> <span
														class="lnr lnr-cart"></span>
													</a>
													<svg x="0px" y="0px" width="36px" height="32px"
														viewbox="0 0 36 32">
                              <path stroke-dasharray="19.79 19.79"
															fill="none" ,="," stroke-width="2"
															stroke-linecap="square" stroke-miterlimit="10"
															d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                            </svg>
												</div>
											</div>
										</div>
										<figcaption class="desc text-center">
											<h3>
												<a class="product-name" href="shop-detail.html">巴旦木</a>
											</h3>
											<span class="price">$2.26</span>
										</figcaption>
									</div>
								</figure>
							</div>
							<div class="item">
								<figure class="item">
									<div class="product product-style-1">
										<div class="img-wrapper">
											<a href="shop-detail.html"> <img class="img-responsive"
												src="picture/06.jpg" alt="product thumbnail">
											</a>
											<div class="product-control-wrapper bottom-right">
												<div class="wrapper-control-item">
													<a class="js-quick-view" href="#" type="button"
														data-toggle="modal" data-target="#quick-view-product">
														<span class="lnr lnr-eye"></span>
													</a>
												</div>
												<div class="wrapper-control-item item-wish-list">
													<a class="js-wish-list js-notify-add-wish-list" href="#">
														<span class="lnr lnr-heart"></span>
													</a>
												</div>
												<div
													class="wrapper-control-item item-add-cart js-action-add-cart">
													<a class="animate-icon-cart" href="#"> <span
														class="lnr lnr-cart"></span>
													</a>
													<svg x="0px" y="0px" width="36px" height="32px"
														viewbox="0 0 36 32">
                              <path stroke-dasharray="19.79 19.79"
															fill="none" ,="," stroke-width="2"
															stroke-linecap="square" stroke-miterlimit="10"
															d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                            </svg>
												</div>
											</div>
										</div>
										<figcaption class="desc text-center">
											<h3>
												<a class="product-name" href="shop-detail.html">苹果</a>
											</h3>
											<span class="price">$4.05</span>
										</figcaption>
									</div>
								</figure>
							</div>
							<div class="item">
								<figure class="item">
									<div class="product product-style-1">
										<div class="img-wrapper">
											<a href="shop-detail.html"> <img class="img-responsive"
												src="picture/07.jpg" alt="product thumbnail">
											</a>
											<div class="product-control-wrapper bottom-right">
												<div class="wrapper-control-item">
													<a class="js-quick-view" href="#" type="button"
														data-toggle="modal" data-target="#quick-view-product">
														<span class="lnr lnr-eye"></span>
													</a>
												</div>
												<div class="wrapper-control-item item-wish-list">
													<a class="js-wish-list js-notify-add-wish-list" href="#">
														<span class="lnr lnr-heart"></span>
													</a>
												</div>
												<div
													class="wrapper-control-item item-add-cart js-action-add-cart">
													<a class="animate-icon-cart" href="#"> <span
														class="lnr lnr-cart"></span>
													</a>
													<svg x="0px" y="0px" width="36px" height="32px"
														viewbox="0 0 36 32">
                              <path stroke-dasharray="19.79 19.79"
															fill="none" ,="," stroke-width="2"
															stroke-linecap="square" stroke-miterlimit="10"
															d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                            </svg>
												</div>
											</div>
										</div>
										<figcaption class="desc text-center">
											<h3>
												<a class="product-name" href="shop-detail.html">西兰花</a>
											</h3>
											<span class="price">$3.88</span>
										</figcaption>
									</div>
								</figure>
							</div>
							<div class="item">
								<figure class="item">
									<div class="product product-style-1">
										<div class="img-wrapper">
											<a href="shop-detail.html"> <img class="img-responsive"
												src="picture/08.jpg" alt="product thumbnail">
											</a>
											<div class="product-control-wrapper bottom-right">
												<div class="wrapper-control-item">
													<a class="js-quick-view" href="#" type="button"
														data-toggle="modal" data-target="#quick-view-product">
														<span class="lnr lnr-eye"></span>
													</a>
												</div>
												<div class="wrapper-control-item item-wish-list">
													<a class="js-wish-list js-notify-add-wish-list" href="#">
														<span class="lnr lnr-heart"></span>
													</a>
												</div>
												<div
													class="wrapper-control-item item-add-cart js-action-add-cart">
													<a class="animate-icon-cart" href="#"> <span
														class="lnr lnr-cart"></span>
													</a>
													<svg x="0px" y="0px" width="36px" height="32px"
														viewbox="0 0 36 32">
                              <path stroke-dasharray="19.79 19.79"
															fill="none" ,="," stroke-width="2"
															stroke-linecap="square" stroke-miterlimit="10"
															d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                            </svg>
												</div>
											</div>
										</div>
										<figcaption class="desc text-center">
											<h3>
												<a class="product-name" href="shop-detail.html">巴旦木</a>
											</h3>
											<span class="price">$1.55</span>
										</figcaption>
									</div>
								</figure>
							</div>
							<div class="item">
								<figure class="item">
									<div class="product product-style-1">
										<div class="img-wrapper">
											<a href="shop-detail.html"> <img class="img-responsive"
												src="picture/09.jpg" alt="product thumbnail">
											</a>
											<div class="product-control-wrapper bottom-right">
												<div class="wrapper-control-item">
													<a class="js-quick-view" href="#" type="button"
														data-toggle="modal" data-target="#quick-view-product">
														<span class="lnr lnr-eye"></span>
													</a>
												</div>
												<div class="wrapper-control-item item-wish-list">
													<a class="js-wish-list js-notify-add-wish-list" href="#">
														<span class="lnr lnr-heart"></span>
													</a>
												</div>
												<div
													class="wrapper-control-item item-add-cart js-action-add-cart">
													<a class="animate-icon-cart" href="#"> <span
														class="lnr lnr-cart"></span>
													</a>
													<svg x="0px" y="0px" width="36px" height="32px"
														viewbox="0 0 36 32">
                              <path stroke-dasharray="19.79 19.79"
															fill="none" ,="," stroke-width="2"
															stroke-linecap="square" stroke-miterlimit="10"
															d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                            </svg>
												</div>
											</div>
										</div>
										<figcaption class="desc text-center">
											<h3>
												<a class="product-name" href="shop-detail.html">梨</a>
											</h3>
											<span class="price">$4.80</span>
										</figcaption>
									</div>
								</figure>
							</div>
							<div class="item">
								<figure class="item">
									<div class="product product-style-1">
										<div class="img-wrapper">
											<a href="shop-detail.html"> <img class="img-responsive"
												src="picture/010.jpg" alt="product thumbnail">
											</a>
											<div class="product-control-wrapper bottom-right">
												<div class="wrapper-control-item">
													<a class="js-quick-view" href="#" type="button"
														data-toggle="modal" data-target="#quick-view-product">
														<span class="lnr lnr-eye"></span>
													</a>
												</div>
												<div class="wrapper-control-item item-wish-list">
													<a class="js-wish-list js-notify-add-wish-list" href="#">
														<span class="lnr lnr-heart"></span>
													</a>
												</div>
												<div
													class="wrapper-control-item item-add-cart js-action-add-cart">
													<a class="animate-icon-cart" href="#"> <span
														class="lnr lnr-cart"></span>
													</a>
													<svg x="0px" y="0px" width="36px" height="32px"
														viewbox="0 0 36 32">
                              <path stroke-dasharray="19.79 19.79"
															fill="none" ,="," stroke-width="2"
															stroke-linecap="square" stroke-miterlimit="10"
															d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                            </svg>
												</div>
											</div>
										</div>
										<figcaption class="desc text-center">
											<h3>
												<a class="product-name" href="shop-detail.html">西红柿</a>
											</h3>
											<span class="price">$2.32</span>
										</figcaption>
									</div>
								</figure>
							</div>
							<div class="item">
								<figure class="item">
									<div class="product product-style-1">
										<div class="img-wrapper">
											<a href="shop-detail.html"> <img class="img-responsive"
												src="picture/011.jpg" alt="product thumbnail">
											</a>
											<div class="product-control-wrapper bottom-right">
												<div class="wrapper-control-item">
													<a class="js-quick-view" href="#" type="button"
														data-toggle="modal" data-target="#quick-view-product">
														<span class="lnr lnr-eye"></span>
													</a>
												</div>
												<div class="wrapper-control-item item-wish-list">
													<a class="js-wish-list js-notify-add-wish-list" href="#">
														<span class="lnr lnr-heart"></span>
													</a>
												</div>
												<div
													class="wrapper-control-item item-add-cart js-action-add-cart">
													<a class="animate-icon-cart" href="#"> <span
														class="lnr lnr-cart"></span>
													</a>
													<svg x="0px" y="0px" width="36px" height="32px"
														viewbox="0 0 36 32">
                              <path stroke-dasharray="19.79 19.79"
															fill="none" ,="," stroke-width="2"
															stroke-linecap="square" stroke-miterlimit="10"
															d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                            </svg>
												</div>
											</div>
										</div>
										<figcaption class="desc text-center">
											<h3>
												<a class="product-name" href="shop-detail.html">苦瓜</a>
											</h3>
											<span class="price">$5.20</span>
										</figcaption>
									</div>
								</figure>
							</div>
							<div class="item">
								<figure class="item">
									<div class="product product-style-1">
										<div class="img-wrapper">
											<a href="shop-detail.html"> <img class="img-responsive"
												src="picture/012.jpg" alt="product thumbnail">
											</a>
											<div class="product-control-wrapper bottom-right">
												<div class="wrapper-control-item">
													<a class="js-quick-view" href="#" type="button"
														data-toggle="modal" data-target="#quick-view-product">
														<span class="lnr lnr-eye"></span>
													</a>
												</div>
												<div class="wrapper-control-item item-wish-list">
													<a class="js-wish-list js-notify-add-wish-list" href="#">
														<span class="lnr lnr-heart"></span>
													</a>
												</div>
												<div
													class="wrapper-control-item item-add-cart js-action-add-cart">
													<a class="animate-icon-cart" href="#"> <span
														class="lnr lnr-cart"></span>
													</a>
													<svg x="0px" y="0px" width="36px" height="32px"
														viewbox="0 0 36 32">
                              <path stroke-dasharray="19.79 19.79"
															fill="none" ,="," stroke-width="2"
															stroke-linecap="square" stroke-miterlimit="10"
															d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                            </svg>
												</div>
											</div>
										</div>
										<figcaption class="desc text-center">
											<h3>
												<a class="product-name" href="shop-detail.html">黄瓜</a>
											</h3>
											<span class="price">$3.45</span>
										</figcaption>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<footer class="footer-style-1">
		<div class="container">
			<div class="row">
				<div class="footer-style-1-inner">
					<div class="widget-footer widget-text col-first col-small">
						<a href="#"> <img class="logo-footer" src="picture/logo.png"
							alt="Logo Organic" />
						</a>
						<div class="widget-link">
							<ul>
								<li><span class="lnr lnr-map-marker icon"></span> <span>纽约第五大道，379号</span>
								</li>
								<li><span class="lnr lnr-phone-handset icon"></span> <a
									href="tel:0123456789">(+1) 96 716 6879</a></li>
								<li><span class="lnr lnr-envelope icon"></span> <a
									href="mailto: contact@site.com">contact@site.com </a></li>
							</ul>
						</div>
					</div>
					<div class="widget-footer widget-link col-second col-medium">
						<div class="list-link">
							<h4 class="h4 heading">商城</h4>
							<ul>
								<li><a href="#">食物</a></li>
								<li><a href="#">农场</a></li>
								<li><a href="#">健康</a></li>
								<li><a href="#">有机</a></li>
							</ul>
						</div>
						<div class="list-link">
							<h4 class="h4 heading">支持</h4>
							<ul>
								<li><a href="#">联系我们</a></li>
								<li><a href="#">常见问题解答</a></li>
								<li><a href="#">隐私政策</a></li>
								<li><a href="#">博客</a></li>
							</ul>
						</div>
						<div class="list-link">
							<h4 class="h4 heading">我的账户</h4>
							<ul>
								<li><a href="#">登陆</a></li>
								<li><a href="#">我的购物车</a></li>
								<li><a href="#">我的心愿单</a></li>
								<li><a href="#">结账</a></li>
							</ul>
						</div>
					</div>
					<div
						class="widget-footer widget-newsletter-footer col-last col-small">
						<h4 class="h4 heading">通讯</h4>
						<p>订阅现在获取每日更新。</p>
						<form class="organic-form form-inline btn-add-on circle border">
							<div class="form-group">
								<input class="form-control pill transparent"
									placeholder="Your Email..." type="email" />
								<button class="btn btn-brand circle" type="submit">
									<i class="fa fa-envelope-o"></i>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right style-1">
			<div class="container">
				<div class="row">
					<div class="copy-right-inner">
						<p>版权©2017由AuThemes设计。保留所有权利。</p>
						<div class="widget widget-footer widget-footer-creadit-card">
							<ul class="list-unstyle">
								<li><a href="#"> <img src="picture/creadit-card-01.png"
										alt="creadit card" />
								</a></li>
								<li><a href="#"> <img src="picture/creadit-card-02.png"
										alt="creadit card" />
								</a></li>
								<li><a href="#"> <img src="picture/creadit-card-03.png"
										alt="creadit card" />
								</a></li>
								<li><a href="#"> <img src="picture/creadit-card-04.png"
										alt="creadit card" />
								</a></li>
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
