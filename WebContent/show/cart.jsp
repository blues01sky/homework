<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

	<title>Cart</title>

	<!-- Standard Favicon -->
	<link rel="icon" type="image/x-icon" href="images//favicon.ico" />
	
	<!-- For iPhone 4 Retina display: -->
	<link rel="apple-touch-icon-precomposed" href="images//apple-touch-icon-114x114-precomposed.png">
	
	<!-- For iPad: -->
	<link rel="apple-touch-icon-precomposed" href="images//apple-touch-icon-72x72-precomposed.png">
	
	<!-- For iPhone: -->
	<link rel="apple-touch-icon-precomposed" href="images//apple-touch-icon-57x57-precomposed.png">	
	
	<!-- Library - Google Font Familys -->
	<link href="https://fonts.googleapis.com/css?family=Arizonia|Crimson+Text:400,400i,600,600i,700,700i|Lato:100,100i,300,300i,400,400i,700,700i,900,900i|Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="revolution/css/settings.css">
 
	<!-- RS5.0 Layers and Navigation Styles -->
	<link rel="stylesheet" type="text/css" href="revolution/css/layers.css">
	<link rel="stylesheet" type="text/css" href="revolution/css/navigation.css">
	
	<!-- Library - Bootstrap v3.3.5 -->
    <link rel="stylesheet" type="text/css" href="libraries/lib.css">
	
	<!-- Custom - Common CSS -->
	<link rel="stylesheet" type="text/css" href="css/plugins.css">			
	<link rel="stylesheet" type="text/css" href="css/navigation-menu.css">
	<link rel="stylesheet" type="text/css" href="css/shortcode.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	
	
	<!--[if lt IE 9]>
		<script src="js/html5/respond.min.js"></script>
    <![endif]-->
    
</head>

