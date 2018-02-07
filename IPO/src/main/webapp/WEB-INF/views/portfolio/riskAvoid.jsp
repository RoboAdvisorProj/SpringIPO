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
							class="service-img img-responsive" style="-webkit-filter: brightness(1.25);">
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
										<a href="javascript:loginCheck()"
											class="btn btn-default" role="button">
											안정형 리스트 보기 &nbsp;<i class="fa fa-hand-o-up" aria-hidden="true"></i>
											</a>
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
			<div class="section-title">STOCK QUOTES</div>
			<!-- /.section-title -->
			<div class="underline white"></div>
			<div class="owl-carousel testimonial-owl">
				<div class="item">
					<p class="testimonial-detail">One of the funny things about the stock market is that every time one person buys, 
					another sells, and both think they are astute.</p>
					<div class="test-name">
						<strong>William Feather</strong>
					</div>
				</div>
				<!-- /.item -->
				<div class="item">
					<p class="testimonial-detail">Stock market bubbles don't grow out of thin air. They have a solid basis in reality, but reality as distorted by a misconception.</p>
					<div class="test-name">
						<strong>George Soros</strong>
					</div>
				</div>
				<!-- /.item -->
				<div class="item">
					<p class="testimonial-detail">I never attempt to make money on the stock market. I buy on the assumption that they could close the market the next day and not reopen it for five years.</p>
					<div class="test-name">
						<strong>Warren Buffett</strong>
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
				<img src="/resources/assets/images/mkicon.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="/resources/assets/images/navericon.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="/resources/assets/images/googleicon.png" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
			<div class="item">
				<img src="/resources/assets/images/bloombergicon.jpg" alt="add"
					class="add-item">
			</div>
			<!-- /.item -->
		</div>
		<!-- /.owl-carousel -->
	</section>
<script>
function loginCheck(){
	var user="${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}";
	
	if(user==""){
		if(confirm("죄송합니다.\n회원전용 서비스입니다.\n로그인 페이지로 이동하시겠습니까?")){
			location.href="${location}/user/login";
		}
	}else{
		location.href="${location}/portfolio/list/riskAvoidList";
	}
}
</script>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
