<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html class="noIE" lang="ko">

<head>
<title>D O ! P O</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="location" value="${pageContext.request.contextPath}"/>
</head>
<body>
	<!-- Home -->
	<%@ include file="../include/topmenu.jsp"%>

	<!-- Section Background -->
	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/index">Home</a></li>
				<li class="active">&nbsp;모델</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>
	<!-- /.section-background -->


	<!-- About Us -->
	<section class="about" id="about">
		<div class="container section-wrapper">
			<h2 class="section-title black">MODEL</h2>
			<!-- /.section-title -->
			<div class="underline purple"></div>
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<img src="<c:url value="/resources/assets/images/model2.jpg"/>" alt="about"
						class="about-img">
				</div>
				<!-- /.col-md-3 -->
				<div class="col-md-3 col-sm-6">
					<img src="<c:url value="/resources/assets/images/model3.jpeg"/>" alt="about"
						class="about-img">
				</div>
				<!-- /.col-md-3 -->

				<div class="col-md-6 col-sm-12">
					<p class="about-detail">DOIPO의 주식종목 스크리닝 모델은 3가지 성격으로 설명됩니다. 첫째는 가치 선정으로, 기업의 최신 재무재표
   공시자료를 활용해 기업의 안정성, 성장성, 기업가치가 우수한 주식을 선별합니다. 두번째는 재무재표 지표에
   거시경제적인 변수들을 추가해 통합적인 위험선호별 주식종목 추천을 제안합니다. 세번째는 역동성으로 매일
   종가 기준으로 산출된 주식지표들을 통해 매일매일 추천종목이 재선정되며, 이는 시장의 추세를 따라갑니다.</p>
					<!-- /.about-detail -->
				</div>
				<!-- /.col-md-6 -->

			</div>
			<!-- /.row -->

			<div class="row">

				<div class="col-sm-4">
					<h3 class="section-item-title">Value-selection</h3>
					<p class="section-item-detail">저희 DOIPO는 기업의 재무제표를 기반으로 정교한 조건식을 사용해
투자할 잠재적 가치가 있는 기업을 선별합니다. </p>
				</div>
				<div class="col-sm-4">
					<h3 class="section-item-title">Integrity</h3>
					<p class="section-item-detail">재무제표의 여러 조건식과 변동성, 그리고 거시경제 상황을 통합적으로 고려하여
투자자산을 선택하고 제시합니다.</p>
				</div>
				<div class="col-sm-4">
					<h3 class="section-item-title">Dynamic</h3>
					<p class="section-item-detail">시시각각 변화하는 시장상황을 동적으로 반영하여 트렌드와 모멘텀에 겆맞는
투자자산을 제시합니다.
</p>
				</div>
			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->
	</section>
	<!-- /.about -->
	<%@ include file="../include/footer.jsp"%>



	<script src="resources/assets/js/jquery-1.11.2.min.js"></script>
	<script src="resources/assets/js/bootstrap.min.js"></script>
	<script src="resources/assets/js/owl.carousel.min.js"></script>
	<script src="resources/assets/js/contact.js"></script>
	<!-- // <script src="resources/assets/js/smoothscroll.js"></script> -->
	<script src="resources/assets/js/script.js"></script>


</body>
</html>