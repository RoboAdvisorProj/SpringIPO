<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="kr">
<head>
	<%@ include file="../include/topmenu.jsp"%>
<link rel="stylesheet" href="<c:url value="/resources/assets/css/faq.css" />">
<title>D O ! P O | 자주하는 질문</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="location" value="${pageContext.request.contextPath}" />
<script>
	$(document).ready(function(){
		var answers = $(".detail_answer")
		
		$.each(answers,function(){
			$(this).addClass("none");
		})
		
		$(".base_question").click(function(){
			$(this).parent().children(".detail_answer").toggleClass("none");
		})
	})
</script>
</head>
<body>

	<!-- Section Background -->
	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/main/main">Home</a></li>
				<li class="active">&nbsp;자주 하는 질문</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>
	<!-- /.section-background -->

	<div class="container"  style="margin-top: 50px">
		<div id="content">			
			<div class="article" id="use_site">
				<h2>DO!PO 이용 서비스</h2>
				<ul>
					<li><span class="base_question"><strong><span class='text-primary'>1.DO!PO는 어떻게 이용하나요?</span></strong></span>
						<div class="detail_answer">
						DO!PO는 회원들에게 자가진단을 해서 사용자의 주식 성향을 판별해주고, 주식 시장을 예측 서비스를 제공합니다.
						 또한, DO!PO 회원이 아닐시 일부 서비스 제약을 받습니다.</div>
					</li>
					<li><span class="base_question"><strong><span class='text-primary'>2.게시글에 전화번호,이메일을 기재해도 되나요?</span></strong></span>
						<div class="detail_answer">DO!PO에서는 무분별한 스팸 문자나 장난 전화 등을 막기 위해서 연락처 열람 시 해당 정보가 사이트에 기록되어 열람한 회원을 
																확인 할 수 있는 기능을 제공하고 있으며 운영에 필요한 주 수입원 중 하나이므로 불편하시더라도 연락처를 본문 등에 기재하지 않도록 부탁드립니다
						</div>
					</li>
					<li><span class="base_question"><strong><span class='text-primary'>3.사이트에 치명적인 오류나 건의사항이 있어요.</span></strong></span>
						<div class="detail_answer">DO!PO@gmail.com로 보내주시면 됩니다.
																치명적인 버그라던가 좋은 건의 사항인 경우에는 소정의 상품을 드리고 있으니 많이 제보해주세요</div>
					</li>

					<li><span class="base_question"><strong><span class='text-primary'>4.부적절한 게시글을 발견했어요 어떻게 하나요?</span></strong></span>
						<div class="detail_answer">기재가 되어선 안 되는 연락처라던가 부적절한 내용(음란, 정치적인 글, 비방)이 발견될 경우,즉시 글이 삭제되며, 
						또한, 명예훼손, 개인정보 유출, 분쟁 유발, 허위사실 유포 등의 글은 이용약관에 의해 제재는 물론 법률에 따라 처벌받을 수 있습니다.</div>
					</li>
				</ul>
			</div>
			
			<div class="article" id="use_member">
				<h2>DO!PO 회원 서비스</h2>
				<ul>
					<li><span class="base_question"><strong><span class='text-primary'>1.회원수정은 어떻게 하나요?</span></strong></span>
						<div class="detail_answer">로그인 하신후, 마이페이지로 들어가시면 바로 회원수정페이지로 링크가 됩니다.</div>
					</li>
					
					<li><span class="base_question"><strong><span class='text-primary'>2.회원 탈퇴는 어떻게 하나요?</span></strong></span>
						<div class="detail_answer">로그인 하신후, 마이페이지로 들어가시면 회원탈퇴가 있습니다. 여기서 진행하시면 됩니다.</div>
					</li>
					
					<li><span class="base_question"><strong><span class='text-primary'>3.아이디나 비밀번호 찾기는 어떻게 하나요?</span></strong></span>
						<div class="detail_answer">로그인 화면으로 가시면 밑에 '아이디 찾기와 비밀번호 찾기'가 있습니다. 회원가입시 입력한, 이메일주소로
																임시비밀 번호가 전송되며, 이 비밀 번호로 로그인후 회원 수정페이지에서 원하는 비밀번호로 다시 바꿔주시면 됩니다.</div>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<%@ include file="../include/footer.jsp"%>
</body>
</html>