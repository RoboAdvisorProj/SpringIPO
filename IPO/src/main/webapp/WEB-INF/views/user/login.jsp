<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="kr">
<head>
<title>D O ! P O | 로그인</title>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="location" value="${pageContext.request.contextPath}" />
<style>
.panel-primary {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19) !important;
}
</style>
</head>
<body>
	<%@ include file="../include/topmenu.jsp"%>

	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/main/main">Home</a></li>
				<li class="active">&nbsp;로그인</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>


	<div class="container" style="margin-top: 50px">
		<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-primary">
				<div class="panel-heading">
					D&nbsp;O&nbsp;!&nbsp;P&nbsp;O
					<p>환영합니다!</p>
				</div>
				<br>
				<div class="panel-body">

					<form id="login-form" role="form" name="form1" method="post">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-user fa"
								aria-hidden="true"></i></span> <input type="text" class="form-control"
								name="mid" id="userId" placeholder="아이디를 입력하세요." />
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon"><i
								class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
								type="password" class="form-control" name="mpwd" id="userPw"
								placeholder="비밀번호를 입력하세요." />
						</div>
						<br/>
						<div class="input-group center-block">
							<c:if test="${msg == 'failure'}">
								<div class="alert alert-danger alert-dismissible" role="alert">
									<button type="button" class="close" data-dismiss="alert"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<strong>경고!</strong> 아이디 또는 비밀번호가 일치하지 않습니다.
								</div>
							</c:if>
						</div>

						<br>
						<div class="checkbox icheck">
							<label><input type="checkbox" id="remember_me"
								name="_spring_security_remember_me"> 사용자 정보 저장 </label>
						</div>
						<div>
							<a href="${location}/user/findId" id="search_account">아이디 찾기</a>
							&nbsp;/&nbsp;
							<a href="${location}/user/findPw" id="search_account">비밀번호 찾기</a>
						</div>
						<br>
						<div>
							<button id="btnLogin" type="submit"
								class="form-control btn btn-primary">로그인</button>
						</div>
						<br>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					</form>

				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$("#btnLogin").click(function() {
				// 태크.val() : 태그에 입력된 값
				// 태크.val("값") : 태그의 값을 변경 
				var userId = $("#userId").val();
				var userPw = $("#userPw").val();
				if (userId == "") {
					alert("아이디를 입력하세요.");
					$("#userId").focus(); // 입력포커스 이동
					return false; // 함수 종료
				}
				if (userPw == "") {
					alert("비밀번호를 입력하세요.");
					$("#userPw").focus();
					return false;
				}
				// 폼 내부의 데이터를 전송할 주소
				document.form1.action = "${location}/user/loginPost"
				// 제출
				document.form1.submit();
			});
		});
	</script>
	<script>
	var result = '${msg}';

	if (result == 'usersignup success') {
		alert("${user}님 DO!PO 회원이 되신 걸 진심으로 환영합니다.\n로그인 해주세요");
	}
	</script>
	<%@ include file="../include/footer.jsp"%>

</body>
</html>