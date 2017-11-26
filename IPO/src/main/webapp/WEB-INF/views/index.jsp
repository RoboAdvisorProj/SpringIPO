<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7 lte9 lte8 lte7" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 lte9 lte8" lang="en-US">	<![endif]-->
<!--[if IE 9]><html class="ie ie9 lte9" lang="en-US"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="noIE" lang="kr">
<!--<![endif]-->
<head>
<!-- meta -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
<title>D O ! P O</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="location" value="${pageContext.request.contextPath}" />

<link rel="stylesheet" href="resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/assets/css/ionicons.min.css">
<link rel="stylesheet" href="resources/assets/css/owl.carousel.css">
<link rel="stylesheet" href="resources/assets/css/owl.theme.css">
<link rel="stylesheet" href="resources/assets/css/main.css">
<link rel="stylesheet" href="resources/assets/css/one-page.css">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
				<script src="resources/assets/js/html5shiv.js"></script>
				<script src="resources/assets/js/respond.js"></script>
			<![endif]-->

<!--[if IE 8]>
		    	<script src="resources/assets/js/selectivizr.js"></script>
		    <![endif]-->
<style>
/* .pull-right {
	float: right !important;
} */
</style>
</head>

<body>

	<!-- Home -->
	<section class="header" id="header">

		<nav class="navbar navbar-default">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="${location}/index">D O ! P O</a>
				</div>
				<!-- /.navbar-header -->

				<div class="collapse navbar-collapse in"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a class="loginButton" style="font-size: 12px;" href="">
								<i class="fa fa-user-plus fa-lg" aria-hidden="true"></i>&nbsp;Sing
								Up
						</a></li>
						<li><a class="loginButton" style="font-size: 12px;" href="">
								<i class="fa fa-user-o fa-lg" aria-hidden="true"></i>&nbsp;Login
						</a></li>
						<!-- <li><a class="loginButton" href=""><i class="fa fa-user-o fa-lg" aria-hidden="true"></i>로그인</a></li> -->
					</ul>
					<!-- /.nav -->
				</div>
				<!-- /.navbar-collapse -->

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse in"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="${location}/index">home</a></li>
						<li><a href="${location}/about">about us</a></li>
						<li><a href="${location}/service">services</a></li>
						<li><a href="${location}/board/listAll">board</a></li>
						<li><a href="${location}/contact">contact</a></li>
						<!-- <li><a class="loginButton" href=""><i class="fa fa-user-o fa-lg" aria-hidden="true"></i>로그인</a></li> -->
					</ul>
					<!-- /.nav -->
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->
		</nav>
		<div class="container">
			<div class="header-table">
				<div class="header-wrapper">
					<h1 class="header-title">Inversion of Potential</h1>
					<h3 class="header-title">on Investment</h3>
					<p class="header-subtitle">since 2018</p>
				</div>
				<!-- /.header-wrapper -->
			</div>
		</div>
		<!-- /.container -->
	</section>
	<!-- /#header -->


	<!-- Our Services -->
	<section class="service" id="service">
		<div class="container">
			<div class="_section-wrapper">
				<h2 class="section-title black">our services</h2>
				<!-- /.section-title -->
				<div class="underline purple"></div>
				<div class="row">
					<div class="">
						<img src="resources/assets/images/service.png" alt="service"
							class="service-img img-responsive">
					</div>
					<div class="col-md-offset-4 col-md-8 col-sm-12 services">
						<div class="row">
							<div class="col-xs-6 col-sm-4">
								<div class="service-item">
									<h3 class="section-item-title">free delivery</h3>
									<p class="section-item-detail">The Earth was small, light
										blue, and so touchingly alone, our home that must be so
										painful.</p>
								</div>
								<!-- /.service-item -->
							</div>
							<div class="col-xs-6 col-sm-4">
								<div class="service-item">
									<h3 class="section-item-title">refund money</h3>
									<p class="section-item-detail">The Earth was small, light
										blue, and so touchingly alone, our home that must be so
										painful.</p>
								</div>
								<!-- /.service-item -->
							</div>
							<div class="col-xs-6 col-sm-4">
								<div class="service-item">
									<h3 class="section-item-title">24/7 support</h3>
									<p class="section-item-detail">The Earth was small, light
										blue, and so touchingly alone, our home that must be so
										painful.</p>
								</div>
								<!-- /.service-item -->
							</div>
							<div class="col-xs-6 col-sm-4">
								<div class="service-item">
									<h3 class="section-item-title">summer offer</h3>
									<p class="section-item-detail">The Earth was small, light
										blue, and so touchingly alone, our home that must be so
										painful.</p>
								</div>
								<!-- /.service-item -->
							</div>
							<div class="col-xs-6 col-sm-4">
								<div class="service-item">
									<h3 class="section-item-title">winter offer</h3>
									<p class="section-item-detail">The Earth was small, light
										blue, and so touchingly alone, our home that must be so
										painful.</p>
								</div>
								<!-- /.service-item -->
							</div>
							<div class="col-xs-6 col-sm-4">
								<div class="service-item">
									<h3 class="section-item-title">best gift</h3>
									<p class="section-item-detail">The Earth was small, light
										blue, and so touchingly alone, our home that must be so
										painful.</p>
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


	<!-- Twitter Feed -->
	<section class="twitter-feed purple">
		<div class="container section-wrapper">
			<div class="section-title">twitter feed</div>
			<!-- /.section-title -->
			<div class="underline white"></div>
			<div class="owl-carousel twitter-owl">
				<div class="item">
					<p class="day">12 days ago</p>
					<p class="feed">We are glad to introduce our first HTML5/CSS3
						Template called “PATROS” -http://t.co/mL9rufE7h8 @designscrazed
						@W3layouts @freshdesignweb</p>
					<div class="options">
						<a href="#"><span><i class="ion-reply"></i> replay</span></a> <a
							href="#"><span><i class="ion-social-twitter"></i>
								retweet</span></a> <a href="#"><span><i class="ion-heart"></i>
								favorite</span></a>
					</div>
				</div>
				<!-- /.item -->
				<div class="item">
					<p class="day">12 days ago</p>
					<p class="feed">We are glad to introduce our first HTML5/CSS3
						Template called “PATROS” -http://t.co/mL9rufE7h8 @designscrazed
						@W3layouts @freshdesignweb</p>
					<div class="options">
						<a href="#"><span><i class="ion-reply"></i> replay</span></a> <a
							href="#"><span><i class="ion-social-twitter"></i>
								retweet</span></a> <a href="#"><span><i class="ion-heart"></i>
								favorite</span></a>
					</div>
				</div>
				<!-- /.item -->
				<div class="item">
					<p class="day">20 days ago</p>
					<p class="feed">We are glad to introduce our first HTML5/CSS3
						Template called “PATROS” -http://t.co/mL9rufE7h8 @designscrazed
						@W3layouts @freshdesignweb</p>
					<div class="options">
						<a href="#"><span><i class="ion-reply"></i> replay</span></a> <a
							href="#"><span><i class="ion-social-twitter"></i>
								retweet</span></a> <a href="#"><span><i class="ion-heart"></i>
								favorite</span></a>
					</div>
				</div>
				<!-- /.item -->
				<div class="item">
					<p class="day">5 days ago</p>
					<p class="feed">We are glad to introduce our first HTML5/CSS3
						Template called “PATROS” -http://t.co/mL9rufE7h8 @designscrazed
						@W3layouts @freshdesignweb</p>
					<div class="options">
						<a href="#"><span><i class="ion-reply"></i> replay</span></a> <a
							href="#"><span><i class="ion-social-twitter"></i>
								retweet</span></a> <a href="#"><span><i class="ion-heart"></i>
								favorite</span></a>
					</div>
				</div>
				<!-- /.item -->
			</div>
			<!-- /.owl-carousel -->
		</div>
		<!-- /.container -->
	</section>
	<!-- /.twitter-feed -->


	<!-- Portfolio -->
	<section class="portfolio" id="portfolio">
		<div class="container section-wrapper">
			<h2 class="section-title black">portfolio</h2>
			<!-- /.section-title -->
			<div class="underline purple"></div>
			<div class="row">
				<div class="col-sm-4 col-xs-6">
					<div class="portfolio-item">
						<div class="portfolio-img">
							<img src="resources/assets/images/port-1.png" alt="port-1"
								class="port-item">
							<div class="portfolio-img-hover">
								<a href="#"><img src="resources/assets/images/plus.png"
									alt="plus" class="plus"></a>
							</div>
							<!-- /.portfolio-img-hover -->
						</div>
						<!-- /.portfolio-img -->
						<div class="portfolio-item-details">
							<div class="portfolio-item-name">
								Olivera Note <br>
								<small>Fashion</small>
							</div>
							<!-- /.portfolio-item-name -->
							<div class="port-heart">
								<i class="ion-ios-heart-outline"></i> 564
							</div>
							<!-- /.port-heart -->
						</div>
						<!-- /.portfolio-item-details -->
					</div>
					<!-- /.portfolio-item -->
				</div>
				<!-- /.col-md-4 -->
				<div class="col-sm-4 col-xs-6">
					<div class="portfolio-item">
						<div class="portfolio-img">
							<img src="resources/assets/images/port-2.png" alt="port-2"
								class="port-item">
							<div class="portfolio-img-hover">
								<a href="#"><img src="resources/assets/images/plus.png"
									alt="plus" class="plus"></a>
							</div>
							<!-- /.portfolio-img-hover -->
						</div>
						<!-- /.portfolio-img -->
						<div class="portfolio-item-details">
							<div class="portfolio-item-name">
								Shift Magazine <br>
								<small>Photography</small>
							</div>
							<!-- /.portfolio-item-name -->
							<div class="port-heart">
								<i class="ion-ios-heart-outline"></i> 564
							</div>
							<!-- /.port-heart -->
						</div>
						<!-- /.portfolio-item-details -->
					</div>
					<!-- /.portfolio-item -->
				</div>
				<!-- /.col-md-4 -->
				<div class="col-sm-4 col-xs-6">
					<div class="portfolio-item">
						<div class="portfolio-img">
							<img src="resources/assets/images/port-3.png" alt="port-3"
								class="port-item">
							<div class="portfolio-img-hover">
								<a href="#"><img src="resources/assets/images/plus.png"
									alt="plus" class="plus"></a>
							</div>
							<!-- /.portfolio-img-hover -->
						</div>
						<!-- /.portfolio-img -->
						<div class="portfolio-item-details">
							<div class="portfolio-item-name">
								Camp Pine Tree <br>
								<small>Web Design</small>
							</div>
							<!-- /.portfolio-item-name -->
							<div class="port-heart">
								<i class="ion-ios-heart-outline"></i> 564
							</div>
							<!-- /.port-heart -->
						</div>
						<!-- /.portfolio-item-details -->
					</div>
					<!-- /.portfolio-item -->
				</div>
				<!-- /.col-md-4 -->
				<div class="col-sm-4 col-xs-6">
					<div class="portfolio-item">
						<div class="portfolio-img">
							<img src="resources/assets/images/port-4.png" alt="port-4"
								class="port-item">
							<div class="portfolio-img-hover">
								<a href="#"><img src="resources/assets/images/plus.png"
									alt="plus" class="plus"></a>
							</div>
							<!-- /.portfolio-img-hover -->
						</div>
						<!-- /.portfolio-img -->
						<div class="portfolio-item-details">
							<div class="portfolio-item-name">
								Freeart App Design <br>
								<small>Photography</small>
							</div>
							<!-- /.portfolio-item-name -->
							<div class="port-heart">
								<i class="ion-ios-heart-outline"></i> 564
							</div>
							<!-- /.port-heart -->
						</div>
						<!-- /.portfolio-item-details -->
					</div>
					<!-- /.portfolio-item -->
				</div>
				<!-- /.col-md-4 -->
				<div class="col-sm-4 col-xs-6">
					<div class="portfolio-item">
						<div class="portfolio-img">
							<img src="resources/assets/images/port-5.png" alt="port-5"
								class="port-item">
							<div class="portfolio-img-hover">
								<a href="#"><img src="resources/assets/images/plus.png"
									alt="plus" class="plus"></a>
							</div>
							<!-- /.portfolio-img-hover -->
						</div>
						<!-- /.portfolio-img -->
						<div class="portfolio-item-details">
							<div class="portfolio-item-name">
								Large Poster Set <br>
								<small>Marketing</small>
							</div>
							<!-- /.portfolio-item-name -->
							<div class="port-heart">
								<i class="ion-ios-heart-outline"></i> 564
							</div>
							<!-- /.port-heart -->
						</div>
						<!-- /.portfolio-item-details -->
					</div>
					<!-- /.portfolio-item -->
				</div>
				<!-- /.col-md-4 -->
				<div class="col-sm-4 col-xs-6">
					<div class="portfolio-item">
						<div class="portfolio-img">
							<img src="resources/assets/images/port-6.png" alt="port-6"
								class="port-item">
							<div class="portfolio-img-hover">
								<a href="#"><img src="resources/assets/images/plus.png"
									alt="plus" class="plus"></a>
							</div>
							<!-- /.portfolio-img-hover -->
						</div>
						<!-- /.portfolio-img -->
						<div class="portfolio-item-details">
							<div class="portfolio-item-name">
								Skilet Album Cover <br>
								<small>Business</small>
							</div>
							<!-- /.portfolio-item-name -->
							<div class="port-heart">
								<i class="ion-ios-heart-outline"></i> 564
							</div>
							<!-- /.port-heart -->
						</div>
						<!-- /.portfolio-item-details -->
					</div>
					<!-- /.portfolio-item -->
				</div>
				<!-- /.col-md-4 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>
	<!-- /.portfolio -->


	<!-- Note -->
	<section class="note purple">
		<div class="container section-wrapper text-center">
			<p class="quote">“When you’re a carpenter making a beautiful
				chest of drawers, you’re not going to use a piece of plywood on the
				back, even though it faces the wall and nobody will see it. You’ll
				know it’s there, so you’re going to use a beautiful piece of wood on
				the back. For you to sleep well at night, the aesthetic, the
				quality, has to be carried all the way through.”</p>
			<!-- /.quote -->
			<div class="quoter">Steve Jobs</div>
		</div>
		<!-- /.container -->
	</section>
	<!-- /.note -->


	<!-- Fan Facts -->
	<section class="fun">
		<div class="container section-wrapper">
			<h2 class="section-title black">Fun Facts</h2>
			<!-- /.section-title -->
			<div class="underline purple"></div>
			<div class="row">
				<div class="col-sm-3 col-xs-6">
					<div class="fun-box">
						<div class="number">1956628</div>
						<div class="number-title">lines of code</div>
					</div>
					<!-- /.fun-box -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-sm-3 col-xs-6">
					<div class="fun-box">
						<div class="number">1473</div>
						<div class="number-title">cups of coffee</div>
					</div>
					<!-- /.fun-box -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-sm-3 col-xs-6">
					<div class="fun-box">
						<div class="number">500</div>
						<div class="number-title">projects delivered</div>
					</div>
					<!-- /.fun-box -->
				</div>
				<!-- /.col-md-3 -->
				<div class="col-sm-3 col-xs-6">
					<div class="fun-box">
						<div class="number">101</div>
						<div class="number-title">satisfied clients</div>
					</div>
					<!-- /.fun-box -->
				</div>
				<!-- /.col-md-3 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>
	<!-- /.fun -->

	<%@ include file="include/footer.jsp"%>
	<script src="resources/assets/js/jquery-1.11.2.min.js"></script>
	<script src="resources/assets/js/bootstrap.min.js"></script>
	<script src="resources/assets/js/owl.carousel.min.js"></script>
	<script src="resources/assets/js/contact.js"></script>
	<!-- // <script src="resources/assets/js/smoothscroll.js"></script> -->
	<script src="resources/assets/js/script.js"></script>


</body>
</html>