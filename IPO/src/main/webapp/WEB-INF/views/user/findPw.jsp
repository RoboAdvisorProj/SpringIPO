<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="kr">
<head>
<title>D O ! P O | 비밀번호 찾기</title>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="location" value="${pageContext.request.contextPath}" />

</head>
<body>
	<%@ include file="../include/topmenu.jsp"%>

	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/user/login">로그인</a></li>
				<li class="active">&nbsp;비밀번호 찾기</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>


	<div class="container" style="margin-top: 50px">
		<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-warning">
				<div class="panel-heading">
					D&nbsp;O&nbsp;!&nbsp;P&nbsp;O
					<p>비밀번호 찾기 페이지입니다.</p>
				</div>
				<br>
				<div class="panel-body">

					<form id="login-form" role="form" name="form1" method="post">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-user fa"
								aria-hidden="true"></i></span> <input type="text" class="form-control"
								name="mid" id="userId" placeholder="아이디를 입력하세요." />
						</div>
						<br />
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-envelope"
								aria-hidden="true"></i> </span> <input type="text" class="form-control"
								name="memail" id="userEmail" placeholder="이메일을 입력하세요." />
						</div>
						<br />
						<div class="input-group center-block">
							<c:if test="${resultSuccessMsg!=null}">
								<div class="alert alert-success alert-dismissible" role="alert">
									<button type="button" class="close" data-dismiss="alert"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<strong>성공!</strong>&nbsp;
									<c:out value="${resultSuccessMsg}" />
								</div>
							</c:if>
						</div>
						<div class="input-group center-block">
							<c:if test="${resultErrorMsg!=null}">
								<div class="alert alert-danger alert-dismissible" role="alert">
									<button type="button" class="close" data-dismiss="alert"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<strong>실패!</strong>&nbsp;
									<c:out value="${resultErrorMsg}" />
								</div>
							</c:if>
						</div>
						<div class="input-group center-block">
							<c:if test="${resultFailIdMsg!=null}">
								<div class="alert alert-danger alert-dismissible" role="alert">
									<button type="button" class="close" data-dismiss="alert"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<strong>실패!</strong>&nbsp;
									<c:out value="${resultFailIdMsg}" />
								</div>
							</c:if>
						</div>
						<br />
						<div class="form-group">
							<div class="col-md-12 control">
								<div style="border-top: 1px solid #888; padding-top: 15px;">
									<span class='text-danger'>가입하신 이메일로 임시 발급한 비밀번호를
										전송해드리겠습니다.</span>
								</div>
							</div>
						</div>
						<div style="margin-top: 50px;">
							<button id="btnEmail" type="submit"
								class="form-control btn btn-warning">이메일 전송</button>
						</div>
						<br />
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$("#btnEmail").click(function() {
				// 태크.val() : 태그에 입력된 값
				// 태크.val("값") : 태그의 값을 변경 
				var userId = $("#userId").val();
				var userEmail = $("#userEmail").val();
				if (userId == "") {
					alert("아이디를 입력하세요.");
					$("#userId").focus(); // 입력포커스 이동
					return false; // 함수 종료
				}
				if (userEmail == "") {
					alert("이메일을 입력하세요.");
					$("#userEmail").focus();
					return false;
				}
				// 폼 내부의 데이터를 전송할 주소
				document.form1.action = "${location}/user/sendMail/password"
				// 제출
				document.form1.submit();
			});
		});
	</script>
	<%@ include file="../include/footer.jsp"%>

</body>
</html>