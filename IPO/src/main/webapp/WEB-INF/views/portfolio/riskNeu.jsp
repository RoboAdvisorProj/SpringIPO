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
				<li class="active">&nbsp;위험중립형</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>
	<!-- /.section-background -->


	<!-- Our Services -->
	<section class="service" id="service">
		<div class="container">
			<div class="_section-wrapper">
				<h2 class="section-title black">위험중립형</h2>
				<!-- /.section-title -->
				<div class="underline purple"></div>
				<div class="row">
					<div class="">
						<img src="/resources/assets/images/traffic_yellow.png" alt="service"
							class="service-img img-responsive" style="-webkit-filter: brightness(1.25);">
					</div>
					<div class="col-md-offset-4 col-md-8 col-sm-12 services">
						<div class="row">
							<div class="col-xs-6 col-sm-12">
								<div class="service-item">
									<h3 class="section-item-title">위험중립형이란?</h3>
									<p class="section-item-detail">
투자에는 그에 상응하는 투자위험이 있음을 충분히 인식하고 있으며, 
예․적금보다 높은 수익을 기대할 수 있다면 일정수준의 손실위험을 감수할 수 있습니다. 
우리는 중간위험의 스크리닝 조건들을 적용하여 주식종목을 선별하고 있습니다.</p>
<p class="section-item-detail">
Investors are fully recognizing investment risk and willing to accept some level of the risk for more gain from the investment. 
This type has middle level of the risk criteria so that we select the stocks by using this method.
</p>
										<a href="javascript:loginCheck()"
											class="btn btn-default" role="button">
											위험중립형 리스트 보기 &nbsp;<i class="fa fa-hand-o-up" aria-hidden="true"></i>
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
				 <a href="http://money.mk.co.kr/v3/"><img src="/resources/assets/images/mkicon.png" alt="add"
					class="add-item"></a>
			</div>
			<!-- /.item -->
			<div class="item">
				 <a href="http://finance.naver.com/"><img src="/resources/assets/images/navericon.png" alt="add"
					class="add-item"></a>
			</div>
			<!-- /.item -->
			<div class="item">
				 <a href="https://finance.google.com/finance/stockscreener"><img src="/resources/assets/images/googleicon.png" alt="add"
					class="add-item"></a>
			</div>
			<!-- /.item -->
			<div class="item">
				 <a href="https://www.bloomberg.com/markets/stocks"><img src="/resources/assets/images/bloombergicon.jpg" alt="add"
					class="add-item"></a>
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
		location.href="${location}/portfolio/list/riskNeuList";
	}
}
</script>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
