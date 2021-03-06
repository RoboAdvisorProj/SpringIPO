<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- meta -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="location" value="${pageContext.request.contextPath}" />

<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/ionicons.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/owl.carousel.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/owl.theme.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/main.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/section.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/about.css"/>">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="<c:url value="/resources/assets/js/jquery-1.11.2.min.js"/>"></script>
<section class="portfolio-header" id="header">
	<nav class="navbar navbar-default">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1,#bs-example-navbar-collapse-2"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${location}/main/main">D O ! P O</a>
			</div>
			<!-- /.navbar-header -->

						<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><sec:authorize access="isAnonymous()">
								<a class="SignButton" style="font-size: 12px;"
									href="${location}/user/join_first"> <i
									class="fa fa-user-plus fa-lg" aria-hidden="true"></i>&nbsp;회원가입
								</a>
							</sec:authorize> <sec:authorize access="isAuthenticated()">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"
									role="button" aria-haspopup="true" style="font-size: 12px;"><i
									class="fa fa-address-card-o fa-lg" aria-hidden="true"></i>&nbsp;마이페이지<span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="${location}/user/modify_update">회원정보 수정</a></li>
									<li><a href="${location}/user/user_delete">회원탈퇴</a></li>
								</ul>
							</sec:authorize></li>
						<li><sec:authorize access="isAnonymous()">
								<a class="loginButton" style="font-size: 12px;"
									href="${location}/user/login"> <i
									class="fa fa-user-o fa-lg" aria-hidden="true"></i>&nbsp;로그인
								</a>
							</sec:authorize> 
							<sec:authorize access="isAuthenticated()">
								<a class="loginButton" style="font-size: 12px;"
									href="javascript:logOutCheck()"><i
									class="fa fa-sign-out fa-lg" aria-hidden="true"></i> &nbsp;로그아웃
								</a>
							</sec:authorize></li>
						<!-- <li><a class="loginButton" href=""><i class="fa fa-user-o fa-lg" aria-hidden="true"></i>로그인</a></li> -->
					</ul>
					<!-- /.nav -->
				</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-2">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${location}/main/main">home</a></li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true">about us <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${location}/about/developer">개발자</a></li>
							<li><a href="${location}/about/model">모델</a></li>
							<li><a href="${location}/about/vision">비전</a></li>
			
						</ul></li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true">portfolio <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="javascript:selfD_loginCheck()">자가진단</a></li>
								<li><a href="${location}/portfolio/riskAvoid">안정형</a></li>
								<li><a href="${location}/portfolio/safetyPre">안정추구형</a></li>
								<li><a href="${location}/portfolio/riskNeu">위험중립형</a></li>
								<li><a href="${location}/portfolio/activeInv">적극투자형</a></li>
								<li><a href="${location}/portfolio/riskPre">공격투자형</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true">board
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="${location}/notice/n_listPage">공지사항</a></li>
								<li><a href="${location}/board/listPage">자유게시판</a></li>
							</ul></li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true">Customer Service <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${location}/help/faq">자주 하는 질문</a></li>
							<sec:authorize access="isAuthenticated()">
							<li><a href="${location}/help/qna">고객센터</a></li>
							</sec:authorize>
						</ul></li>
				</ul>
				<!-- /.nav -->
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
</section>

<script>
function logOutCheck(){
	if(confirm("${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}님 정말 로그아웃 하시겠습니까?")){
		location.href="${location}/user/logout";
	}else{
		return;
	}
}
</script>
<script>
function selfD_loginCheck(){
	var user="${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}";
	
	if(user==""){
		if(confirm("죄송합니다.\n회원전용 서비스입니다.\n로그인 페이지로 이동하시겠습니까?")){
			location.href="${location}/user/login";
		}
	}else{
		location.href="${location}/portfolio/self_diagnosis";
	}
}
</script>