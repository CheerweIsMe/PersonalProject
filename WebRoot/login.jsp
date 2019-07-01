<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
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
<script type="text/javascript">
	if ('${result}' != '') {
		if ('${result}' == 1) {
			alert('登录成功')
		}
		if ('${result}' == 0) {
			alert('邮箱或密码错误！')
		}
	}
</script>
</head>
<body class="animsition">
	<div class="login" id="page">
		<nav id="menu">
			<ul>
				<li><a href="index.jsp">主页</a></li>
				<li><a href="${pageContext.request.contextPath}/allGoods.do">商店</a></li>
				<li><a href="register.jsp">注册</a></li>
				<li><a href="salerlogin.jsp">卖家登录</a></li>
				<li><a href="salerregister.jsp">卖家注册</a></li>
			</ul>
		</nav>
		<header class="header-style-1 static">
			<div class="container">
				<div class="row">
					<div class="header-1-inner">

						<nav>
							<ul class="menu hidden-xs">
								<li><a href="index.jsp">主页</a></li>
								<li><a
									href="${pageContext.request.contextPath}/allGoods.do">商店</a></li>

								<!-- <li><a href="#">功能</a>
									<ul>
										<li><a href="login.html">登录</a></li>
										<li><a href="register.jsp">注册</a></li>
										<li><a href="userInfo.jsp">卖家登录</a></li>
										<li><a href="userInfo.jsp">卖家注册</a></li>
									</ul></li> -->

								<li><a href="register.jsp">注册</a></li>
								<li><a href="salerlogin.jsp">卖家登录</a></li>
								<li><a href="salerregister.jsp">卖家注册</a></li>
							</ul>
						</nav>
						<aside class="right">
							<div class="widget widget-control-header">
								<div></div>
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
			<h3 class="heading-style-3">我的账户</h3>
		</section>
		<section class="boxed-sm">
			<div class="container">
				<div class="login-wrapper">
					<div class="row">
						<h3>登录</h3>
						<form action="${pageContext.request.contextPath}/loginUser.do"
							method="post">
							<div class="form-group organic-form-2">
								<label>你的邮箱 *</label> <input name="email" class="form-control"
									type="Email">
							</div>
							<div class="form-group organic-form-2">
								<label>密码 *</label> <input name="password" class="form-control"
									type="Password">
							</div>
							<!-- <div class="form-group remember-me">
								<div class="checkbox pull-left">
									<label> <input type="checkbox"> 记住我
									</label>
								</div>
								<a class="pull-right" href="#">忘记密码?</a>
							</div> -->
							<div class="form-group footer-form">
								<button class="btn btn-brand pill" type="submit">提交</button>
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

