<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="kr">
<head>
<%@ include file="../include/topmenu.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="<c:url value="/resources/assets/signup/information_check.js"/>"></script>
<script src="<c:url value="/resources/assets/signup/checkEffect.js"/>"></script>
<link rel="stylesheet" href="<c:url value='/resources/assets/mypage/modify_update.css'/>">
<script src="<c:url value="/resources/assets/mypage/modify_update.js"/>"></script>
<title>D O ! P | 회원정보 수정</title>
</head>
<body>
	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/main/main">Home</a></li>
				<li class="active">&nbsp;회원정보 수정</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>
	
<div id="wrapper">
		<div id="img_main">	
			<div id="content">
				<form method="post" id="modify_form" action="${location}/user/modify_ok">				
					<h2>회원정보</h2>	
					<p>&nbsp;&nbsp;*는 수정불가능한 항목입니다.</p>
					<div id="id_field" class="inform_row">
						<label for="mid">*아이디 </label>
						<input type="text" id="username" name="mid" value="${user.mid}" readonly="readonly">
					</div>
					
					<div id="pwd_field" class="inform_row">
						<label for="pwd">패스워드 </label>
						<input type="password" id="mpwd" name="mpwd">
						<span class="input_check"></span>
						<i class="fa fa-check" aria-hidden="true"></i>
					</div>
					
					<div id="pwd_check_field" class="inform_row">
						<label for="pwd_check">비밀번호재확인 </label>
						<input type="password" id="password_check" name="password_check">
						<span class="input_check"></span>
						<i class="fa fa-check" aria-hidden="true"></i>
					</div>
					
					<div id="name_field" class="inform_row">
						<label for="name">이름 </label>
						<input type="text" id="name" name="mname" value="${user.mname}">
						<span class="input_check"></span>
						<i class="fa fa-check view" aria-hidden="true"></i>
					</div>
					
					<div id="tel_field" class="inform_row">
						<label for="tel">전화번호 </label>
						<input type="text" id="tel" name="mtel" value="${user.mtel}">
						<span class="input_check"></span>
						<i class="fa fa-check view" aria-hidden="true"></i>
					</div>
					
					<div id="email_field" class="inform_row">
						<label for="email">이메일</label>
						<div id="email_select">
							<input type="text" id="first_email" name="first_email" ><span id="esp">@</span>
							<input type="text" id="last_email" name="last_email" >
							<select name="email_box" id="email_box">
								<option value="empty" selected>직접입력</option>
								<option value="naver.com">naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="gmail.com">gmail.com</option>
								<option value="nate.com">nate.com</option>
								<option value="hanmir.com">hanmir.com</option>
								<option value="yahoo.com">yahoo.com</option>
							</select>
						</div>
						<input type="hidden" name="memail" id="mEmail" value="${user.memail}">
						<span class="input_check"></span>
						<i class="fa fa-check view" aria-hidden="true"></i>
					</div>
					
					<div id="gender_field" class="inform_row">
						<label for="gender">*성별 </label>
						<input type="text" id="gender" value="${user.mgender}" readonly="readonly">
					</div>
					
					<div id="date_field" class="inform_row">
						<label for="regdate">*가입일자 </label>
						<input type="text" id="regdate" value="<fmt:formatDate value="${user.mregdate}" pattern="yyyy-MM-dd HH:mm:ss"/>" readonly="readonly">
					</div>
					
					<div id="update_field" class="inform_row">
						<label for="update_date">*최근수정일자 </label>
						<input type="text" id="update_date" value="<fmt:formatDate value="${user.mupdatedate}" pattern="yyyy-MM-dd HH:mm:ss"/>" readonly="readonly">
					</div>
					
					<div id="age_field" class="inform_row">
						<label for="age">*나이 </label>
						<input type="text" id="age" value="${user.mage}"readonly="readonly">
					</div>
					
					<div class="submit_group">
						<input type="button" id="modifyBtn" value="수정">
						<input type="button" id="cancelBtn" value="취소">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="../include/footer.jsp"%>