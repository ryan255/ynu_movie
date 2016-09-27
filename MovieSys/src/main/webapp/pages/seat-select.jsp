<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="My Show Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<title>${film_infor.f_name}-${studio}</title>

<!--css-->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/seat.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/menu.css" />

<!--js-->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.seat-charts.min.js"></script>
<script type="application/x-javascript">
	
	 addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } 

</script>
<script type="text/javascript" src="js/megamenu.js"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1200);
		});
	});
</script>
</head>
</head>
<body>
	<!--网页顶部-->
	<div class="header-top-strip">
		<div class="container">
			<div class="header-top-left">
				<a href="#">网站说明</a> | <a href="#">所在城市</a>
			</div>
			<div class="header-top-right">
				<a href="#">我是商家</a>
				<button class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">登录</button>
			</div>
		</div>
	</div>
	<!--顶部结束-->

	<!--网页主体-->
	<div class="container">
		<div class="main-content">
			<!--logo-->
			<div class="header">
				<div class="logo">
					<a href="#"><h1>电影秀</h1></a>
				</div>
				<div class="search">
					<div class="search2">
						<form>
							<i class="fa fa-search"></i> <input type="text"
								value="Search for a movie, play, event, sport or more"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Search for a movie, play, event, sport or more';}" />
						</form>
					</div>
				</div>
			</div>
			<!--end of logo-->

			<!--导航栏-->
			<div class="bootstrap_container" style="margin-top: 40px">
				<nav class="navbar navbar-default w3_megamenu" role="navigation">


					<div id="defaultmenu" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">

							<li class="w3_megamenu-fw" style="margin-left: 60px;"><a
								href="index.html">首页</a></li>

							<li class="active"><a href="movies.html">电影排期<b
									class="caret"></b></a></li>

							<li class="w3_megamenu-fw"><a href="activities.html">促销活动<b
									class="caret"></b></a></li>

							<li class="w3_megamenu-fw"><a href="message.html">电影影评<b
									class="caret"></b></a></li>
						</ul>
					</div>

				</nav>
			</div>
			<!--end of nav-->

			<!--选座购票-->
			<div class="e-payment-section">
				<div id="legend" class="col-sm-10" style="margin:20px"> </div>
			
				<div class="col-sm-10 col-sm-offset-1">
					<div id="main">
						<div class="demo">

						
							<div id="seat-map">
								<div class="front">屏幕</div>
							</div>
							<div class="booking-details">
								<p>
									影片：<span>${film_infor.f_name}</span>
								</p>
								<p>
									时长：<span>${film_infor.f_time}分钟</span>
								</p>
								<p>
									类型: <span>${classe}</span>
								</p>
								<p>
									影院: <span>${studio}</span>
								</p>
								<p>
									影厅: <span>${auditorium}</span>
								</p>
								<p>
									版本: <span>${edition}</span>
								</p>
								<p>
									场次: <span> ${screen}厅</span>
								</p>
								<p>
									票价: <span>${price}</span>
								</p>
								<p>座位：</p>
								<ul id="selected-seats"></ul>
								<p>
									票数：<span id="counter">0</span>
								</p>
								<p>
									总计：<b>￥<span id="total">0</span></b>
								</p>

								<button class="checkout-button">确定购买</button>

							</div>
							<div style="clear: both"></div>
						</div>
					</div>
					<br />
				</div>

				<script type="text/javascript" src="jquery.min.js"></script>
				<script type="text/javascript" src="jquery.seat-charts.min.js"></script>
				<script type="text/javascript">
					var price = ${price};
					var seat=${seat};
					var saled = ${saled};
					$(document)
							.ready(
									function() {
										var $cart = $('#selected-seats'), //座位区
										$counter = $('#counter'), //票数
										$total = $('#total'); //总计金额

										var sc = $('#seat-map')
												.seatCharts(
														{
															map : seat,
															naming : {
																top : false,
																getLabel : function(
																		character,
																		row,
																		column) {
																	return column;
																}
															},
															legend : { //定义图例
																node : $('#legend'),
																items : [
																		[
																				'a',
																				'available',
																				'可选座' ],
																		[
																				'a',
																				'unavailable',
																				'已售出' ] ]
															},
															click : function() { //点击事件
																if (this
																		.status() == 'available') { //可选座
																	$(
																			'<li>'
																					+ (this.settings.row + 1)
																					+ '排'
																					+ this.settings.label
																					+ '座</li>')
																			.attr(
																					'id',
																					'cart-item-'
																							+ this.settings.id)
																			.data(
																					'seatId',
																					this.settings.id)
																			.appendTo(
																					$cart);

																	$counter
																			.text(sc
																					.find('selected').length + 1);
																	$total
																			.text(recalculateTotal(sc)
																					+ price);

																	return 'selected';
																} else if (this
																		.status() == 'selected') { //已选中
																	//更新数量
																	$counter
																			.text(sc
																					.find('selected').length - 1);
																	//更新总计
																	$total
																			.text(recalculateTotal(sc)
																					- price);

																	//删除已预订座位
																	$(
																			'#cart-item-'
																					+ this.settings.id)
																			.remove();
																	//可选座
																	return 'available';
																} else if (this
																		.status() == 'unavailable') { //已售出
																	return 'unavailable';
																} else {
																	return this
																			.style();
																}
															}
														});
										//已售出的座位
										sc.get(saled
												).status(
												'unavailable');

									});
					//计算总金额
					function recalculateTotal(sc) {
						var total = 0;
						sc.find('selected').each(function() {
							total += price;
						});

						return total;
					}
				</script>








				<div class="col-md-4">
					<div class="payment-right">
						<h3>Ticket Summary</h3>

						>
						<h6>
							<span>电影名称:</span>${film_infor.f_name}</h6>
						<p>
							<span>时长:</span>
						</p>
						<p>
							<span>类型:</span>${classe}
						</p>
						<p>
							<span>影院:</span>${studio}
						</p>
						<p>
							<span>影厅:</span> ${auditorium}
						</p>
						<p>
							<span>版本:</span> ${edition}
						</p>
						<p>
							<span>场次:</span> ${screen}
						</p>
						<p>
							<span>票价:</span> ${price}
						</p>
						<p>
							<span>座位:</span> ${classe}
						</p>
						<h4>
							<span>总价 :</span>Rs. 150.00
						</h4>
						<p>
							<span>取票手机:</span> ${classe}
						</p>
						<p>+ (Internet handling fees : Rs. 42.00 (incl. of Service
							Tax))</p>
						<h5>Grand Total :Rs. 192.00</h5>
					</div>
					<div class="ticket-note">
						<h3>Note:</h3>
						<ol>
							<li><p>Registrations/Tickets once booked cannot be
									exchanged, cancelled or refunded.</p></li>
							<li><p>In case of Credit/Debit Card bookings, the
									Credit/Debit Card and Card holder must be present at the ticket
									counter while collecting the ticket(s).</p></li>
						</ol>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<!--end of select seat-->



		</div>


	</div>
	<!---主体结束-->
	<div class="copy-rights text-center">
		<p>Copyright &copy; 2016 &nbsp;School of software</p>
	</div>


</body>
</html>