<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
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
<script type="text/javascript">
function fun(){  
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
	}
	
	function checkPassword(){
		var p = document.getElementById("password").value;
		var p1= document.getElementById("password1").value;
		
		if(p ==p1){
			return false;
		}else{
			alert("密码不一致！！")
		}
	}


</script>
</head>
<body class="animsition">
	<div class="login" id="page">
		<nav id="menu">
			<ul>
				<li><a href="index.jsp">主页</a></li>
				<li><a href="ProjectServlet?action=list">商店</a></li>
				<li><a href="#">关于</a></li>
				<li><a class="active" href="#">博客</a></li>
				<li><a href="#">联系</a></li>
				<li><a href="#">功能</a>
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
						<a class="brand-logo animsition-link" href="index.html"> <img
							class="img-responsive" src="picture/logo.png" alt="" />
						</a>
						<nav>
							<ul class="menu hidden-xs">
								<li><a href="index.jsp">主页</a></li>
								<li><a href="${pageContext.request.contextPath}/allGoods.do">商店</a></li>
								
								<li><c:if test="${u == null }">
								<a href="login.html">登录</a>
							</c:if></li>
						<li><c:if test="${u != null }">
								<a href="${pageContext.request.contextPath}/outLogin.do">注销</a>
							</c:if></li>
							</ul>
						</nav>
						<aside class="right">
							<div class="widget widget-control-header">
								<div >
									${u.name}
								</div>
							</div>
							<div class="widget widget-control-header widget-search-header">
								<a
									class="control btn-open-search-form js-open-search-form-header"
									href="#"> <span class="lnr lnr-magnifier"></span>
								</a>
								<div class="form-outer">
									<button
										class="btn-close-form-search-header js-close-search-form-header">
										<span class="lnr lnr-cross"></span>
									</button>
									<form>
										<input placeholder="Search" />
										<button class="search">
											<span class="lnr lnr-magnifier"></span>
										</button>
									</form>
								</div>
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
		<section class="sub-header shop-layout-1">
			<img class="rellax bg-overlay" src="picture/011.jpg" alt="">
			<div class="overlay-call-to-action"></div>
			<h3 class="heading-style-3">添加商品</h3>
		</section>
		<section class="boxed-sm">
			<div class="container">
				<div class="login-wrapper">
					<div class="row">
						<h3>商品信息</h3>
						<form action="${pageContext.request.contextPath}/addGoods.do" method="post" enctype="multipart/form-data">
							<div class="form-group organic-form-2">
								<label>商品名称 *</label> <input name="name" class="form-control" type="text">
							</div>
							<div class="form-group organic-form-2">
								<label>商品图片*</label> <input calss="form-control" type="file" name="image" accept="image/*">
							</div>
							<div class="form-group organic-form-2">
								<label>价格 *</label> <input id="price" name="price" class="form-control" type="text">
							</div>
							<div class="form-group organic-form-2">
								<label>数量 *</label> <input id="num" class="form-control" name="num"  type="text" onkeyup="value=value.replace(/[^\d、0-9]/g,'')"
									type="Password">	
							</div>
							<div class="form-group organic-form-2">
								<label>商品描述 *</label> <input id="info" class="form-control" name="info"  type="text"
									type="Password">	
							</div>
							
							<div class="form-group footer-form">
								<button id="regist" class="btn btn-brand pill" type="submit"  >提交</button>
							</div>
						</form>
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
							<h4 class="h4 heading">商店</h4>
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
								<li><a href="#">登录</a></li>
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
	<script src="js/config-set-bg-blog-thumb.js"></script>
	<script src="js/config-accrodion.js">
		
	</script>
</body>
</html>
