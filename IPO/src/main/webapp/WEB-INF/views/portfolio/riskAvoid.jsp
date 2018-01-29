<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="kr">
<head>
<title>D O ! P O</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="location" value="${pageContext.request.contextPath}" />
<style>
.section-item-title, .section-item-detail{
	text-align: left !important;
}
</style>
</head>
<body>
	<%@ include file="../include/topmenu.jsp"%>
	<!-- Section Background -->
	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/index">Home</a></li>
				<li class="active">&nbsp;안정형</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>
	<!-- /.section-background -->


	<!-- Our Services -->
	<section class="service" id="service">
		<div class="container">
			<div class="_section-wrapper">
				<h2 class="section-title black">안정형</h2>
				<!-- /.section-title -->
				<div class="underline purple"></div>
				<div class="row">
					<div class="">
						<img src="/resources/assets/images/traffic_blue.png" alt="service"
							class="service-img img-responsive">
					</div>
					<div class="col-md-offset-4 col-md-8 col-sm-12 services">
						<div class="row">
							<div class="col-xs-6 col-sm-12">
								<div class="service-item">
									<h3 class="section-item-title">안정형이란?</h3>
									<p class="section-item-detail">
예금 또는 적금 수준의 수익률을 기대하며, 투자원금에 손실이 발생하는 것을 원하지 않습니다. 
개인별 위험성형 측정결과 안정형에 해당하는 투자자에게 적합한 투자형태입니다. 
낮은 변동성으로 손실에 대한 위험이 가장 작은 주식들을 선별하였으며, 재무제표상 안전한 기업들을 선별하였습니다.</p>
<p class="section-item-detail">
We prefer to select stocks recommended as a low volatility. 
Low risk and stable status of the company will make sure investors to not to worry and anxious about their choices. 
According to balance sheet, these safety group stocks shows moderate growth like cash cows in the market.
</p>
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


	<!-- Price Table -->
	<section class="price-table">
		<div class="container section-wrapper">
			<h2 class="section-title black">Price table</h2>
			<!-- /.section-title -->
			<div class="underline purple"></div>
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">

					<div class="row">
						<div class="col-sm-3">
							<div class="price-title">
								Standard <br> <span>$/Month</span>
							</div>
							<ul class="price-list">
								<li>5 Products</li>
								<li>20 Pages Galleries</li>
								<li>500 GB Bandwidth</li>
								<li>Developer Platform</li>
								<li>Mobile Website and Store</li>
								<li>Custom Domain Free</li>
								<li>24/7 Customer Support</li>
								<li class="text-center">
									<button class="btn btn-default custom-btn-default">
										Get Started Now</button>
								</li>
							</ul>
						</div>

						<div class="col-sm-3">
							<div class="price-title">
								Standard <br> <span>$/Month</span>
							</div>
							<ul class="price-list">
								<li>5 Products</li>
								<li>20 Pages Galleries</li>
								<li>500 GB Bandwidth</li>
								<li>Developer Platform</li>
								<li>Mobile Website and Store</li>
								<li>Custom Domain Free</li>
								<li>24/7 Customer Support</li>
								<li class="text-center">
									<button class="btn btn-default custom-btn-default">
										Get Started Now</button>
								</li>
							</ul>
						</div>

						<div class="col-sm-3">
							<div class="price-title">
								Standard <br> <span>$/Month</span>
							</div>
							<ul class="price-list">
								<li>5 Products</li>
								<li>20 Pages Galleries</li>
								<li>500 GB Bandwidth</li>
								<li>Developer Platform</li>
								<li>Mobile Website and Store</li>
								<li>Custom Domain Free</li>
								<li>24/7 Customer Support</li>
								<li class="text-center">
									<button class="btn btn-default custom-btn-default">
										Get Started Now</button>
								</li>
							</ul>
						</div>

						<div class="col-sm-3">
							<div class="price-title">
								Standard <br> <span>$/Month</span>
							</div>
							<ul class="price-list">
								<li>5 Products</li>
								<li>20 Pages Galleries</li>
								<li>500 GB Bandwidth</li>
								<li>Developer Platform</li>
								<li>Mobile Website and Store</li>
								<li>Custom Domain Free</li>
								<li>24/7 Customer Support</li>
								<li class="text-center">
									<button class="btn btn-default custom-btn-default">
										Get Started Now</button>
								</li>
							</ul>
						</div>
					</div>
					<!-- /.row -->

				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>
	<!-- /.price-table -->


	<!-- Add -->
	<section class="section-wrapper add container">
		<div class="owl-carousel add-owl">
			<div class="item">
				<img src="/resources/assets/images/add-1.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="/resources/assets/images/add-2.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="/resources/assets/images/add-3.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="/resources/assets/images/add-4.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="/resources/assets/images/add-1.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="/resources/assets/images/add-2.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="/resources/assets/images/add-3.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="/resources/assets/images/add-4.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
		</div>
		<!-- /.owl-carousel -->
	</section>

	<%@ include file="../include/footer.jsp"%>
</body>
</html>
