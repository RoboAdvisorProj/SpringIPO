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
					<p class="about-detail">The Earth was small, light blue, and so
						touchingly alone, our home that must be defended like a holy
						relic. The Earth was absolutely round. I believe I never knew what
						saw for the first time how beautiful our planet is. Mankind, let
						us preserve and increase this beauty, and not destroy
						it!Houston.landed.We are all connected; To each other,
						biologically. To the earth, chemically. To the rest of the
						universe atomically. The Earth was absolutely round. I believe I
						never knew what saw for the first time how beautiful our planet
						is.</p>
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