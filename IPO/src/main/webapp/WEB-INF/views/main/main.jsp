<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7 lte9 lte8 lte7" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 lte9 lte8" lang="en-US">	<![endif]-->
<!--[if IE 9]><html class="ie ie9 lte9" lang="en-US"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="noIE" lang="kr">
<!--<![endif]-->
<head>
<!-- meta -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
<title>D O ! P O</title>

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
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
				<script src="resources/assets/js/html5shiv.js"></script>
				<script src="resources/assets/js/respond.js"></script>
			<![endif]-->

<!--[if IE 8]>
		    	<script src="resources/assets/js/selectivizr.js"></script>
		    <![endif]-->

</head>

<body>

	<!-- Home -->
	<section class="header" id="header">

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
									<li><a href="${location}/portfolio/moderate_risk">자가진단
											결과보기</a></li>
								</ul>
							</sec:authorize></li>
						<li><sec:authorize access="isAnonymous()">
								<a class="loginButton" style="font-size: 12px;"
									href="${location}/user/login"> <i
									class="fa fa-user-o fa-lg" aria-hidden="true"></i>&nbsp;로그인
								</a>
							</sec:authorize> <sec:authorize access="isAuthenticated()">
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
						<li><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true">about
								us <span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="${location}/about/vision">비전</a></li>
								<li><a href="${location}/about/developer">개발자</a></li>
								<li><a href="${location}/about/model">모델</a></li>
							</ul></li>
						<li><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true">portfolio
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="${location}/portfolio/self_diagnosis">자가진단</a></li>
								<li><a href="${location}/portfolio/riskAvoid">안정형</a></li>
								<li><a href="${location}/portfolio/safetyPre">안정추구형</a></li>
								<li><a href="${location}/portfolio/riskNeu">위험중립형</a></li>
								<li><a href="${location}/portfolio/activeInv">적극투자형</a></li>
								<li><a href="${location}/portfolio/riskPre">공격투자형</a></li>
							</ul></li>
						<li><a href="${location}/board/listPage">board</a></li>
						<li><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true">Customer
								Service <span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="${location}/help/faq">자주 하는 질문</a></li>
								<sec:authorize access="isAuthenticated()">
								<li><a href="${location}/help/qna">질의응답</a></li>
								</sec:authorize>
							</ul></li>
					</ul>
					<!-- /.nav -->
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->
		</nav>
		<div class="container">
			<div class="header-table">
				<div class="header-wrapper">
					<h1 class="header-title">Inversion of Potential</h1>
					<h3 class="header-title">on Investment</h3>
					<p class="header-subtitle">since 2018</p>
				</div>
				<!-- /.header-wrapper -->
			</div>
		</div>
		<!-- /.container -->
	</section>
	<!-- /#header -->


	<!-- Our Services -->
	<section class="service" id="service">
		<div class="container">
			<div class="_section-wrapper">
				<h2 class="section-title black">our services</h2>
				<!-- /.section-title -->
				<div class="underline purple"></div>
				<div class="row">
					<div class="">
						<img src="<c:url value="/resources/assets/images/service1.png"/>"
							alt="service" class="service-img img-responsive">
					</div>
					<div class="col-md-offset-4 col-md-8 col-sm-12 services">
						<div class="row">
							<div class="col-xs-6 col-sm-4">
								<div class="service-item">
									<h3 class="section-item-title">위험성향 체크 서비스</h3><br/>
									<p class="section-item-detail">개인별 위험성향 체크 서비스는 개인별 투자 위험성향을 알려주며, 
									위험성향별로  투자종목 선정과 추천 전략이 달라질 수 있습니다.</p>
								</div>
								<!-- /.service-item -->
							</div>
							<div class="col-xs-6 col-sm-4">
								<div class="service-item">
									<h3 class="section-item-title">종목 추천 서비스</h3><br/>
									<p class="section-item-detail">투자자는 위험성향을 토대로 5가지 성향으로 분류되며, 
									이에 대해 각자 다른 투자 기준으로 종목이 선정되고 추천이 됩니다. 
									추천 종목들은 DO!PO가 정해놓은 엄격한 기준을 통해 선정된 가치있는 자산이 될 것입니다.</p>
								</div>
								<!-- /.service-item -->
							</div>
							<div class="col-xs-6 col-sm-4">
								<div class="service-item">
									<h3 class="section-item-title">24/7 support</h3><br/>
									<p class="section-item-detail">저희는 연중무휴 24시간 내내 홈페이지 게시판과 
									Q&A를 통한 문제사항과 의견들을 수렴하며 해결하고 있습니다. 
									언제든지 저희 서비스와 궁금한 점에 대해 문의해주시면 친절하게 답변해드리겠습니다.</p>
								</div>
								<!-- /.service-item -->
							</div>
						</div>
						<!-- /.row -->
					</div>
					<!-- /.col-md-6 -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.section-wrapper -->
		</div>
		<!-- /.container -->
	</section>
	<!-- /.service -->


	<!-- Twitter Feed -->
	<section class="twitter-feed purple">
		<div class="container section-wrapper">
			<div class="section-title">twitter feed</div>
			<!-- /.section-title -->
			<div class="underline white"></div>
			<div class="owl-carousel twitter-owl">
				<div class="item">
					<p class="day">12 days ago</p>
					<p class="feed">We are glad to introduce our first HTML5/CSS3
						Template called “PATROS” -http://t.co/mL9rufE7h8 @designscrazed
						@W3layouts @freshdesignweb</p>
					<div class="options">
						<a href="#"><span><i class="ion-reply"></i> replay</span></a> <a
							href="#"><span><i class="ion-social-twitter"></i>
								retweet</span></a> <a href="#"><span><i class="ion-heart"></i>
								favorite</span></a>
					</div>
				</div>
				<!-- /.item -->
				<div class="item">
					<p class="day">12 days ago</p>
					<p class="feed">We are glad to introduce our first HTML5/CSS3
						Template called “PATROS” -http://t.co/mL9rufE7h8 @designscrazed
						@W3layouts @freshdesignweb</p>
					<div class="options">
						<a href="#"><span><i class="ion-reply"></i> replay</span></a> <a
							href="#"><span><i class="ion-social-twitter"></i>
								retweet</span></a> <a href="#"><span><i class="ion-heart"></i>
								favorite</span></a>
					</div>
				</div>
				<!-- /.item -->
				<div class="item">
					<p class="day">20 days ago</p>
					<p class="feed">We are glad to introduce our first HTML5/CSS3
						Template called “PATROS” -http://t.co/mL9rufE7h8 @designscrazed
						@W3layouts @freshdesignweb</p>
					<div class="options">
						<a href="#"><span><i class="ion-reply"></i> replay</span></a> <a
							href="#"><span><i class="ion-social-twitter"></i>
								retweet</span></a> <a href="#"><span><i class="ion-heart"></i>
								favorite</span></a>
					</div>
				</div>
				<!-- /.item -->
				<div class="item">
					<p class="day">5 days ago</p>
					<p class="feed">We are glad to introduce our first HTML5/CSS3
						Template called “PATROS” -http://t.co/mL9rufE7h8 @designscrazed
						@W3layouts @freshdesignweb</p>
					<div class="options">
						<a href="#"><span><i class="ion-reply"></i> replay</span></a> <a
							href="#"><span><i class="ion-social-twitter"></i>
								retweet</span></a> <a href="#"><span><i class="ion-heart"></i>
								favorite</span></a>
					</div>
				</div>
				<!-- /.item -->
			</div>
			<!-- /.owl-carousel -->
		</div>
		<!-- /.container -->
	</section>
	<!-- /.twitter-feed -->


	<!-- Portfolio -->
	<section class="portfolio" id="portfolio">
		<div class="container section-wrapper">
			<h2 class="section-title black">portfolio</h2>
			<!-- /.section-title -->
			<div class="underline purple"></div>
			<div class="row">
				<div class="col-sm-3 col-xs-6">
					<div class="portfolio-item">
						<div class="portfolio-img">
							<img
								src="<c:url value="/resources/assets/images/analytics.png"/>"
								alt="port-1" class="port-item">
							<div class="portfolio-img-hover">
								<a href="${location}/portfolio/self_diagnosis"><img
									src="<c:url value="/resources/assets/images/plus.png"/>"
									alt="plus" class="plus"></a>
							</div>
							<!-- /.portfolio-img-hover -->
						</div>
						<!-- /.portfolio-img -->
						<div class="portfolio-item-details">
							<div class="portfolio-item-name">
								자가진단 <br> <small>Fashion</small>
							</div>
							<!-- /.portfolio-item-name -->
							<div class="port-heart">
								<i class="ion-ios-heart-outline"></i> 564
							</div>
							<!-- /.port-heart -->
						</div>
						<!-- /.portfolio-item-details -->
					</div>
					<!-- /.portfolio-item -->
				</div>
				<!-- /.col-md-4 -->
				<div class="col-sm-3 col-xs-6">
					<div class="portfolio-item">
						<div class="portfolio-img">
							<img src="<c:url value="/resources/assets/images/high.png"/>"
								alt="port-2" class="port-item">
							<div class="portfolio-img-hover">
								<a href="${location}/portfolio/high_risk"><img
									src="<c:url value="/resources/assets/images/plus.png"/>"
									alt="plus" class="plus"></a>
							</div>
							<!-- /.portfolio-img-hover -->
						</div>
						<!-- /.portfolio-img -->
						<div class="portfolio-item-details">
							<div class="portfolio-item-name">
								고위험 <br> <small>Photography</small>
							</div>
							<!-- /.portfolio-item-name -->
							<div class="port-heart">
								<i class="ion-ios-heart-outline"></i> 564
							</div>
							<!-- /.port-heart -->
						</div>
						<!-- /.portfolio-item-details -->
					</div>
					<!-- /.portfolio-item -->
				</div>
				<!-- /.col-md-4 -->
				<div class="col-sm-3 col-xs-6">
					<div class="portfolio-item">
						<div class="portfolio-img">
							<img src="<c:url value="/resources/assets/images/moderate.png"/>"
								alt="port-3" class="port-item">
							<div class="portfolio-img-hover">
								<a href="${location}/portfolio/moderate_risk"><img
									src="<c:url value="/resources/assets/images/plus.png"/>"
									alt="plus" class="plus"></a>
							</div>
							<!-- /.portfolio-img-hover -->
						</div>
						<!-- /.portfolio-img -->
						<div class="portfolio-item-details">
							<div class="portfolio-item-name">
								중위험 <br> <small>Web Design</small>
							</div>
							<!-- /.portfolio-item-name -->
							<div class="port-heart">
								<i class="ion-ios-heart-outline"></i> 564
							</div>
							<!-- /.port-heart -->
						</div>
						<!-- /.portfolio-item-details -->
					</div>
					<!-- /.portfolio-item -->
				</div>
				<!-- /.col-md-4 -->
				<div class="col-sm-3 col-xs-6">
					<div class="portfolio-item">
						<div class="portfolio-img">
							<img src="<c:url value="/resources/assets/images/low.png"/>"
								alt="port-4" class="port-item">
							<div class="portfolio-img-hover">
								<a href="${location}/portfolio/low_risk"><img
									src="<c:url value="/resources/assets/images/plus.png"/>"
									alt="plus" class="plus"></a>
							</div>
							<!-- /.portfolio-img-hover -->
						</div>
						<!-- /.portfolio-img -->
						<div class="portfolio-item-details">
							<div class="portfolio-item-name">
								저위험 <br> <small>Photography</small>
							</div>
							<!-- /.portfolio-item-name -->
							<div class="port-heart">
								<i class="ion-ios-heart-outline"></i> 564
							</div>
							<!-- /.port-heart -->
						</div>
						<!-- /.portfolio-item-details -->
					</div>
					<!-- /.portfolio-item -->
				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>
	<!-- /.portfolio -->


	<!-- Note -->
	<section class="note purple">
		<div class="container section-wrapper text-center">
			<p class="quote">“우리는 금융시장 전반을 분석하며, 이해할 수 있는 회사를 찾을 뿐이다. 그리고 그
				회사들이 지속적인 경쟁력을 가지고 있는지, 신뢰할만한 경영진이 있는지, 가격이 합리적인지를 알아본다.”</p>
			<!-- /.quote -->
			<div class="quoter">워렌 버핏</div>
		</div>
		<!-- /.container -->
	</section>
	<!-- /.note -->


	<!-- Fan Facts -->
	<section class="fun">
		<div class="container section-wrapper">
			<h2 class="section-title black">Fun Facts</h2>
			<!-- /.section-title -->
			<div class="underline purple"></div>
			<div class="row">
				<div class="col-sm-4 col-xs-6">
					<div class="fun-box">
						<div class="number">현재 비회원 접속자</div>
						<div class="number-title">${unknownCount}</div>
					</div>
					<!-- /.fun-box -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-sm-4 col-xs-6">
					<div class="fun-box">
						<div class="number">현재 회원 접속자</div>
						<c:if test="${userCount>0}">
						<div class="number-title">${userCount}</div>
						</c:if>
						<c:if test="${userCount==null}">
						<div class="number-title">0</div>
						</c:if>
					</div>
					<!-- /.fun-box -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-sm-4 col-xs-6">
					<div class="fun-box">
						<div class="number">총 회원수</div>
						<div class="number-title">${totalUser}</div>
					</div>
					<!-- /.fun-box -->
				</div>
				<!-- /.col-md-3 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>
	<!-- /.fun -->

	<%@ include file="../include/footer.jsp"%>
	<script>
		function logOutCheck() {
			if (confirm("${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}님 정말 로그아웃 하시겠습니까?")) {
				location.href = "${location}/user/logout";
			} else {
				return;
			}
		}
	</script>
	<script type="text/javascript">
	var result = '${msg}';

	if (result == 'userModify success') {
		alert("다시 로그인해주세요.");
	}else if(result=='delete_user_success'){
		alert("회원탈퇴가 정상적으로 완료되었습니다.\n그동안 DO!PO를 이용해주셔서 감사합니다.")
	}
	</script>
</body>
</html>