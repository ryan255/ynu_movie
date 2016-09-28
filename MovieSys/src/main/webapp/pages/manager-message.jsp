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
<title>后台管理——${admin.admin_name}</title>

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
				<a href="#">网站说明</a> | <a href="#">所在城市</a>| <a href="home">返回网站首页</a>
			</div>
			<div class="header-top-right">
				<%
					if (request.getSession().getAttribute("successadmin") == null) {
				%>
				<button id="login-btn" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">登录</button>

				<%
					} else {
				%>
				欢迎：
				<%=request.getSession().getAttribute("successadmin")%>

				<a href="logout"><button class="btn btn-primary">退出</button></a>
				<%
					}
				%>
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
								href="#">首页</a></li>

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
						<li><a href="#tab1"><span> </span>影城信息</a></li>
						<li><a href="#tab2"><span> </span>影厅信息</a></li>
						<li><a href="#tab3"><span> </span>电影信息</a></li>
					</ul>
					<div class="clearfix"></div>
					<div class="tab-grids">
						<div id="tab1" class="tab-grid">
							<h5>影城信息</h5>
							<ul class="list-group col-sm-6 col-sm-offset-3">
								<li class="list-group-item"><span class="label label-info">名称：</span>
									&nbsp; &nbsp; &nbsp;${studio.studio_name }</li>
								<li class="list-group-item"><span class="label label-info">地&nbsp;&nbsp;址：</span>
									&nbsp; &nbsp; &nbsp;${studio.studio_address }</li>
								<li class="list-group-item"><span class="label label-info">电&nbsp;&nbsp;话：</span>
									&nbsp; &nbsp; &nbsp;${studio.studio_phone }</li>
								<li class="list-group-item"><span class="label label-info">简&nbsp;&nbsp;介：</span>
									&nbsp; &nbsp; &nbsp;${studio.studio_text }</li>

							</ul>

						</div>
						<div id="tab2" class="tab-grid">
						<div class="col-sm-12"><h5>影厅信息</h5>
							<button style="float:right" class="btn btn-warning">添加影厅</button></br></div>
							
							<c:forEach items="${admin.auditoriums }" var="ar">
								
													<ul class="list-group col-sm-6 col-sm-offset-3">
														<li class="list-group-item"><span
															class="label label-info">名&nbsp;&nbsp;称：</span> &nbsp; &nbsp;
															&nbsp;${ar.auditorium_num }厅</li>
														<li class="list-group-item"><span
															class="label label-info">行&nbsp;&nbsp;数：</span> &nbsp;
															&nbsp; &nbsp;${ar.auditorium_row }</li>
														<li class="list-group-item"><span
															class="label label-info">列&nbsp;&nbsp;数：</span> &nbsp;
															&nbsp; &nbsp;${ar.auditorium_col }</li>
														<li class="list-group-item"><span
															class="label label-info">座位总数：</span> &nbsp;
															&nbsp; &nbsp;${ar.auditorium_num }</li>

													</ul>
										
							</c:forEach>

						</div>
						<div id="tab3" class="tab-grid">
							<h5>账户充值</h5>
							<form action="updateUser" method="get">
								<ul class="list-group col-sm-6 col-sm-offset-3">
									<li class="list-group-item"><span class="label label-info">充值金额：</span>
										&nbsp; &nbsp; &nbsp;<input name="total" type="number">
										<input style="display: none" name="idUser"
										value="${user.idUser}" /> <input style="display: none"
										name="state" value="3" /> <input style="display: none"
										name="idOrder2" value="0" />

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