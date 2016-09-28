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
function check(){
	var uname=$(user_name).val();
	var pw = $(Password1).val();
	if(uname==""||pw==""){
		alert("用户名或密码不能为空");
	}else{
		$(login).submit();
	}
}
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
			<%
					if (request.getSession().getAttribute("success") == null) {
				%>
				<button id="login-btn" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">登录</button>

				<%
					} else {
				%>
			欢迎：	<%=request.getSession().getAttribute("success")%>
				
				<a href="logout"><button class="btn btn-primary">退出</button></a>
				<%
					}
				%>


				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myLargeModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">登录/注册</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-8"
										style="border-right: 1px dotted #C2C2C2; padding-right: 30px;">
										<!-- Nav tabs -->
										<ul class="nav nav-tabs">
											<li class="active"><a href="#Login" data-toggle="tab">登录</a></li>
											<li><a href="#Registration" data-toggle="tab">注册</a></li>
										</ul>
										<!-- Tab panes -->
										<div class="tab-content">
											<div class="tab-pane active" id="Login">
												<form id="login" role="form" class="form-horizontal"
													action="/MovieSys/logins" method="post">
													<div class="form-group">
														<label for="email" class="col-sm-2 control-label">
															用户名</label>
														<div class="col-sm-10">
															<input name="user_name" type="text" class="form-control"
																id="user_name" placeholder="用户名" />
														</div>
													</div>
													<div class="form-group">
														<label for="exampleInputPassword1"
															class="col-sm-2 control-label"> 密码</label>
														<div class="col-sm-10">
															<input name="user_pw" type="password"
																class="form-control" id="Password1"
																placeholder="密码" />
														</div>
													</div>
													</form>
													<div class="row">
														<div class="col-sm-2"></div>
														<div class="col-sm-10">
															<button onclick="check()" class="btn btn-primary btn-sm">登录</button>
															<a href="javascript:;">忘记密码?</a>
														</div>
													</div>
												
											</div>
											<div class="tab-pane" id="Registration">






												<form action="register" method="post" role="form"
													class="form-horizontal">


													<div class="form-group">
														<label for="mobile" class="col-sm-2 control-label">
															手机</label>
														<div class="col-sm-10">
															<input name="user_phone" class="form-control" id="mobile"
																placeholder="手机号" />
														</div>
													</div>
													<div class="form-group">
														<label for="password" class="col-sm-2 control-label">
															密码</label>
														<div class="col-sm-10">
															<input name="user_pw" type="password"
																class="form-control" id="password" placeholder="密码" />
														</div>
													</div>
													<div class="row">
														<div class="col-sm-2"></div>
														<div class="col-sm-10">
															<button type="submit" class="btn btn-primary btn-sm">
																确定</button>
															<button type="reset" class="btn btn-default btn-sm">
																取消</button>
														</div>
													</div>
												</form>
											</div>
										</div>
										<div id="OR" class="hidden-xs">OR</div>
									</div>
									<div class="col-md-4">
										<div class="row text-center sign-with">
											<div class="col-md-12">
												<h3 class="other-nw">Sign in with</h3>
											</div>
											<div class="col-md-12">
												<div class="btn-group btn-group-justified">
													<a href="#" class="btn btn-primary">QQ</a> <a href="#"
														class="btn btn-danger"> 微博</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
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
								href="home">首页</a></li>

							<li class="active"><a href="movies.html">电影排期<b
									class="caret"></b></a></li>

<%if(request.getSession().getAttribute("userid")!=null){ %>

							<li class="w3_megamenu-fw"><a href="selectUserInforOrder?idUser=<%=request.getSession().getAttribute("userid")%>">个人中心<b
									class="caret"></b></a></li>
									<%} %>
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
					<form id="orderInsert" action="orderInsert" method="post">
							
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
									影厅: <span>${auditorium}厅</span>
								</p>
								<p>
									版本: <span>${edition}</span>
								</p>
								<p>
									场次: <span> ${screen}</span>
								</p>
								<p>
									票价: <span>￥${price}/张</span>
									<input style="display:none" value="${price}" name="price">
									<input style="display:none" value="${pid}" name="pid">
									<input style="display:none" value="${aid}" name="aid">
								</p>
								<p>座位：</p>
								<ul id="selected-seats"></ul>
								<p>
									票数：<input id="counter" value="0" name="counter"
										class="btn btn-warning">
								</p>
								<p>
									总计：<b>￥<input id="total" value="0" name="total"
										class="btn btn-warning" /></b>
								</p>
								<p>
									<input style="display:none" id="pay" value="1" name="state">
									<input style="display:none" id="seatList" value="0" name="seatList">
								</p>
								<p>
									<input style="display:none" name="uid"
										value="<%=request.getSession().getAttribute("userid")%>" />
								</p>
								</br> </br>
								</form>
                                <%
									if (request.getSession().getAttribute("success") == null) {
								%>
								<button id="login-btn2" class="btn btn-primary checkout-button"
									data-toggle="modal" data-target="#myModal">确认购买</button>
								<%
									} else {
								%>
								<button class="btn btn-primary checkout-button"
									onclick="order()">确认购买</button>
								<%
									}
								%>
								
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
																	'<input class="btn btn-success btn-xs" style="width:80px;height:40px;margin:5px;" name="seatselect"/>')
																	.val(
																			(this.settings.row + 1)
																					+ '排'
																					+ this.settings.label
																					+ '座')
																	.attr(
																			'id',
																			this.settings.id)
																	.data(
																			'seatId',
																			this.settings.id)
																	.appendTo($cart);

																	$counter
																			.val(sc
																					.find('selected').length + 1);
																	$total
																			.val(recalculateTotal(sc)
																					+ price);

																	return 'selected';
																} else if (this
																		.status() == 'selected') { //已选中
																	//更新数量
																	$counter
																			.val(sc
																					.find('selected').length - 1);
																	//更新总计
																	$total
																			.val(recalculateTotal(sc)
																					- price);

																	//删除已预订座位
																	$(
																			'#'
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

<script>
									function order() {
										var payment = confirm("订单提交成功，立即支付");
										if (payment == true) {
											$(pay).val("2");
											var valArr = new Array;
										    $("input[name='seatselect']").each(function (i) {
										    	valArr = valArr+$(this).attr("id")+";";
									    });
										   $(seatList).val(valArr);
										   $(orderInsert).submit();
										} else {
											$(pay).val("1");
											var valArr="";
										    $("input[name='seatselect']").each(function (i) {
										        valArr = valArr+$(this).attr("id")+";";
										        alert(valArr);
										    });
											   $(seatList).val(valArr);
											   $(orderInsert).submit();
											 
										}
									}
									 
								</script>


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