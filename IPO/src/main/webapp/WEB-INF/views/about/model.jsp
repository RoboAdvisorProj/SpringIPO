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
				<li class="active">&nbsp;about us</li>
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
					<img src="resources/assets/images/about-1.png" alt="about"
						class="about-img">
				</div>
				<!-- /.col-md-3 -->
				<div class="col-md-3 col-sm-6">
					<img src="resources/assets/images/about-2.png" alt="about"
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
						<img src="resources/assets/images/team-1.png" alt="team-image"
							class="team-img">
						<h4 class="team-item-name">David Martin</h4>
						<p class="team-item-id">founder</p>
					</div>
					<!-- /.team-item -->
				</div>
				<!-- /.col-md-3 -->

				<div class="col-sm-3 col-xs-6">
					<div class="team-item">
						<img src="resources/assets/images/team-2.png" alt="team-image"
							class="team-img">
						<h4 class="team-item-name">Reena Scot</h4>
						<p class="team-item-id">founder</p>
					</div>
					<!-- /.team-item -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-sm-3 col-xs-6">
					<div class="team-item">
						<img src="resources/assets/images/team-3.png" alt="team-image"
							class="team-img">
						<h4 class="team-item-name">Paul Smith</h4>
						<p class="team-item-id">founder</p>
					</div>
					<!-- /.team-item -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-sm-3 col-xs-6">
					<div class="team-item">
						<img src="resources/assets/images/team-4.png" alt="team-image"
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