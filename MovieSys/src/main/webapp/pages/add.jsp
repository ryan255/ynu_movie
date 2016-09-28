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
    <title>影城/电影添加</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!--css-->
    <link href="<%=request.getContextPath()%>/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="<%=request.getContextPath()%>/css/megamenu.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/menu.css"/>

    <!--js-->
    <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/megamenu.js"></script>
    <script>$(document).ready(function () {
        $(".megamenu").megamenu();
    });</script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.leanModal.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/move-top.js"></script>
</head>
<body>
<!--网页顶部-->
<div class="header-top-strip">
    <div class="container">
        <div class="header-top-left">
            <a href="#">网站说明</a> |
            <a href="#">所在城市</a>
        </div>
        <div class="header-top-right">
            <a href="index.html">返回网站首页</a>
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
                <a href="#"><h1>影城/电影添加</h1></a>
            </div>

        </div>
        <!--end of logo-->
        <script src="<%=request.getContextPath()%>/js/responsive-tabs.js"></script>
        <script type="text/javascript">
            $('#myTab a').click(function (e) {
                e.preventDefault();
                $(this).tab('show');
            });

            $('#moreTabs a').click(function (e) {
                e.preventDefault();
                $(this).tab('show');
            });

            (function ($) {
                // Test for making sure event are maintained
                $('.js-alert-test').click(function () {
                    alert('Button Clicked: Event was maintained');
                });
                fakewaffle.responsiveTabs(['xs', 'sm']);
            })(jQuery);

        </script>
        <div class="event-page-tabs">
            <div class="grid_3 grid_5">
                <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                    <ul id="myTab" class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab"
                                                                  data-toggle="tab" aria-controls="home"
                                                                  aria-expanded="true">添加影城</a></li>
                        <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab"
                                                   aria-controls="profile">添加电影</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content" scoll=no >
                        <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab" style="overflow:scroll;overflow-x:hidden;overflow-y: hidden">
                            <form class="form-horizontal" role="form" action="/MovieSys/addstudio" method="post">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-2 control-label">影院名</label>
                                    <div class="col-sm-6">
                                        <input name="studio_name" type="text" class="form-control" id="inputEmail3"
                                               placeholder="影院名">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="studio_address" class="col-sm-2 control-label">影院地址</label>
                                    <div class="col-sm-6">
                                        <input name="studio_address" type="text" class="form-control" id="inputPassword3"
                                               placeholder="影院地址">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="studio_phone" class="col-sm-2 control-label">联系电话</label>
                                    <div class="col-sm-6">
                                        <input name="studio_phone" type="text" class="form-control" id="inputPassword3"
                                               placeholder="联系电话">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-6">
                                        <button type="submit" class="btn btn-default">确认添加</button>
                                    </div>
                                </div>
                            </form>


                            <div class="clearfix"></div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">

                                <form class="form-horizontal" role="form" action="/MovieSys/addmovie" method="post">
                                	<div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">电影名</label>
                                        <div class="col-sm-8">
                                            <input name="f_name" type="text" class="form-control" id="inputEmail4"
                                                   placeholder="电影名">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">导演</label>
                                        <div class="col-sm-8">
                                            <input name="f_director" type="text" class="form-control" id="inputEmail4"
                                                   placeholder="导演">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">演员</label>
                                        <div class="col-sm-8">
                                            <input name="f_star" type="text" class="form-control" id="inputPassword4"
                                                   placeholder="演员">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">分类号</label>
                                        <div class="col-sm-8">
                                            <input name="idClass" type="text" class="form-control" id="inputPassword4"
                                                   placeholder="分类号">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">时长（分钟）</label>
                                        <div class="col-sm-8">
                                            <input name="f_time" type="text" class="form-control" id="inputPassword4"
                                                   placeholder="时长（分钟）">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="submit" class="btn btn-default">确认添加</button>
                                        </div>
                                    </div>
                                </form>
                                <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>
<!---主体结束-->
<div class="copy-rights text-center">
    <p>Copyright &copy; 2016 &nbsp;School of software </p>
</div>
</body>
</html>