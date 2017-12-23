<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="kr">
<!--<![endif]-->
<head>
<title>D O ! P O | 회원탈퇴</title>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="location" value="${pageContext.request.contextPath}"/>

</head>

<body>
	<%@ include file="../include/topmenu.jsp"%>
	<!-- Section Background -->
	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/main/main">Home</a></li>
				<li class="active">&nbsp;회원탈퇴</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>

	<div class="container" style="margin-top: 50px">
		<div class="alert alert-danger alert-dismissible" role="alert">
			<strong>필독!</strong>&nbsp;
			<p>회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p>
		</div>
		<i class="fa fa-check" aria-hidden="true"></i><strong>사용하고 계신 아이디(<span class='text-primary'>${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}</span>)는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</strong>
		<p><span class='text-danger'>탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가</span>하오니 신중하게 선택하시기 바랍니다.</p>
		<br/>
		
		<i class="fa fa-check" aria-hidden="true"></i>
		<strong><span class='text-danger'>탈퇴 후 회원정보는 모두 삭제</span>되며, 삭제된 데이터는 복구되지 않습니다.</strong>
		<p>삭제되는 내용을 확인하시고 필요한 데이터는 미리 백업을 해주세요.</p>
		<br/>
		<p><i class="fa fa-check" aria-hidden="true"></i><strong>탈퇴 후에도 게시판형 서비스에 등록한 게시물은 그대로 남아 있습니다.</strong></p>
		<p>게시판, 고객센터등에 올린 게시글 및 댓글은 탈퇴 시 자동 삭제되지 않고 그대로 남아 있습니다.</p>
		<p>삭제를 원하는 게시글이 있다면 반드시 탈퇴 전 비공개 처리하거나 삭제하시기 바랍니다. </p>
		<p>탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, 게시글을 임의로 삭제해드릴 수 없습니다.</p>
		<br/>
		<div class="check_wrap">
			<input type="checkbox" id="agree_check">
			<label for="agree_check">안내 사항을 모두 확인하였으며, 이에 동의합니다.</label>
		</div>
		<br/>
<input class="btn btn-danger" type="button" value="탈퇴" id="delete_btn" onclick="goNextPage('${location}/user/user_delete_ok');">
	</div>
	<script>
	var isChecked = false;

	$(document).ready(function(){	
		$("#agree_check").click(function(){
			if($("#agree_check").is(":checked"))
				isChecked=true;
			else
				isChecked=false;
		});

	});

	function goNextPage(path){
		if(isChecked){
			if(confirm("정말 탈퇴 하시겠습니까?"))
				location.href=path;
		}
		else
			alert("안내를 확인하고 동의하셔야 탈퇴가 가능합니다");
	}
	</script>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
