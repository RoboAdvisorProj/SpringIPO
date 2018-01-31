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
				<li class="active">&nbsp;적극투자형</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>
	<!-- /.section-background -->


	<!-- Our Services -->
	<section class="service" id="service">
		<div class="container">
			<div class="_section-wrapper">
				<h2 class="section-title black">적극투자형</h2>
				<!-- /.section-title -->
				<div class="underline purple"></div>
				<div class="row">
					<div class="">
						<img src="/resources/assets/images/traffic_orange.png" alt="service"
							class="service-img img-responsive" style="-webkit-filter: brightness(1.25);"> 
					</div>
					<div class="col-md-offset-4 col-md-8 col-sm-12 services">
						<div class="row">
							<div class="col-xs-6 col-sm-12">
								<div class="service-item">
									<h3 class="section-item-title">적극투자형이란?</h3>
									<p class="section-item-detail">
투자원금의 보전보다는 위험을 감내하더라도 높은 수준의 투자수익 실현을 추구합니다. 
투자자금의 상당 부분을 주식, 주식형펀드 또는 파생상품 등의 위험자산에 투자할 의향이 있음. 여기서 파생상품, 주식형 펀드는 없지만, 
지표 기준상 조금 더 위험을 추구하고 재무제표상으로 매우 안정적이지는 않지만, 성장하고 있는 기업들을 위주로 추천하고 있습니다.</p>
<p class="section-item-detail">
This type of the investors prefer to get high level of the returns from taking more risks than 3 types of investment above. 
This type of investment includes derivatives and stock funds but we only consider more high risk stocks instead.
</p>

										<a href="javascript:loginCheck()"
											class="btn btn-default" role="button">
											적극투자형 리스트 보기 &nbsp;<i class="fa fa-hand-o-up" aria-hidden="true"></i>
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
<script>
function loginCheck(){
	var user="${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}";
	
	if(user==""){
		if(confirm("죄송합니다.\n회원전용 서비스입니다.\n로그인 페이지로 이동하시겠습니까?")){
			location.href="${location}/user/login";
		}
	}else{
		location.href="${location}/portfolio/list/activeInvList";
	}
}
</script>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
