<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="kr">
<head>
<%@ include file="../include/topmenu.jsp"%>
<title>D O ! P O | 회원가입</title>
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="location" value="${pageContext.request.contextPath}" />
<script src="<c:url value="/resources/assets/signup/information_check.js"/>"></script>
<script src="<c:url value="/resources/assets/signup/checkEffect.js"/>"></script>
<script src="<c:url value="/resources/assets/signup/join_second.js"/>"></script>
<link rel="stylesheet" href="<c:url value="/resources/assets/signup/join_second.css"/>">
<script>
	/* 스프링 시큐리티의 CSRF라는 기능으로 인해 POST방식으로 보낼때 CSRF처리를 해줘야함. AJAX에서 POST요청을함으로 로딩과 동시에 CSRF처리 */
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	
	$(document).ajaxSend(function(e, xhr, options) {
	    xhr.setRequestHeader(header, token);
	});
	/* --------------------------------------------------- */
	function idCheckAjax(){
		var mid = $("#username").val()
		
		var data={
			mid:mid
		}
		
		$.ajax({
			type:"POST",
			url:"${location}/user/isIdExist",
			headers:{
				"Content-Type":"application/json; charset=UTF-8"
			},
			data:JSON.stringify(data),
			success:function(msg){
				if(msg == "possible"){
					$("#id_field > .input_check").css("color","green").text("사용가능한 아이디입니다")
					 successCheckEffect($("#id_field"));
				}
				else
					$("#id_field > .input_check").css("color","red").text("이미 있는 아이디입니다")
			}
		})
	}
</script>
<style>
.container {
    /* width: 1170px; */
}
.h3, h3 {
    font-size: 24px;
    margin-left: 120px;
}
#join_second_form{
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
</style>
</head>
<body>


	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/main/main">Home</a></li>
				<li class="active">&nbsp;회원가입</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>


	<div class="container">
		<h3>기본정보입력</h3>
		<form  action="" id="join_second_form" method="post" >
			<div id="id_field" class="join_row">
				<label for="id">아이디 </label>
				<input type="text" id="username" name="mid" placeholder="ID 입력">
				<span class="input_check"></span>
				<i class="fa fa-check" aria-hidden="true"></i>
			</div>
			
			<div id="pwd_field" class="join_row">
				<label for="pwd">비밀번호 </label>
				<input type="password" id="password" name="mpwd" placeholder="영문,숫자,특수문자혼합하여 8~20자리입력">
				<span class="input_check"></span>
				<i class="fa fa-check" aria-hidden="true"></i>
			</div>
			
			<div id="pwd_check_field" class="join_row">
				<label for="pwd_check">비밀번호재확인 </label>
				<input type="password" id="password_check" name="password_check" placeholder="패스워드 재확인">
				<span class="input_check"></span>
				<i class="fa fa-check" aria-hidden="true"></i>
			</div>
			
			<div id="name_field" class="join_row">
				<label for="name">이름 </label>
				<input type="text" id="name" name="mname" placeholder="이름 입력">
				<span class="input_check"></span>
				<i class="fa fa-check" aria-hidden="true"></i>
			</div>
			
			<div id="age_field" class="join_row">
				<label for="age">나이</label>
				<input type="text" id="age" name="mage" placeholder="나이 입력" onkeydown="javascript:onlyNumber(this)">
				<span class="input_check"></span>
				<i class="fa fa-check" aria-hidden="true"></i>
			</div>
			
			<div id="gender_field" class="join_row">
				<label for="gender_box">성별 </label>
				<select name="mgender" id="gender_box">
					<option value="M">남자</option>
					<option value="W">여자</option>
				</select>
			</div>
			
			<div id="email_field" class="join_row">
				<label for="email">이메일</label>
				<input type="text" id="first_email" name="first_email" placeholder="이메일 ID">@
				<input type="text" id="last_email" name="last_email" placeholder="직접입력">
				<select name="email_box" id="email_box">
					<option value="empty" selected>직접입력</option>
					<option value="naver.com">naver.com</option>
					<option value="daum.net">daum.net</option>
					<option value="gmail.com">gmail.com</option>
					<option value="nate.com">nate.com</option>
					<option value="hanmir.com">hanmir.com</option>
					<option value="yahoo.com">yahoo.com</option>
				</select>
				<input type="hidden" name="memail" id="mEmail">
				<span class="input_check"></span>
				<i class="fa fa-check" aria-hidden="true"></i>
			</div>
			
			<div id="tel_field" class="join_row">
				<label for="tel">전화번호</label>
				<input type="text" id="tel" name="mtel" placeholder="'-'를 제외하고 입력하세요">
				<span class="input_check"></span>
				<i class="fa fa-check" aria-hidden="true"></i>
			</div>
			
			<!-- <input type="hidden" name="authority" value="ROLE_USER"> -->
			
			<div class="submit_group">
				<input type="button" id="joinBtn" value="가입" onclick="goNextPage('${location}/user/signupSuccess')">
				<input type="button" id="cancelBtn" value="취소" onclick="exitPage('${location}/main/main')">
			</div>
		</form>
	</div>


	<%@ include file="../include/footer.jsp"%>
</body>
</html>