<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Title</title>

<!--css-->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css"
	media="all" />
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

<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#horizontalTab').easyResponsiveTabs({
			type : 'default', //Types: default, vertical, accordion
			width : 'auto', //auto or any width like 600px
			fit : true
		// 100% fit in a container
		});
	});
</script>

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
				<%=request.getSession().getAttribute("success")%>
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
								<h4 class="modal-title" id="myModalLabel">登录</h4>
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
												<form role="form" class="form-horizontal"
													action="/MovieSys/logins" method="post">
													<div class="form-group">
														<label for="email" class="col-sm-2 control-label">
															用户名</label>
														<div class="col-sm-10">
															<input name="user_name" type="text" class="form-control"
																id="email1" placeholder="用户名" />
														</div>
													</div>
													<div class="form-group">
														<label for="exampleInputPassword1"
															class="col-sm-2 control-label"> 密码</label>
														<div class="col-sm-10">
															<input name="user_pw" type="password"
																class="form-control" id="exampleInputPassword1"
																placeholder="密码" />
														</div>
													</div>
													<div class="row">
														<div class="col-sm-2"></div>
														<div class="col-sm-10">
															<button type="submit" class="btn btn-primary btn-sm">登录</button>
															<a href="javascript:;">忘记密码?</a>
														</div>
													</div>
												</form>
											</div>
											<div class="tab-pane" id="Registration">
												<form role="form" class="form-horizontal">
													<div class="form-group">
														<label for="email" class="col-sm-2 control-label">
															用户名</label>
														<div class="col-sm-10">
															<div class="row">
																<div class="col-md-3">
																	<select class="form-control">
																		<option>Mr.</option>
																		<option>Ms.</option>
																		<option>Mrs.</option>
																	</select>
																</div>
																<div class="col-md-9">
																	<input type="text" class="form-control"
																		placeholder="Name" />
																</div>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label for="email" class="col-sm-2 control-label">
															邮箱</label>
														<div class="col-sm-10">
															<input type="email" class="form-control" id="email"
																placeholder="Email" />
														</div>
													</div>
													<div class="form-group">
														<label for="mobile" class="col-sm-2 control-label">
															手机</label>
														<div class="col-sm-10">
															<input type="email" class="form-control" id="mobile"
																placeholder="Mobile" />
														</div>
													</div>
													<div class="form-group">
														<label for="password" class="col-sm-2 control-label">
															密码</label>
														<div class="col-sm-10">
															<input type="password" class="form-control" id="password"
																placeholder="Password" />
														</div>
													</div>
													<div class="row">
														<div class="col-sm-2"></div>
														<div class="col-sm-10">
															<button type="button" class="btn btn-primary btn-sm">
																确定</button>
															<button type="button" class="btn btn-default btn-sm">
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

							<li class="active" style="margin-left: 60px;"><a href="#">首页</a>
							</li>

							<li class="w3_megamenu-fw"><a href="movies.html">电影排期<b
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

			<!--展示及快捷购票-->
			<div class="main-banner">
				<div class="banner col-md-8">
					<section class="slider">
						<div class="flexslider">
							<ul class="slides">
								<li><img src="resource/images/pic1.jpg"
									class="img-responsive" alt="" /></li>
								<li><img src="resource/images/pic2.jpg"
									class="img-responsive" alt="" /></li>
								<li><img src="resource/images/pic3.jpg"
									class="img-responsive" alt="" /></li>
								<li><img src="resource/images/pic4.jpg"
									class="img-responsive" alt="" /></li>
							</ul>
						</div>
					</section>
					<!-- FlexSlider -->
					<script defer src="js/jquery.flexslider.js"></script>
					<link rel="stylesheet" href="css/flexslider.css"
						type="text/css" media="screen" />
					<script type="text/javascript">
						$(function() {
							SyntaxHighlighter.all();
						});
						$(window).load(function() {
							$('.flexslider').flexslider({
								animation : "slide",
								start : function(slider) {
									$('body').removeClass('loading');
								}
							});
						});
					</script>
				</div>

				<div class="col-md-4 banner-right">
					<h4 style="color: #5e5e5e">马上购票</h4>
					<div class="grid_3 grid_5">
						<form action="">
							<ul>
								<li>选择电影：<select class="list_of_movies" name="" id=""></select></li>
								<li>选择影城：<select class="list_of_movies" name="" id=""></select></li>
								<li>选择时间：<select class="list_of_movies" name="" id=""></select></li>

							</ul>
							<input type="submit" value="查询" class="btn btn-primary"
								style="width: 100px; margin-left: 90px; margin-top: 30px;">
						</form>
					</div>

				</div>

			</div>
			<!--end of show&buy-->
			
			
			<c:forEach var="filmOnline" items="${filmOnline}">
							<h4>${filmOnline.f_name}</h4>
							<h5>${filmOnline.f_time}</h5>
							<h6>${filmOnline.f_country}</h6>
					</c:forEach>
			

			<!--向左滑动展示-->
			<div class="review-slider col-md-12">
				<ul id="flexiselDemo1">

				

					



					<li><a href="movies,html"> <img
							src="resource/images/r1.jpg" alt="">
					</a>
						<div class="slide-title">
							<h4>123</h4>
						</div>
						<div class="date-city">
							<h5>时间</h5>
							<h6>城市</h6>
							<div class="buy-tickets">
								<a href="movie-select-show.html">购票</a>
							</div>
						</div></li>

					<li><a href="movies,html"> <img
							src="resource/images/r2.jpg" alt="">
					</a>
						<div class="slide-title">
							<h4>123</h4>
						</div>
						<div class="date-city">
							<h5>时间</h5>
							<h6>城市</h6>
							<div class="buy-tickets">
								<a href="movie-select-show.html">购票</a>
							</div>
						</div></li>

					<li><a href="movies,html"> <img
							src="resource/images/r3.jpg" alt="">
					</a>
						<div class="slide-title">
							<h4>123</h4>
						</div>
						<div class="date-city">
							<h5>时间</h5>
							<h6>城市</h6>
							<div class="buy-tickets">
								<a href="movie-select-show.html">购票</a>
							</div>
						</div></li>

					<li><a href="movies,html"> <img
							src="resource/images/r4.jpg" alt="">
					</a>
						<div class="slide-title">
							<h4>123</h4>
						</div>
						<div class="date-city">
							<h5>时间</h5>
							<h6>城市</h6>
							<div class="buy-tickets">
								<a href="movie-select-show.html">购票</a>
							</div>
						</div></li>

					<li><a href="movies,html"> <img
							src="resource/images/r5.jpg" alt="">
					</a>
						<div class="slide-title">
							<h4>123</h4>
						</div>
						<div class="date-city">
							<h5>时间</h5>
							<h6>城市</h6>
							<div class="buy-tickets">
								<a href="movie-select-show.html">购票</a>
							</div>
						</div></li>

					<li><a href="movies,html"> <img
							src="resource/images/r6.jpg" alt="">
					</a>
						<div class="slide-title">
							<h4>123</h4>
						</div>
						<div class="date-city">
							<h5>时间</h5>
							<h6>城市</h6>
							<div class="buy-tickets">
								<a href="movie-select-show.html">购票</a>
							</div>
						</div></li>
				</ul>
				<script type="text/javascript">
					$(window).load(function() {

						$("#flexiselDemo1").flexisel({
							visibleItems : 5,
							animationSpeed : 1000,
							autoPlay : true,
							autoPlaySpeed : 3000,
							pauseOnHover : false,
							enableResponsiveBreakpoints : true,
							responsiveBreakpoints : {
								portrait : {
									changePoint : 480,
									visibleItems : 2
								},
								landscape : {
									changePoint : 640,
									visibleItems : 3
								},
								tablet : {
									changePoint : 800,
									visibleItems : 4
								}
							}
						});
					});
				</script>
				<script type="text/javascript" src="js/jquery.flexisel.js"></script>
			</div>
			<!--向左滑动展示结束-->

			<div class="footer-top-grid">
				<div class="list-of-movies col-md-8">
					<div class="tabs">
						<div class="sap_tabs">
							<div id="horizontalTab"
								style="display: block; width: 100%; margin: 0px;">
								<ul class="resp-tabs-list">
									<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>正在热映</span></li>
									<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>一周内上映</span></li>
									<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>马上上映</span></li>
									<div class="clearfix"></div>
								</ul>
								<div class="resp-tabs-container">
									<div class="tab-1 resp-tab-content"
										aria-labelledby="tab_item-0">
										<ul class="tab_img">
											<li>
												<div class="view view-first">
													<a href="movie-select-show.html"> <img
														src="resource/images/pic-1.jpg" class="img-responsive"
														alt="" /></a>
													<div class="info1"></div>
													<div class="mask"></div>
													<div class="tab_desc">
														<a href="movie-select-show.html">马上订购</a>
														<div class="percentage-w-t-s">
															<h5>97</h5>
															<p>
																% <br> Want to see
															</p>
															<div class="clearfix"></div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="view view-first">
													<a href="movie-select-show.html"><img
														src="resource/images/pic-2.jpg" class="img-responsive"
														alt="" /></a>
													<div class="info1"></div>
													<div class="mask"></div>
													<div class="tab_desc">
														<a href="movie-select-show.html">马上订购</a>
														<div class="percentage-w-t-s">
															<h5>98</h5>
															<p>
																% <br> Want to see
															</p>
															<div class="clearfix"></div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="view view-first">
													<a href="movie-select-show.html"><img
														src="resource/images/pic-10.jpg" class="img-responsive"
														alt="" /></a>
													<div class="mask">
														<div class="info1"></div>
													</div>
													<div class="tab_desc">
														<a href="movie-select-show.html">马上订购</a>
														<div class="percentage-w-t-s">
															<h5>100</h5>
															<p>
																% <br> Want to see
															</p>
															<div class="clearfix"></div>
														</div>
													</div>
												</div>
											</li>
											<div class="clearfix"></div>
										</ul>
									</div>
									<div class="tab-1 resp-tab-content"
										aria-labelledby="tab_item-1">
										<ul class="tab_img">
											<li>
												<div class="view view-first">
													<a href="movie-select-show.html"><img
														src="resource/images/pic-8.jpg" class="img-responsive"
														alt="" /></a>
													<div class="mask">
														<div class="info1"></div>
													</div>
													<div class="tab_desc">
														<a href="movie-select-show.html">马上订购</a>
														<div class="percentage-w-t-s">
															<h5>92</h5>
															<p>
																% <br> Want to see
															</p>
															<div class="clearfix"></div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="view view-first">
													<a href="movie-select-show.html"> <img
														src="resource/images/pic-3.jpg" class="img-responsive"
														alt="" /></a>
													<div class="mask">
														<div class="info1"></div>
													</div>
													<div class="tab_desc">
														<a href="movie-select-show.html">马上订购</a>
														<div class="percentage-w-t-s">
															<h5>100</h5>
															<p>
																% <br> Want to see
															</p>
															<div class="clearfix"></div>
														</div>
													</div>
												</div>
											</li>
											<li class="last">
												<div class="view view-first">
													<a href="movie-select-show.html"><img
														src="resource/images/pic-9.jpg" class="img-responsive"
														alt="" /></a>
													<div class="mask">
														<div class="info1"></div>
													</div>
													<div class="tab_desc">
														<a href="movie-select-show.html">马上订购</a>
														<div class="percentage-w-t-s">
															<h5>74</h5>
															<p>
																% <br> Want to see
															</p>
															<div class="clearfix"></div>
														</div>
													</div>
												</div>
											</li>
											<div class="clearfix"></div>
										</ul>
									</div>
									<div class="tab-1 resp-tab-content"
										aria-labelledby="tab_item-2">
										<ul class="tab_img">
											<li>
												<div class="view view-first">
													<a href="movie-select-show.html"> <img
														src="resource/images/pic-4.jpg" class="img-responsive"
														alt="" /></a>
													<div class="mask">
														<div class="info1"></div>
													</div>
													<div class="tab_desc">
														<a href="movie-select-show.html">马上订购</a>
														<div class="percentage-w-t-s">
															<h5>88</h5>
															<p>
																% <br> Want to see
															</p>
															<div class="clearfix"></div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="view view-first">
													<a href="movie-select-show.html"> <img
														src="resource/images/pic-12.jpg" class="img-responsive"
														alt="" /></a>
													<div class="mask">
														<div class="info1"></div>
													</div>
													<div class="tab_desc">
														<a href="movie-select-show.html">马上订购</a>
														<div class="percentage-w-t-s">
															<h5>100</h5>
															<p>
																% <br> Want to see
															</p>
															<div class="clearfix"></div>
														</div>
													</div>
												</div>
											</li>
											<li class="last">
												<div class="view view-first">
													<a href="movie-select-show.html"><img
														src="resource/images/pic-5.jpg" class="img-responsive"
														alt="" /></a>
													<div class="mask">
														<div class="info1"></div>
													</div>
													<div class="tab_desc">
														<a href="movie-select-show.html">马上订购</a>
														<div class="percentage-w-t-s">
															<h5>90</h5>
															<p>
																% <br> Want to see
															</p>
															<div class="clearfix"></div>
														</div>
													</div>
												</div>
											</li>
											<div class="clearfix"></div>
										</ul>
									</div>
									<div class="tab-1 resp-tab-content"
										aria-labelledby="tab_item-3">
										<ul class="tab_img">
											<li>
												<div class="view view-first">
													<a href="movie-select-show.html"> <img
														src="resource/images/pic-6.jpg" class="img-responsive"
														alt="" /></a>
													<div class="mask">
														<div class="info1"></div>
													</div>
													<div class="tab_desc">
														<a href="movie-select-show.html">马上订购</a>
													</div>
												</div>
											</li>
											<li>
												<div class="view view-first">
													<a href="movie-select-show.html"> <img
														src="resource/images/pic-1.jpg" class="img-responsive"
														alt="" /></a>
													<div class="mask">
														<div class="info1"></div>
													</div>
													<div class="tab_desc">
														<a href="movie-select-show.html">马上订购</a>
													</div>
												</div>
											</li>
											<li>
												<div class="view view-first">
													<a href="movie-select-show.html"> <img
														src="resource/images/pic-9.jpg" class="img-responsive"
														alt="" /></a>
													<div class="mask">
														<div class="info1"></div>
													</div>
													<div class="tab_desc">
														<a href="movie-select-show.html">马上订购</a>
													</div>
												</div>
											</li>
											<div class="clearfix"></div>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="right-side-bar">
					<div class="top-movies-in-india">
						<h4>热销排行</h4>
						<ul class="mov_list">
							<li><i class="fa fa-star"></i></li>
							<li>77%</li>
							<li><a href="movie-single.html">Jurassic World (3D)
									(U/A)</a></li>
						</ul>
						<ul class="mov_list">
							<li><i class="fa fa-star"></i></li>
							<li>80%</li>
							<li><a href="movie-single.html">Jurassic World (3D
									Hindi) (U/A)</a></li>
						</ul>
						<ul class="mov_list">
							<li><i class="fa fa-star"></i></li>
							<li>69%</li>
							<li><a href="movie-single.html">Dil Dhadakne Do (U/A)</a></li>
						</ul>
						<ul class="mov_list">
							<li><i class="fa fa-star"></i></li>
							<li>65%</li>
							<li><a href="movie-single.html">Hamari Adhuri Kahani (U)</a></li>
						</ul>
						<ul class="mov_list">
							<li><i class="fa fa-star"></i></li>
							<li>83%</li>
							<li><a href="movie-single.html">Premam (U)</a></li>
						</ul>
						<ul class="mov_list">
							<li><i class="fa fa-star"></i></li>
							<li>87%</li>
							<li><a href="movie-single.html">Tanu Weds Manu Returns
									(U/A)</a></li>
						</ul>
						<ul class="mov_list">
							<li><i class="fa fa-star"></i></li>
							<li>71%</li>
							<li><a href="movie-single.html">Romeo Juliet (U)</a></li>
						</ul>
						<ul class="mov_list">
							<li><i class="fa fa-star"></i></li>
							<li>81%</li>
							<li><a href="movie-single.html">Jurassic World (IMAX 3D)
									(U/A)</a></li>
						</ul>
						<ul class="mov_list">
							<li><i class="fa fa-star"></i></li>
							<li>80%</li>
							<li><a href="movie-single.html">Jurassic World (2D
									Hindi) (U/A)</a></li>
						</ul>
						<ul class="mov_list">
							<li><i class="fa fa-star"></i></li>
							<li>89%</li>
							<li><a href="movie-single.html">Kaaka Muttai (U)</a></li>
						</ul>
					</div>


				</div>
				<div class="clearfix"></div>
			</div>

		</div>


	</div>
	<!---主体结束-->
	<div class="copy-rights text-center">
		<p>Copyright &copy; 2016 &nbsp;School of software</p>
	</div>
</body>
</html>