<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- meta -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="location" value="${pageContext.request.contextPath}"/>

<link rel="stylesheet" href="<c:url value="/resources/assets/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/assets/css/ionicons.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/assets/css/owl.carousel.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/assets/css/owl.theme.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/assets/css/main.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/assets/css/section.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/assets/css/about.css"/>">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="<c:url value="/resources/assets/js/jquery-1.11.2.min.js"/>"></script>
	<section class="portfolio-header" id="header">
		<nav class="navbar navbar-default">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="${location}/index">D O ! P O</a>
				</div>
				<!-- /.navbar-header -->

				<div class="collapse navbar-collapse in"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a class="loginButton" style="font-size: 12px;" href="">
								<i class="fa fa-user-plus fa-lg" aria-hidden="true"></i>&nbsp;Sign Up
						</a></li>
						<li><a class="loginButton" style="font-size: 12px;" href="">
								<i class="fa fa-user-o fa-lg" aria-hidden="true"></i>&nbsp;Login
						</a></li>
						<!-- <li><a class="loginButton" href=""><i class="fa fa-user-o fa-lg" aria-hidden="true"></i>로그인</a></li> -->
					</ul>
					<!-- /.nav -->
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse in"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="${location}/index">home</a></li>
						<li><a href="${location}/about">about us</a></li>
						<li><a href="${location}/service">services</a></li>
						<li><a href="${location}/board/listAll">board</a></li>
						<li><a href="${location}/contact">contact</a></li>
					</ul>
					<!-- /.nav -->
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->
		</nav>
	</section>
