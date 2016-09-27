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

<title>首页</title>

</head>
<body>


<table class="gridtable" style="width:100%;">
                <thead>
                <tr>
                    <th colspan="3">查询结果</th>
                </tr>
                <tr>
                    <th>片名</th>
                    <th>导演</th>
                    <th>演员</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${filmOnline.list}" var="film">
                    <tr>
                        <td>${film.f_name}</td>
                        <td>${film.f_director}</td>
                        <td>${film.f_star}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>			


</body>
</html>