<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="noIE" lang="kr">
<!--<![endif]-->
<head>
<!-- meta -->
<title>D O ! P O</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="location" value="${pageContext.request.contextPath}" />
</head>

<body>
	<%@ include file="../include/topmenu.jsp"%>
	<!-- Section Background -->
	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/main/main">Home</a></li>
				<li class="active">&nbsp;contact</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>
	<!-- /.section-background -->


	<!-- Contact with us -->
	<section class="contact section-wrapper" id="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-3 contact-item col-sm-6 col-xs-12">
					<i class="ion-location"></i>
					<h3>Address</h3>
					<p class="contact">
						Hoffman Parkway, 353 <br> Monuntain View, USA
					</p>
				</div>
				<div class="col-md-3 contact-item col-sm-6 col-xs-12">
					<i class="ion-ios-telephone"></i>
					<h3>Phone</h3>
					<p class="contact">
						Local: 1-200-123-hello <br> Mobile: 2-800-123-hello
					</p>
				</div>
				<div class="col-md-3 contact-item col-sm-6 col-xs-12">
					<i class="ion-printer"></i>
					<h3>Fax</h3>
					<p class="contact">
						Office: 2148-287-8300 <br> Home: 2528-782-8200
					</p>
				</div>
				<div class="col-md-3 contact-item col-sm-6 col-xs-12">
					<i class="ion-ios-email"></i>
					<h3>Email Address</h3>
					<p class="contact">
						<a href="mailto:info@themewagon.com">info@themewagon.com</a> <br>
						<a href="www.themewagon.com">www.themewagon.com</a>
					</p>
				</div>


			</div>
			<!-- /.row -->
			<form class="row form">
				<h3>Leave A Message</h3>
				<div class="col-sm-4 col-xs-12 form-group">
					<label class="sr-only">Name</label> <input name="name"
						class="form-control" type="text" placeholder="First Name">
				</div>
				<!-- /.form-group -->
				<div class="col-sm-4 col-xs-12 form-group">
					<label class="sr-only">Email</label> <input name="email"
						class="form-control" type="email" placeholder="Email address">
				</div>
				<!-- /.form-group -->
				<div class="col-sm-4 col-xs-12 form-group">
					<label class="sr-only">Website</label> <input name="website"
						class="form-control" type="text" placeholder="Your website">
				</div>
				<!-- /.form-group -->
				<div class="row">
					<div class="col-md-12 col-xs-12 form-group">
						<label class="sr-only">Message</label>
						<textarea class="message form-control" placeholder="Write message"></textarea>
					</div>
					<!-- /.form-group -->
					<input class="btn btn-sub" type="submit" value="Send Message">
				</div>
			</form>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>
	<!-- /.contact -->

	<%@ include file="../include/footer.jsp"%>
</body>
</html>