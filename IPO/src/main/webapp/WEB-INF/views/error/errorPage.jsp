<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="kr">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/bootstrap.min.css"/>">
<title>D O ! P O | 에러</title>
<script>
	function window_onload() {
		setTimeout('go_url()', 5000)
	}
	function go_url() {
		location.href = history.back()
	}
</script>
<style>
body {background-color: #ffffff !important;}
</style>
</head>
<body onload="javascript:window_onload()">
	<div class="container">
			<div class="center-block">
			<h1>죄송합니다! 사이트에서 오류가 발생했습니다.</h1>
			<h2>5초 뒤에 자동으로 전페이지로 돌아갑니다.</h2>
		</div>
	</div>
	<img src="<c:url value="/resources/assets/images/Warning.png"/>"
			width="100%" height="100%">
</body>
</html>