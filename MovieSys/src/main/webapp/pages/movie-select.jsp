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
								href="home">首页</a></li>

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


			<!--快速订票-->
			<div class="m-tickets-instantly">
				<h4>快速订票</h4>
				<form action="">
					<div class="m-select-movie">
						<select class="list_of_movies" name="" id="">
							<option value="">选择电影</option>
						</select>

					</div>

					<div class="m-select-movie">
						<select class="list_of_movies" name="" id="">
							<option value="">选择电影</option>
						</select>
					</div>

					<div class="m-select-movie">
						<select class="list_of_movies" name="" id="">
							<option value="">选择日期</option>
						</select>
					</div>

					<div class="m-select-movie">
						<select class="list_of_movies" name="" id="">
							<option value="">选择场次</option>
						</select>
					</div>
					<div class="m-select-movie">
						<input style="margin-top: 7px;" type="submit"
							class="btn btn-primary" value="确定">
					</div>
				</form>

				<div class="clearfix"></div>
			</div>
			<!--end of 快速订票-->

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
							<p>${film_infor.idClass }</p>
							<h4>Cast & Crew:</h4>
							<p>${film_infor.f_introduce }</p>
						</div>
					</div>
				</div>
				<div class="col-md-8 movies-dates">
					<div class="movie-date-selection">
						<c:forEach var="studios" items="${studios}">
						
						<ul>
							<li class="location"><a href="pic-a-movie.html"><i
									class="fa fa-map-marker"></i>${studios.studio_name}</a> <input
								style="margin-left: 20px;" type="submit" value="选座购票"
								class="btn btn-primary"></li>
								<li class="time" style="width:100%;text-align:left">${studios.studio_address}</li>
								</br>
							<li class="time"><a href="movie-payment.html">11:00 AM</a></li>
							<li class="time"><a href="movie-payment.html">3:00 PM</a></li>
							<li class="time"><a href="movie-payment.html">6:20 PM</a></li>
							<li class="time"><a href="movie-payment.html">9:00 PM</a></li>
						</ul>
							1:
						</c:forEach>
						

					</div>
					<div class="movie-date-selection">
						<ul>
							<li class="location"><a href="pic-a-movie.html"><i
									class="fa fa-map-marker"></i>Theater Name: Location</a> <input
								style="margin-left: 20px;" type="submit" value="选座购票"
								class="btn btn-primary"></li>
							<li class="time"><a href="movie-payment.html">11:00 AM</a></li>
							<li class="time"><a href="movie-payment.html">3:00 PM</a></li>
							<li class="time"><a href="movie-payment.html">6:20 PM</a></li>
							<li class="time"><a href="movie-payment.html">9:00 PM</a></li>
						</ul>
					</div>
					<div class="movie-date-selection">
						<ul>
							<li class="location"><a href="pic-a-movie.html"><i
									class="fa fa-map-marker"></i>Theater Name: Location</a> <input
								style="margin-left: 20px;" type="submit" value="选座购票"
								class="btn btn-primary"></li>
							<li class="time"><a href="movie-payment.html">11:00 AM</a></li>
							<li class="time"><a href="movie-payment.html">3:00 PM</a></li>
							<li class="time"><a href="movie-payment.html">6:20 PM</a></li>
							<li class="time"><a href="movie-payment.html">9:00 PM</a></li>
						</ul>
					</div>
					<div class="movie-date-selection">
						<ul>
							<li class="location"><a href="pic-a-movie.html"><i
									class="fa fa-map-marker"></i>Theater Name: Location</a> <input
								style="margin-left: 20px;" type="submit" value="选座购票"
								class="btn btn-primary"></li>
							<li class="time"><a href="movie-payment.html">11:00 AM</a></li>
							<li class="time"><a href="movie-payment.html">3:00 PM</a></li>
							<li class="time"><a href="movie-payment.html">6:20 PM</a></li>
							<li class="time"><a href="movie-payment.html">9:00 PM</a></li>
						</ul>
					</div>
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