<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html class="noIE" lang="ko">

<head>
<title>D O ! P O</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="location" value="${pageContext.request.contextPath}" />
</head>
<body>
	<!-- Home -->
	<%@ include file="../include/topmenu.jsp"%>

	<!-- Section Background -->
	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/index">Home</a></li>
				<li class="active">&nbsp;비전</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>
	<!-- /.section-background -->


	<!-- About Us -->
	<section class="about" id="about">
		<div class="container section-wrapper">
			<h2 class="section-title black">VISION</h2>
			<!-- /.section-title -->
			<div class="underline purple"></div>
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<img
						src="<c:url value="/resources/assets/images/vision1.jpg"/>"
						alt="about" class="about-img">
				</div>
				<!-- /.col-md-3 -->
				<div class="col-md-3 col-sm-6">
					<img
						src="<c:url value="/resources/assets/images/vision2.jpg"/>"
						alt="about" class="about-img">
				</div>
				<!-- /.col-md-3 -->

				<div class="col-md-6 col-sm-12">
					<p class="about-detail">
						<strong>DO!PO (DO! Inversion of Potential On investment)</strong><br>

						투자의 바다에 몸을 던지신 투자자 여러분 환영합니다. 저희 DO!PO는 험난하고 위험한 투자의 세계 속에서 중장기적
						관점으로 가치투자를 지향하는 Auto stock selector 입니다. 가치투자라는 장기적 비전을 통해 단기적 이슈나
						이벤트에 흔들리지 않고 기업의 주주로서 묵묵히 동행하는 그런 투자를 지향하는 바입니다. 저희는 기업의 회계자료와 산업계
						시황을 통해 기업의 펀더멘털을 분석하고 엄격한 기준을 통해 종목을 스크리닝 합니다. 더불어 5가지로 세분화된 고객의
						투자위험도에 따라 각기 다른 기준을 적용해 선별한 종목들을 제시하고 있습니다. 현명한 가치투자자 여러분! 저희
						DO!PO와 함께 엄선하고 또 엄선한 갯벌의 진주를 찾아 함께 떠나지 않으시겠습니까.

					</p>
					<!-- /.about-detail -->
				</div>
				<!-- /.col-md-6 -->

			</div>
			<!-- /.row -->

			<div class="row">

				<div class="col-sm-4">
					<h3 class="section-item-title">WE CARE</h3>
					<p class="section-item-detail">우리는 투자자들을 소중하게 생각하며 가치투자에 대한 올바른
						방향으로 나아가기를 목표로 합니다. 기업의 견고한 펀더멘탈을 기본으로 투자자들의 투자지표가 되어 투기가 아닌 투자를
						고집하고 있습니다.</p>
				</div>
				<div class="col-sm-4">
					<h3 class="section-item-title">WE DELIVER</h3>
					<p class="section-item-detail">우리는 기업의 재무적 상황과 실시간으로 변하는 여러
						지표들을 토대로 추천 종목을 투자자들에게 제공합니다. 개인별 위험 감내 수준에 따라 지표의 기준이 상이하며, 성향에
						적합한 투자를 할 수 있는 적극적인 기회를 제공하고 있습니다.</p>
				</div>
				<div class="col-sm-4">
					<h3 class="section-item-title">WE’RE DYNAMIC</h3>
					<p class="section-item-detail">우리는 변화하고 요동치는 시장을 주시하며 지속적으로 기준을
						갱신하며 점검하고 있습니다. 과거의 데이터는 미래에서 효용가치가 없을 수 있기에 최신 정보를 수집하며 트렌드와
						경기변화에 발맞추어 동적으로 변화합니다.</p>
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