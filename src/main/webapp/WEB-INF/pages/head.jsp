<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mytag" uri="/WEB-INF/tld/MyTag.tld" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
</head>
<body>
<!-- 头部区域 -->
<c:if test="${sessionScope.user.userType == 0}">
	<!--普通用户-->
	<nav class="navbar navbar-nwpu">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/user">NWPU</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
					<ul class="nav navbar-nav">
						<li class="active"><a href="/user">首页 <span class="sr-only">(current)</span></a></li>
<%--						<li><a href="/company">company入口</a></li>--%>
<%--						<li><a href="/admin">admin入口</a></li>--%>
<%--						<li><a href="#">职位</a></li>--%>
<%--						<li><a href="/admin/userList">userList</a></li>--%>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/user/deliverJobList">我的应聘</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><strong><mytag:cookieHandle cookie="${cookie.user.value}"></mytag:cookieHandle></strong> <span class="caret"></span></a>
							<ul class="dropdown-menu dropdown-mean-nwpu">
								<li><a href="/user/personInfo">个人中心</a></li>
								<li><a href="/user/updatePassword">修改密码</a></li>
								<li><a href="/user/resume">个人简历</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="/logout">退出登录</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	<!--普通用户-->
</c:if>
<c:if test="${sessionScope.user.userType == 1}">
	<!--公司用户-->
	<nav class="navbar navbar-nwpu">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="">NWPU</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="/company">首页 <span class="sr-only">(current)</span></a></li>
					<li><a href="/company/postJobList">我的招聘</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><strong><mytag:cookieHandle cookie="${cookie.user.value}"></mytag:cookieHandle></strong> <span class="caret"></span></a>
						<ul class="dropdown-menu dropdown-mean-nwpu">
							<li><a href="/company/personInfo">个人中心</a></li>
							<li><a href="/company/updatePassword">修改密码</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="/logout">退出登录</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!--/公司用户-->
</c:if>
<!--/头部区域  -->
</body>
</html>