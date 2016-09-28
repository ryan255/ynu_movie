<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>社区——${user.user_name}</title>

<!--css-->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/menu.css" />

<!--js-->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
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

							<li class="w3_megamenu-fw"><a href="movies">电影排期<b
									class="caret"></b></a></li>
							<li class="active"><a href="#">个人中心<b class="caret"></b></a>
							</li>
						</ul>
					</div>

				</nav>
			</div>
			<!--end of nav-->






			<div class="about-section">

				<div class="tabs-box">
					<ul class="tabs-menu">
						<li><a href="#tab1"><span> </span>我的订单</a></li>
						<li><a href="#tab2"><span> </span>我的信息</a></li>
						<li><a href="#tab3"><span> </span>账户充值</a></li>
					</ul>
					<div class="clearfix"></div>
					<div class="tab-grids">
						<div id="tab1" class="tab-grid">
							<h5>我的订单</h5>
							${none} 
						
							<div class="about-grids">
								<div class="about-bottom-grids">

									<c:forEach items="${orders }" var="orders">
										<div class="col-sm-6 ">
											<div class="about-left-grids">
												<div class="col-md-2 about-left-img">
													<i class="fa fa-clock-o"></i>
												</div>
												<div class="col-md-10 about-left-info">
													<c:forEach items="${prices }" var="prices">
														<c:if test="${orders.idPrice == prices.idPrice }">
															<c:forEach items="${plays }" var="plays">
																<c:if test="${plays.idPlay == prices.idPlay1}">


																	<c:forEach items="${films }" var="films">
																		<c:if test="${films.idFilm==plays.idFilm }">

																			<a href="#">${films.f_name }</a>
																		</c:if>
																	</c:forEach>
																	<c:forEach items="${studios }" var="studios">
																		<c:if test="${plays.idStudio == studios.idStudio}">
																			<p>${studios.studio_name }
																		</c:if>
																	</c:forEach>

																</c:if>
															</c:forEach>
															<c:forEach items="${auditoriums }" var="auditoriums">
																<c:if
																	test="${auditoriums.idAuditorium == prices.idAuditorium1}">
																			${auditoriums.auditorium_num }厅</p>
																</c:if>
															</c:forEach>
															<p>场次：${prices.price_screens}</p>
															<p>票价：￥${prices.prices}/张</p>
															<p>总价：￥${orders.order_total}</p>

														</c:if>
													</c:forEach>
													<p>
														座次：
														<c:forEach items="${orderseats }" var="orderseats">
															<c:if
																test="${orderseats.fk_orderSeat_idOrder==orders.idOrder }">

																<c:forEach items="${seats}" var="seats">
																	<c:if
																		test="${orderseats.fk_orderSeat_idSeat==seats.idSeat }">
																	${seats.seat_order }
																</c:if>
																</c:forEach>

															</c:if>
														</c:forEach>
													</p>
													<p>
														订单状态： <span style="color: red"> <c:if
																test="${orders.order_state==2}">已支付</c:if> <c:if
																test="${orders.order_state==1}">未支付</c:if>
														</span>
													</p>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>

									</c:forEach>






									<div class="clearfix"></div>
								</div>

							</div>
						</div>
						<div id="tab2" class="tab-grid">
							<h5>我的信息</h5>

							<ul class="list-group col-sm-6 col-sm-offset-3">
								<li class="list-group-item"><span class="label label-info">用户名：</span>
									&nbsp; &nbsp; &nbsp;${user.user_name }</li>
								<li class="list-group-item"><span class="label label-info">性&nbsp;&nbsp;别：</span>
									&nbsp; &nbsp; &nbsp;${user.usersex }</li>
								<li class="list-group-item"><span class="label label-info">手&nbsp;&nbsp;机：</span>
									&nbsp; &nbsp; &nbsp;${user.user_phone }</li>
								<li class="list-group-item"><span class="label label-info">余&nbsp;&nbsp;额：</span>
									&nbsp; &nbsp; &nbsp;${user.account }</li>

							</ul>
						</div>
						<div id="tab3" class="tab-grid">
							<h5>账户充值</h5>
							<form action="updateUser" method="get">
								<ul class="list-group col-sm-6 col-sm-offset-3">
									<li class="list-group-item"><span class="label label-info">充值金额：</span>
										&nbsp; &nbsp; &nbsp;<input name="total" type="number">
										<input style="display:none" name="idUser" value="${user.idUser}" /> 
										<input style="display:none" name="state" value="3" /> 
										<input style="display:none" name="idOrder2" value="0" />

										<button type="submit" class="btn btn-infor">确定</button></li>


								</ul>
							</form>
						</div>
						<div id="tab4" class="tab-grid">
							<div class="tb-one">
								<h3>Lorem ipsum dolor sit amet</h3>
								<p>Nulla tincidunt adipiscing aliquet. Suspendisse vitae mi
									at diam tempus imperdiet. Aliquam erat volutpat. Duis pharetra
									nibh sit amet augue porta, quis mattis massa aliquet. Morbi in
									consectetur ipsum rhoncus risus. Pellentesque quam felis,
									vulte. Aliquam erat volutpat. Curabitur varius gravida
									bibendum.</p>
							</div>
							<div class="tb-one">
								<h3>Proin tincidunt id dui et ullamcorper</h3>
								<p>In hac habitasse platea dictumst. Etiam tincidunt
									vulputate feugiat. Ut nulla libero, bibendum sed mauris in,
									faucibus tincidunt arcu. Praesent lobortis pretium nibh a
									faucibus. Vivamus ac nibh convallis, euismod velit ac, feugiat
									magna. Vivamus nunc purus, ornare eget ante eget, luctus
									convallis magna. Ut augue elit, pellentesque in nisi sit amet,
									sodales convallis sapien. Proin imperdiet orci vitae vehicula
									convallis. In sit amet adipiscing nisi. Pellentesque et nibh
									volutpat, dignissim enim quis, mattis ipsum. Integer molestie
									id purus sed tempor. Sed mollis iaculis odio, nec tincidunt
									odio. Cum sociis natoque penatibus et magnis dis parturient
									montes, nascetur ridiculus mus. Integer in nisi nulla. Vivamus
									placerat ligula libero, vitae gravida lectus facilisis et.</p>
							</div>
							<div class="tb-one">
								<h3>Integer eleifend facilisis arcu sit amet consequat</h3>
								<p>Aenean gravida enim ut diam pulvinar, in imperdiet felis
									consectetur. Cras arcu diam, ullamcorper ultricies faucibus
									vel, aliquet eget lacus. Aenean quis adipiscing orci. Nulla non
									aliquet nibh. Maecenas et est sodales, scelerisque mi in,
									tincidunt mauris. Donec sem metus, tincidunt vel luctus quis,
									scelerisque tempus ante. Praesent quis diam sollicitudin,
									eleifend ipsum ac, imperdiet dui. Nulla lobortis at nulla
									laoreet ultrices.</p>
							</div>
							<div class="tb-one">
								<h3>Apply for this position:</h3>
								<div class="tb-two">
									<input type="text" value="Name" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Name';}">
									<input type="text" value="Website" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Website';}">
									<input type="text" value="Email" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Email';}">
									<input type="text" value="Phone" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Phone';}">
									<textarea value="Message:" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
									<div class="t-btn">
										<form>
											<input type="submit" value="SEND MESSAGE">
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="clearfix"></div>
				</div>
				<!--start-carrer-->
				<!----- Comman-js-files ----->
				<script>
					$(document).ready(function() {
						$("#tab2").hide();
						$("#tab3").hide();
						$("#tab4").hide();
						$(".tabs-menu a").click(function(event) {
							event.preventDefault();
							var tab = $(this).attr("href");
							$(".tab-grid").not(tab).css("display", "none");
							$(tab).fadeIn("slow");
						});
					});
				</script>
			</div>





		</div>


	</div>
	<!---主体结束-->
	<div class="copy-rights text-center">
		<p>Copyright &copy; 2016 &nbsp;School of software</p>
	</div>


</body>
</html>