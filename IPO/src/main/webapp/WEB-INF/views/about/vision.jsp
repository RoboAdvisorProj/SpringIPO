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
					<img src="/resources/assets/images/about-1.png" alt="about"
						class="about-img">
				</div>
				<!-- /.col-md-3 -->
				<div class="col-md-3 col-sm-6">
					<img src="/resources/assets/images/about-2.png" alt="about"
						class="about-img">
				</div>
				<!-- /.col-md-3 -->

				<div class="col-md-6 col-sm-12">
					<p class="about-detail">
<strong>DO! IPO (DO! Inversion of Potential On investment)</strong><br>

투자의 바다에 몸을 던지신 투자자 여러분 환영합니다. 저희 DOIPO는 험난하고 위험한 투자의 세계 속에서 중장기적 관점으로 가치투자를 지향하는 Auto stock selector 입니다. 
가치투자라는 장기적 비전을 통해 단기적 이슈나 이벤트에 흔들리지 않고 기업의 주주로서 묵묵히 동행하는 그런 투자를 지향하는 바입니다.
저희는 기업의 회계자료와 산업계 시황을 통해 기업의 펀더멘털을 분석하고 엄격한 기준을 통해 종목을 스크리닝 합니다. 더불어 5가지로 세분화된 고객의 투자위험도에 따라 각기 다른 기준을 적용해 선별한 종목들을 제시하고 있습니다.
현명한 가치투자자 여러분! 저희 DOIPO와 함께 엄선하고 또 엄선한 갯벌의 진주를 찾아 함께 떠나지 않으시겠습니까.
					
					</p>
					<!-- /.about-detail -->
				</div>
				<!-- /.col-md-6 -->

			</div>
			<!-- /.row -->

			<div class="row">

				<div class="col-sm-4">
					<h3 class="section-item-title">we care</h3>
					<p class="section-item-detail">The Earth was small, light blue,
						and so touchingly alone, our home that must be defended like a
						holy relic. The Earth was absolutely round.</p>
				</div>
				<div class="col-sm-4">
					<h3 class="section-item-title">we deliver</h3>
					<p class="section-item-detail">The Earth was small, light blue,
						and so touchingly alone, our home that must be defended like a
						holy relic. The Earth was absolutely round.</p>
				</div>
				<div class="col-sm-4">
					<h3 class="section-item-title">we're creative</h3>
					<p class="section-item-detail">The Earth was small, light blue,
						and so touchingly alone, our home that must be defended like a
						holy relic. The Earth was absolutely round.</p>
				</div>
			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->
	</section>
	<!-- /.about -->


	<!-- Our Team -->
	<section class="team">
		<div class="container section-wrapper">
			<h2 class="section-title black">our team</h2>
			<!-- /.section-title -->
			<div class="underline purple"></div>
			<div class="row">
				<div class="col-sm-3 col-xs-6">
					<div class="team-item">
						<img src="/resources/assets/images/team-1.png" alt="team-image"
							class="team-img">
						<h4 class="team-item-name">David Martin</h4>
						<p class="team-item-id">founder</p>
					</div>
					<!-- /.team-item -->
				</div>
				<!-- /.col-md-3 -->

				<div class="col-sm-3 col-xs-6">
					<div class="team-item">
						<img src="/resources/assets/images/team-2.png" alt="team-image"
							class="team-img">
						<h4 class="team-item-name">Reena Scot</h4>
						<p class="team-item-id">founder</p>
					</div>
					<!-- /.team-item -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-sm-3 col-xs-6">
					<div class="team-item">
						<img src="/resources/assets/images/team-3.png" alt="team-image"
							class="team-img">
						<h4 class="team-item-name">Paul Smith</h4>
						<p class="team-item-id">founder</p>
					</div>
					<!-- /.team-item -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-sm-3 col-xs-6">
					<div class="team-item">
						<img src="/resources/assets/images/team-4.png" alt="team-image"
							class="team-img">
						<h4 class="team-item-name">Jeneflr White</h4>
						<p class="team-item-id">founder</p>
					</div>
					<!-- /.team-item -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-sm-3 col-xs-6">
					<div class="team-item">
						<img src="resources/assets/images/team-5.png" alt="team-image"
							class="team-img">
						<h4 class="team-item-name">David Martin</h4>
						<p class="team-item-id">founder</p>
					</div>
					<!-- /.team-item -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-sm-3 col-xs-6">
					<div class="team-item">
						<img src="resources/assets/images/team-6.png" alt="team-image"
							class="team-img">
						<h4 class="team-item-name">Reena Scot</h4>
						<p class="team-item-id">founder</p>
					</div>
					<!-- /.team-item -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-sm-3 col-xs-6">
					<div class="team-item">
						<img src="resources/assets/images/team-7.png" alt="team-image"
							class="team-img">
						<h4 class="team-item-name">Paul Smith</h4>
						<p class="team-item-id">founder</p>
					</div>
					<!-- /.team-item -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-sm-3 col-xs-6">
					<div class="team-item">
						<img src="resources/assets/images/team-8.png" alt="team-image"
							class="team-img">
						<h4 class="team-item-name">Jeneflr White</h4>
						<p class="team-item-id">founder</p>
					</div>
					<!-- /.team-item -->
				</div>
				<!-- /.col-md-3 -->

			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>
	<!-- /.team -->


	<!-- Testimonial -->
	<section class="testimonial">
		<div class="container section-wrapper">
			<div class="section-title">testmonials</div>
			<!-- /.section-title -->
			<div class="underline white"></div>
			<div class="owl-carousel testimonial-owl">
				<div class="item">
					<p class="testimonial-detail">The Department of Computer
						Science and Engineering, Islamic University of Technology(IUT), is
						one of the</p>
					<div class="test-name">
						<strong>Mohoshin Ahmed</strong> <br> ROX THEME
					</div>
				</div>
				<!-- /.item -->
				<div class="item">
					<p class="testimonial-detail">The Department of Computer
						Science and Engineering, Islamic University of Technology(IUT), is
						one of the</p>
					<div class="test-name">
						<strong>Mohoshin Ahmed</strong> <br> ROX THEME
					</div>
				</div>
				<!-- /.item -->
				<div class="item">
					<p class="testimonial-detail">The Department of Computer
						Science and Engineering, Islamic University of Technology(IUT), is
						one of the</p>
					<div class="test-name">
						<strong>Mohoshin Ahmed</strong> <br> ROX THEME
					</div>
				</div>
				<!-- /.item -->
			</div>
			<!-- /.owl-carousel -->
		</div>
		<!-- /.container -->
	</section>
	<!-- /.testimonial -->


	<!-- Add -->
	<section class="section-wrapper add container">
		<div class="owl-carousel add-owl">
			<div class="item">
				<img src="resources/assets/images/add-1.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="resources/assets/images/add-2.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="resources/assets/images/add-3.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="resources/assets/images/add-4.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="resources/assets/images/add-1.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="resources/assets/images/add-2.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="resources/assets/images/add-3.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="resources/assets/images/add-4.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
		</div>
		<!-- /.owl-carousel -->
	</section>
	<%@ include file="../include/footer.jsp"%>



	<script src="resources/assets/js/jquery-1.11.2.min.js"></script>
	<script src="resources/assets/js/bootstrap.min.js"></script>
	<script src="resources/assets/js/owl.carousel.min.js"></script>
	<script src="resources/assets/js/contact.js"></script>
	<!-- // <script src="resources/assets/js/smoothscroll.js"></script> -->
	<script src="resources/assets/js/script.js"></script>


</body>
</html>