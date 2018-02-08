<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="ko">
<head>
<title>D O ! P O</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="location" value="${pageContext.request.contextPath}"/>
<style>
.thumbnail{
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
</style>
</head>
<body>
	<!-- Home -->
	<%@ include file="../include/topmenu.jsp"%>

	<!-- Section Background -->
	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/index">Home</a></li>
				<li class="active">&nbsp;개발자</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>
	<!-- /.section-background -->


	<!-- Our Team -->
	<section class="team">
		<div class="container section-wrapper">
			<h2 class="section-title black">our team</h2>
			<!-- /.section-title -->
			<div class="underline purple"></div>
			<div class="row">
				<!-- /.col-md-3 -->

			<div class="col-sm-4 col-xs-6">
					<div class="thumbnail">
						<img src="<c:url value="/resources/assets/images/team_khw.png"/>" alt="team-image"
							class="team-img">
							<div class="caption">
						<h2 class="team-item-name text-center">김현우</h2>
						<p class="team-item-id text-center">프로젝트 엔지니어</p>
						<p class="text-center">서버 관리, 데이터 분석, HTML 소스 분석</p>
						<p class="text-center">데이터 크롤링</p>
						</div>
					</div>
					<!-- /.team-item -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-sm-4 col-xs-6">
					<div class="thumbnail">
						<img src="<c:url value="/resources/assets/images/team_psj.jpg"/>" alt="team-image"
							class="team-img">
							<div class="caption">
						<h2 class="team-item-name text-center">박성진</h2>
						<p class="team-item-id text-center">프로젝트 매니저</p>
						<p class="text-center">풀스택 개발, 서버 구축 및 관리, 데이터베이스 설계</p>
						<p class="text-center">스프링 시큐리티 해킹 보안</p>
						</div>
					</div>
					<!-- /.team-item -->
				</div>
				<!-- /.col-md-3 -->
			<div class="col-sm-4 col-xs-6">
					<div class="thumbnail">
						<img src="<c:url value="/resources/assets/images/team_shs.jpg"/>" alt="team-image"
							class="team-img">
							<div class="caption">
						<h2 class="team-item-name text-center">손해성</h2>
						<p class="team-item-id text-center">프로젝트 엔지니어</p>
						<p class="text-center">포트폴리오 모델 개발, 데이터 분석, 백테스팅</p>
						<p class="text-center">주식종목 스크리닝 알고리즘 개발</p>
						</div>
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

	<%@ include file="../include/footer.jsp"%>


</body>
</html>