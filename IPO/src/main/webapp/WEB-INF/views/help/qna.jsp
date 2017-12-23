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
<style>
.row {
	margin-right: 0px !important;
	margin-left: 0px !important;
}
</style>
</head>
<body>
	<%@ include file="../include/topmenu.jsp"%>
	<!-- Section Background -->
	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/main/main">Home</a></li>
				<li class="active">&nbsp;질의응답</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>
	<!-- /.section-background -->


	<!-- Contact with us -->
	<section class="contact section-wrapper" id="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-4 contact-item col-sm-6 col-xs-12">
					<i class="fa fa-map-marker fa-lg" aria-hidden="true"></i>
					<h3>Address</h3>
					<p class="contact">
						서울시 강남구 <br> 역삼동
					</p>
				</div>
				<div class="col-md-4 contact-item col-sm-6 col-xs-12">
					<i class="fa fa-phone fa-lg" aria-hidden="true"></i>
					<h3>Phone</h3>
					<p class="contact">
						회사 번호: 02-123-4567 <br> 핸드폰: 010-9999-9999
					</p>
				</div>
				<div class="col-md-4 contact-item col-sm-6 col-xs-12">
					<i class="fa fa-envelope fa-lg" aria-hidden="true"></i>
					<h3>Email Address</h3>
					<p class="contact">
						<a href="mailto:DO!PO@gmail.com">hidoipo@gmail.com</a> <br> <a
							href="www.themewagon.com">www.themewagon.com</a>
					</p>
				</div>

			</div>
			<form class="row form" name="form1" method="post">
				<h3 style="margin-left:15px;">운영자에게 문의하기</h3>
				<div class="col-sm-12 col-xs-12 form-group">
					<label class="sr-only">아이디</label> <input name="mid"
						class="form-control" type="text"
						value="${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}"
						readonly>
				</div>
				<div class="col-sm-12 col-xs-12 form-group">
					<label class="sr-only">Message</label>
					<textarea id="userEmail" name="memailContents" class="message form-control" 
					placeholder="불량 회원 신고, 사이트 에러등 운영자에게 무엇이든 요청하세요."
						rows="15"></textarea>
				</div>
				<input id="btnEmail" class="btn btn-primary pull-right" type="submit"
					value="메일 발송" style="margin-right: 15px">
			</form>
		</div>
	</section>
	<script>
		$(document).ready(function() {
			$("#btnEmail").click(function() {
				// 태크.val() : 태그에 입력된 값
				// 태크.val("값") : 태그의 값을 변경 
				var userEmail = $("#userEmail").val();
				if (userEmail == "") {
					alert("문의할 내용을 입력하세요.");
					$("#userEmail").focus(); // 입력포커스 이동
					return false; // 함수 종료
				}
				// 폼 내부의 데이터를 전송할 주소
				document.form1.action = "${location}/help/sendMail/manager"
				// 제출
				document.form1.submit();
			});
		});
	</script>
	<script type="text/javascript">
	var result= '${msg}';
	if (result=='success') {
		alert("고객님이 문의한 내용이 성공적으로 접수되었습니다.");
	}else if(result=='fail'){
		alert("이메일 발송이 실패하였습니다.")
	}
	</script>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>