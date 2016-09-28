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

<title>Title</title>

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
	 addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } 
    function check(){
		var uname=$(user_name).val();
		var pw = $(Password1).val();
		if(uname==""||pw==""){
			alert("用户名或密码不能为空");
		}else{
			$(login).submit();
		}
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
				<a href="login.html">我是商家</a>
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

							<li class="active"><a href="#">电影排期<b class="caret"></b></a>
							</li>

<%if(request.getSession().getAttribute("userid")!=null){ %>

							<li class="w3_megamenu-fw"><a href="selectUserInforOrder?idUser=<%=request.getSession().getAttribute("userid")%>">个人中心<b
									class="caret"></b></a></li>
									<%} %>
						</ul>
					</div>

				</nav>
			</div>
			<!--end of nav-->


			

			<div class="events-section">
				<!----->
				<div class="event-slider">
					<div class="callbacks_container">
						<ul class="rslides" id="slider">
							<c:forEach var="filmOnline" items="${filmOnline}">
							
								<li><img style="height:300px;" src="resource/images/${filmOnline.f_cover_b}" alt="" />
									<div class="caption">
										<h2
											style="text-overflow: ellipsis; white-space: nowrap; overflow: hidden; heght: 60px; width: 90%">${filmOnline.f_introduce}</h2>

										<p>${filmOnline.f_name}</p>
										<a class="more" href="selectfilmByfilmName?f_name=${filmOnline.f_name}">马上订票</a>
									</div></li>
							</c:forEach>


						</ul>
					</div>
				</div>
			</div>

			<script src="js/responsiveslides.min.js"></script>
			<script>
				$(function() {
					$("#slider").responsiveSlides({
						auto : true,
						speed : 500,
						namespace : "callbacks",
						pager : true,
					});
				});
			</script>

			<!----->


			<!--电影展示-->
			<script src="js/responsive-tabs.js"></script>
			<script type="text/javascript">
				$('#myTab a').click(function(e) {
					e.preventDefault();
					$(this).tab('show');
				});

				$('#moreTabs a').click(function(e) {
					e.preventDefault();
					$(this).tab('show');
				});

				(function($) {
					// Test for making sure event are maintained
					$('.js-alert-test').click(function() {
						alert('Button Clicked: Event was maintained');
					});
					fakewaffle.responsiveTabs([ 'xs', 'sm' ]);
				})(jQuery);
			</script>
			<div class="event-page-tabs">
				<div class="grid_3 grid_5">
					<div class="bs-example bs-example-tabs" role="tabpanel"
						data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#home"
								id="home-tab" role="tab" data-toggle="tab" aria-controls="home"
								aria-expanded="true">正在热映</a></li>
							<li role="presentation"><a href="#profile" role="tab"
								id="profile-tab" data-toggle="tab" aria-controls="profile">即将上映</a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="home"
								aria-labelledby="home-tab">
								<div class="events-grids">


									<c:forEach var="filmOnline" items="${filmOnline}">
										<div class="col-md-4 event-grid">
											<a href="selectfilmByfilmName?f_name=${filmOnline.f_name}"><img style="height:150px;" src="resource/images/${filmOnline.f_cover_b}"
												alt="" /></a>
											<div class="event-info">
												<a class="m-movie-link" href="#">${filmOnline.f_name}</a> <span>${filmOnline.f_director}</span>
												<p>
												</p>
												<a class="e-green" href="#">${filmOnline.idClass}</a>
												<div class="clearfix"></div>
												<a class="buy" href="selectfilmByfilmName?f_name=${filmOnline.f_name}">购票</a>
											</div>
										</div>





									</c:forEach>


									<div class="clearfix"></div>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="profile"
								aria-labelledby="profile-tab">
								
								<c:forEach var="filmComing" items="${filmComing}">
									<div class="col-md-4 event-grid">
										<a href="event-single.html"><img style="height:150px;" src="resource/images/${filmComing.f_cover_b}"
											alt="" /></a>
										<div class="event-info">
											<a class="m-movie-link" href="#">${filmComing.f_name}</a> <span>${filmComing.f_director}</span>
											<p>
												<label>This weekend</label> 4 Jul - 5 Sep
											</p>
											<a class="e-green" href="#">${filmComing.idClass}</a>
											<div class="clearfix"></div>
											<a class="buy" href="movie-select.html">购票</a>
										</div>
									</div>
								</c:forEach>


								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<!--end of movie show-->


		</div>


	</div>
	<!---主体结束-->
	<div class="copy-rights text-center">
		<p>Copyright &copy; 2016 &nbsp;School of software</p>
	</div>


</body>
</html>