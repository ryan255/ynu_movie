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
<meta name="keywords"
	content="My Show Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<title>${film_infor.f_name}</title>

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


			

			<!--影片选择-->
			<div class="now-showing-list">
				<div class="col-md-4 movies-by-category movie-booking">
					<div class="movie-ticket-book">
						<input type="checkbox" id="c1" name="cc"> <label
							class="lang">Hide Unavailable Shows</label>
						<div class="clearfix"></div>
						<img src="resource/images/${film_infor.f_cover_s }" alt="" />
						<div class="bahubali-details">
							<h4>电影名称:</h4>
							<p>${film_infor.f_name }</p>
							<h4>上映日期:</h4>
							<p>${film_infor.f_ontime }</p>
							<h4>Duration:</h4>
							<p>${film_infor.f_time }</p>
							<h4>Director:</h4>
							<p>${film_infor.f_director }</p>
							<h4>Language:</h4>
							<p>${film_infor.f_country }</p>
							<h4>Genre:</h4>
							<p>${classe }</p>
							<h4>Cast & Crew:</h4>
							<p>${film_infor.f_introduce }</p>
						</div>
					</div>
				</div>
				<div class="col-md-8 movies-dates">
					<c:forEach var="studios" items="${film_infor.studios}">

						<div class="movie-date-selection">
							<ul>
								<li class="location"><a href="pic-a-movie.html"> <i
										class="fa fa-map-marker"></i>${studios.studio_name}</a>


									<button type="button" class="btn btn-primary"
										style="float: right; margin-left: 20px;" data-toggle="modal"
										data-target="#${studios.idStudio}">选座购票</button></li>
								<li class="time" style="width: 100%; text-align: left">地址：${studios.studio_address}</li>
								</br>
								</br> 场次：
								<c:forEach items="${film_infor.plays}" var="plays">
									<c:if test="${studios.idStudio==plays.idStudio}">
										<c:forEach items="${film_infor.prices}" var="prices">
											<c:if test="${prices.idPlay1==plays.idPlay }">
												<li class="time"><a href="movie-payment.html">${prices.price_screens }</a></li>
											</c:if>
										</c:forEach>
									</c:if>
								</c:forEach>
							</ul>
						</div>

						<div class="modal fade" id="${studios.idStudio}" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">
											<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">${studios.studio_name}</h4>
									</div>
									<div class="modal-body">
										<table class="table table-striped">

											<tr>
												<td style=" text-align: center">放映时间</td>
												<td>语言版本</td>
												<td>放映厅</td>
												<td>售价</td>
												<td>在线选座</td>

											</tr>
											</br>
											<c:forEach items="${film_infor.plays}" var="plays">
												<c:if test="${studios.idStudio==plays.idStudio}">
													<c:forEach items="${film_infor.prices}" var="prices">
														<c:if test="${prices.idPlay1==plays.idPlay }">

															<tr>
																<td 
																	style=" text-align: center">${prices.price_screens }</td>
																<c:forEach items="${film_infor.editions }"
																	var="editions">
																	<c:if test="${prices.idEdition1==editions.idEdition }">
																		<td>${editions.edition_name }</td>
																	</c:if>
																</c:forEach>
																<c:forEach items="${film_infor.auditoriums }"
																	var="auditoriums">
																	<c:if
																		test="${prices.idAuditorium1==auditoriums.idAuditorium }">
																		<td  style="padding-left: 10px;">${auditoriums.auditorium_num }</td>
																	</c:if>
																</c:forEach>
																<td style="padding-left: 10px;">￥${prices.prices }</td>
																<td style="padding-left: 10px;">
																<form action="selectseat" method="get">
																<input name="idPrice" value="${prices.idPrice}" style="display:none">
																<button type="submit" class="btn btn-primary btn-xs">选座购票</button>
																</form>
																</td>
															</tr>
														</c:if>
													</c:forEach>
												</c:if>
											</c:forEach>

											</div>

										</table>

									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">关闭</button>
										
									</div>
								</div>
							</div>
						</div>




					</c:forEach>




				</div>
				<div class="clearfix"></div>
			</div>

			<!---end of movie select-->





		</div>


	</div>
	<!---主体结束-->
	<div class="copy-rights text-center">
		<p>Copyright &copy; 2016 &nbsp;School of software</p>
	</div>


</body>
</html>