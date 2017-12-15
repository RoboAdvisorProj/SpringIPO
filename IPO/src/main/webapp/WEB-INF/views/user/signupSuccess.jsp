<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>D O ! P O | 로그인</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="location" value="${pageContext.request.contextPath}" />
</head>
<body>
	<%@ include file="../include/topmenu.jsp"%>
	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/main/main">Home</a></li>
				<li class="active">&nbsp;회원가입</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>
	<div class="container">
		<div class="jumbotron" style="margin-top: 100px">
			<h1>환영합니다!</h1>
			<p>${user}님 DOIPO 회원이 되신 걸 진심으로 환영합니다.</p>
			<p>
				<a class="btn btn-primary btn-lg" href="${location}/user/login"
					role="button">로그인 하기</a>
			</p>
		</div>
	</div>
</body>
</html>
<%@ include file="../include/footer.jsp"%>