<body data-offset="200" data-spy="scroll" data-target=".ow-navigation">
	<div class="main-container">
		<!-- Loader -->
		<div id="site-loader" class="load-complete">
			<div class="loader">
				<div class="loader-inner ball-clip-rotate">
					<div></div>
				</div>
			</div>
		</div><!-- Loader /- -->	
		
		<!-- Header -->
		<header class="header-section header-section-1 container-fluid no-padding">
			<!-- Top Header -->
			<div class="top-header top-header1 container-fluid no-padding">
				<!-- Container -->
				<div class="container">
					<div class="col-md-7 col-sm-7 col-xs-7 dropdown-bar">
						<h5>欢迎来到小二的店</h5>
						<div class="language-dropdown dropdown">
							<button aria-expanded="true" aria-haspopup="true" data-toggle="dropdown" title="languages" id="language" type="button" class="btn dropdown-toggle">中文<span class="caret"></span></button>
							<ul class="dropdown-menu no-padding">
								<li><a title="Danish" href="#">English</a></li>
								<li><a title="German" href="#">German</a></li>
								<li><a title="French" href="#">French</a></li>
							</ul>
						</div>
						<div class="language-dropdown dropdown">
							<button aria-expanded="true" aria-haspopup="true" data-toggle="dropdown" title="currency" id="currency" type="button" class="btn dropdown-toggle">人民币<span class="caret"></span></button>
							<ul class="dropdown-menu no-padding">
								<li><a title="Danish" href="#">美元</a></li>
								<li><a title="German" href="#">欧元</a></li>
								<li><a title="French" href="#">里亚尔</a></li>
							</ul>
						</div>
					</div>
					<!-- Social -->
					<div class="col-md-5 col-sm-5 col-xs-5 header-social"> 
						<ul>
								<li><a href="#" title="腾讯微博"><i class="fa fa-tencent-weibo"></i></a></li>
							<li><a href="#" title="qq"><i class="fa fa-qq"></i></a></li>
							<li><a href="#" title="微信"><i class="fa fa-wechat"></i></a></li>
							<li><a href="#" title="微博"><i class="fa fa-weibo"></i></a></li>
							<li><a href="#" title="v"><i class="fa fa-vimeo"></i></a></li>
							<li><a href="#" title="分享"><i class="fa fa-bicycle"></i></a></li>
						</ul>
					</div><!-- Social /- -->
				</div><!-- Container /- -->
			</div><!-- Top Header /- -->
			
			<!-- Middel Header -->
			<div class="middel-header">
				<!-- Container -->
				<div class="container">
					<!-- Logo Block -->
					<div class="col-md-4 col-sm-6 col-xs-12 logo-block">
						<a href="index.jsp" class="navbar-brand">欢迎 <span>访问</span></a>
					</div><!-- Logo Block /- -->
					<!-- Search Block -->
					<div class="col-md-5 col-sm-6 col-xs-6 search-block">
						<div class="input-group">
							<input class="form-control" placeholder="输入你想要寻找的商品..." type="text">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button"><i class="icon icon-Search"></i></button>
							</span>
						</div>
					</div><!-- Search Block /- -->
					<!-- Menu Icon -->
					<div class="col-md-3 col-sm-6 col-xs-6 menu-icon">
						<ul class="cart">
								<li>
									<a aria-expanded="true" aria-haspopup="true" data-toggle="dropdown" id="cart" class="btn dropdown-toggle" title="购物车" href="#"><i class="icon icon-ShoppingCart"></i></a>
									<ul class="dropdown-menu no-padding">
										<li class="mini_cart_item">
											<a title="移除这个商品" class="remove" href="#">&#215;</a>
											<a href="#" class="shop-thumbnail">
												<img alt="poster_2_up" class="attachment-shop_thumbnail" src="images/product-wishlist-1.jpg">商品
											</a>
											<span class="quantity">数量 &#215; <span class="amount">价格</span></span>
										</li>
										<li class="mini_cart_item">
											<a title="移除这个商品" class="remove" href="#">&#215;</a>
											<a href="#" class="shop-thumbnail">
												<img alt="poster_2_up" class="attachment-shop_thumbnail" src="images/product-wishlist-2.jpg">商品
											</a>
											<span class="quantity">数量 &#215; <span class="amount">价格</span></span>
										</li>
										<li class="button">
											<a href="#" title="查看详情">查看详情</a>
											<a href="#" title="结账">结账</a>
										</li>
									</ul>
							</li>
							<li><a href="#" title="我喜欢"><i class="icon icon-Heart"></i></a></li>
							<li><a href="#" title="用户"><i class="icon icon-User" onclick="userbreak()"></i></a></li>
						</ul>
					</div><!-- Menu Icon /- -->
				</div><!-- Container /- -->
			</div><!-- Middel Header /- -->
			
			<!-- Menu Block -->
			<div class="container-fluid no-padding menu-block">
				<!-- Container -->
				<div class="container">
					<!-- nav -->
					<nav class="navbar navbar-default ow-navigation">
						<div class="navbar-header">
							<button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a href="index.jsp" class="navbar-brand">Max <span>shop</span></a>
						</div>
						<div class="navbar-collapse collapse" id="navbar">
							<ul class="nav navbar-nav">
								<li><a href="index.jsp">主页</a></li>
								<li><a href="cart.jsp">购物车</a></li>
								<li><a href="checkout.jsp">建议</a></li>
								<li><a href="about.jsp">关于我们</a></li>
								<li><a href="contact-us.jsp">联系我们</a></li>
							</ul>
						</div><!--/.nav-collapse -->
					</nav><!-- nav /- -->
				</div><!-- Container /- -->
			</div><!-- Menu Block /- -->
		</header><!-- Header /- -->
		
		<main>
			<!-- Page Banner -->
			<div class="page-banner container-fluid no-padding">
				<!-- Container -->
				<div class="container">
					<div class="banner-content">
						<h3>购物车</h3>
						<p>我们的愿望就是成为地球上唯一以客户为中心的公司</p>
					</div>
					<ol class="breadcrumb">
						<li><a href="index.jsp" title="主页">主页</a></li>							
						<li class="active">购物车</li>
					</ol>
				</div><!-- Container /- -->
			</div><!-- Page Banner /- -->
			<!-- Cart -->
			<div class="woocommerce-cart container-fluid no-left-padding no-right-padding">
				<!-- Container -->
				<div class="container">
					<!-- Cart Table -->
					<div class="col-md-12 col-sm-12 col-xs-12 cart-table">
						<form>
							<table class="table table-bordered table-responsive">
								<thead>
									<tr>
										<th class="product-thumbnail">订单</th>
										<th class="product-name">商品名称</th>
										<th class="product-quantity">数量</th>
										<th class="product-unit-price">单价</th>
										<th class="product-subtotal">总价</th>
										<th class="product-remove">移除</th>
									</tr>
								</thead>
								<tbody>
									<tr class="cart_item">
										<td data-title="Item" class="product-thumbnail"><a href="#">20181214001</a></td>
										<td data-title="Product Name" class="product-name"><a href="#">桌子</a></td>
										<td data-title="Quantity" class="product-quantity">
											<div class="prd-quantity" data-title="Quantity">
												<input value="-" class="qtyminus btn" data-field="quantity1" type="button">
												<input name="quantity1" value="0" class="qty" type="text">
												<input value="+" class="qtyplus btn" data-field="quantity1" type="button">
											</div>
										</td>
										<td data-title="Unit Price" class="product-unit-price">¥550</td>
										<td data-title="Total" class="product-subtotal">¥550</td>
										<td data-title="Remove" class="product-remove"><a href="#"><i class="icon icon-Delete"></i></a></td>
									</tr>
									<tr>
										<td class="action" colspan="6">
											<a href="#" title="继续购物">继续购物</a>
											<a href="#" title="更新购物车">更新购物车</a>
										</td>
									</tr>
								</tbody>
							</table>
						</form>
					</div><!-- Cart Table /- -->
					<!-- Coupon -->
					<div class="col-md-offset-4 col-md-4 col-sm-6 col-xs-6 coupon">
						<div class="coupon-box">
							<h4>优惠券</h4>
							<h6>如果你有优惠券那么请输入</h6>
							<form>
								<input type="text" class="form-control" placeholder="输入优惠券的券码" />
								<input type="submit" value="使用优惠券" />
							</form>
						</div>
					</div><!-- Coupon /- -->
					<div class="col-md-4 col-sm-6 col-xs-6 cart-collaterals">
						<div class="cart_totals">
							<h3>购物车总计</h3>
							<table>
								<tr>
									<th>小计</th>
									<td>¥550</td>
								</tr>
								<tr>
									<th>运费</th>
									<td>免运费</td>
								</tr>
								<tr>
									<th>总计</th>
									<td>¥550</td>
								</tr>
							</table>
							<div class="wc-proceed-to-checkout">		
								<a href="#" class="checkout-button button alt wc-forward">结账</a>
							</div>
						</div>
					</div>
				</div><!-- Container /- -->
			</div><!-- Cart /- -->
			
		</main>
		
		<!-- Footer Main 1 -->
		<footer id="footer-main" class="footer-main footer-main-1 services-section container-fluid">
			<!-- Container -->
			<div class="container">
				<div class="services-item">
					<div class="col-md-4 col-sm-6 col-xs-6">
						<div class="srv-box">
							<i class="icon icon-Truck"></i><h5>包邮</h5><i class="icon icon-Dollar"></i>
							<span class="icon_close"></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-6">
						<div class="srv-box">
							<i class="icon icon-Goto"></i><h5>售后</h5><i class="icon icon-Dollars"></i>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-6">
						<div class="srv-box">
							<i class="icon icon-Headset"></i><h5>24小时服务</h5><i class="icon icon-Timer"></i>
						</div>
					</div>
				</div>
				<!-- Widget About -->
				<aside class="col-md-3 col-sm-6 col-xs-6 ftr-widget widget_about">
						<a href="index.jsp" title="Max Shop">我的家居<span>商城</span></a>
					<p>皇后大道西又皇后大道东，皇后大道东转皇后大道中，皇后大道东上为何无皇宫，皇后大道中人民如潮涌</p>
					<ul class="social">
						<li><a href="#" title="qq"><i class="fa fa-qq"></i></a></li>
							<li><a href="#" title="微信"><i class="fa fa-wechat"></i></a></li>
							<li><a href="#" title="腾讯微博"><i class="fa fa-tencent-weibo"></i></a></li>
							<li><a href="#" title="新浪微博"><i class="fa fa-weibo"></i></a></li>
							<li><a href="#" title="分享"><i class="fa fa-bicycle"></i></a></li>
					</ul>
				</aside><!-- Widget About /- -->
				<!-- Widget Links -->
				<aside class="col-md-2 col-sm-6 col-xs-6 ftr-widget widget_links">
					<h3 class="widget-title">最新流行风</h3>
					<ul>
						<li><a href="#product-section" title="最新流行风">最新流行风</a></li>
							<li><a href="#selling" title="畅销款">畅销款</a></li>
							<li><a href="about.jsp" title="关于我们">关于我们</a></li>
							<li><a href="#dealing" title="今日爆款">今日爆款</a></li>
							<li><a href="#collection" title="产品收藏">产品收藏</a></li>
							<li><a href="contact-us.jsp" title="联系我们">联系我们</a></li>
						</ul>
					</aside><!-- Widget Links /- -->
					<!-- Widget Account -->
					<aside class="col-md-3 col-sm-6 col-xs-6 ftr-widget widget_links widget_account">
						<h3 class="widget-title">我的账户</h3>
						<ul>
							<li><a href="#" title="我的订单">我的订单</a></li>
							<li><a href="#" title="我的信用">我的信用</a></li>
							<li><a href="#" title="我的地址">我的地址</a></li>
							<li><a href="#" title="我的个人资料">我的个人资料</a></li>
							<li><a href="#" title="我的账户">我的账户</a></li>
						</ul>
				</aside><!-- Widget Account /- -->
				<!-- Widget Gallery -->
				<aside class="col-md-4 col-sm-6 col-xs-6 ftr-widget widget_gallery">
					<h3 class="widget-title">collections</h3>
					<ul>
						<li><a href="#" title=""><img src="images/ftr-latestpost-1.jpg" alt="ftr-latestpost"></a></li>
						<li><a href="#" title=""><img src="images/ftr-latestpost-2.jpg" alt="ftr-latestpost"></a></li>
						<li><a href="#" title=""><img src="images/ftr-latestpost-3.jpg" alt="ftr-latestpost"></a></li>
						<li><a href="#" title=""><img src="images/ftr-latestpost-4.jpg" alt="ftr-latestpost"></a></li>
						<li><a href="#" title=""><img src="images/ftr-latestpost-5.jpg" alt="ftr-latestpost"></a></li>
						<li><a href="#" title=""><img src="images/ftr-latestpost-6.jpg" alt="ftr-latestpost"></a></li>
					</ul>
				</aside><!-- Widget Gallery -->
				<div class="copyright-section">
					<div class="coyright-content">
						<p>Copyright &copy; 版权(2007)公司名称保留所有权利。<a href="http://www.baidu.com/" target="_blank" title="百度">百度</a>----<a href="http://www.qq.com/" title="腾讯" target="_blank">腾讯</a></p>
					</div>	
					<ul>
						<li><a href="#" title="快递信息">快递信息</a></li>
						<li><a href="#" title="隐私政策">隐私政策</a></li>
						<li><a href="#" title="条款和条件">条款和条件</a></li>
					</ul>
				</div>
			</div><!-- Container /- -->
		</footer><!-- Footer Main 1 -->

	</div>
	
	<!-- JQuery v1.12.4 -->
	<script src="js/jquery.min.js"></script>

	<!-- Library - Js -->
	<script src="libraries/lib.js"></script>
	
	<script src="libraries/jquery.countdown.min.js"></script>
	
	<!-- RS5.0 Core JS Files -->
	<script type="text/javascript" src="revolution/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
	<script type="text/javascript" src="revolution/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	
	<!-- Library - Google Map API -->
	<!---<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDW40y4kdsjsz714OVTvrw7woVCpD8EbLE"></script>--->

	<!-- Library - Theme JS -->
	<script src="js/functions.js"></script>
	
</body>
</html>
	

