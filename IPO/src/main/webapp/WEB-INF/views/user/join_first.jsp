<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="kr">
<head>
	<%@ include file="../include/topmenu.jsp"%>
<title>D O ! P O | 회원가입 약관동의</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="location" value="${pageContext.request.contextPath}" />
<script src="<c:url value="/resources/assets/signup/join_first.js"/>"></script>
<link rel="stylesheet" href="<c:url value="/resources/assets/signup/join_first.css"/>">
<style>
.form-control span {
    font-weight: bold;
    color: #328e9f;
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

<div id="content" style="margin-top:50px;">
		<h3>이용약관</h3>
		<form method="post" id="join_form" name="join_form" action="">
			<div class="article">
				<i class="fa fa-check-circle-o" id="all-check" aria-hidden="true"></i>
				<div class="agree">
					DO!PO 서비스 이용약관, 개인정보 수집 및 이용에 모두 동의합니다.
				</div>	
			</div>
			
			<div class="article">
				<i class="fa fa-check-circle-o" id="first-check" aria-hidden="true"></i>
				<div class="agree">
					DO!PO 서비스 이용약관 동의<span class="important">(필수 체크)</span>
				</div>
				<textarea class="form-control" rows="20" cols="110" readonly="readonly">
※제 1 장 일반사항※

제 1 조 (목적)
이 약관은 DO!PO(이하 "DOIPO")이 제공하는 온라인 서비스에의 등록 및 이용에 관한 기본적인 사항을 규정함을 그 목적으로 합니다.

제 2 조 (약관의 효력 및 변경)
1. 이 약관의 내용은 서비스 화면에 게시하거나 기타의 방법으로 회원에게 공지함으로써 효력을 발생합니다.
2. DO!PO는 합당한 사유가 발생할 경우에는 이 약관을 변경할 수 있고, 변경된 약관은 홈페이지 내에 공지하거나 e-mail을 통해 회원에게 공지하며, 공지와 동시에 그 효력이 발생됩니다. 이용자가 변경된 약관에 동의하지 않는 경우, 이용자는 본인의 회원등록을 취소 또는 회원탈퇴할 수 있으며 계속 사용의 경우는 약관 변경에 대한 동의로 간주됩니다.

제 3 조(약관 외 준칙)
본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신윤리위원회 심의규정, 정보통신 윤리강령, 프로그램보호법 및 기타 관련 법령의 규정에 의합니다.

제 4 조 (용어의 정의)
본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1. 이용(접수)자 : 본 약관에 따라 사이트가 제공하는 서비스를 받는 자
2. 가입 : 사이트가 제공하는 회원가입 양식에 해당 정보를 기입하고, 본 약관에 동의하여 이용계약을 완료시키는 행위
3. 회원 : 사이트에 개인정보를 제공하여 회원등록을 한 자로서 사이트가 제공하는 서비스를 이용할 수 있는 자.
4. 비밀번호 : 이용자와 회원ID가 일치하는지를 확인하고 통신상의 자신의 비밀보호를 위하여 이용자 자신이 선정한 문자와 숫자의 조합.
5. 탈퇴 : 회원이 회원스스로 이용계약을 종료시키는 행위.

※제 2 장 서비스 제공 및 이용※

제 5 조 (이용계약의 성립)
1. 이용계약은 신청자가 온라인으로 사이트에서 제공하는 소정의 회원가입신청 양식에서 요구하는 사항을 기록하여 가입을 완료하는 것으로 성립됩니다.
2. DO!PO 사이트는 다음 각 호에 해당하는 이용계약에 대하여는 가입을 취소할 수 있습니다.
1) 다른 사람의 명의를 사용하여 신청하였을 때
2) 회원가입신청서의 내용을 허위로 기재하여 신청하였을 때
3) 다른 사람의 사이트 서비스 이용을 방해하거나 그 정보를 도용하는 등의 행위를 하였을 때
4) 사이트를 이용하여 법령과 본 약관이 금지하는 행위를 하는 경우
5) 기타 DO!PO가 정한 이용신청요건이 미비 되었을 때

제 6 조 (등록사항의 변경 및 취소)
1. 회원은 등록신청시 기재한 사항이 변경되었을 경우에는 지체없이 “개인정보내역수정”을 통해 변경해야 합니다.
2. 회원이 등록을 취소하고자 하는 때에는 회원 본인이 “회원탈퇴”를 통해 탈퇴 신청을 하여야 합니다.

제 7 조 (회원정보 사용에 대한 동의)
1. 회원의 개인정보는 공공기관의 개인정보보호에 관한 법률에 의해 보호됩니다.
2. DO!PO 사이트의 회원 정보는 다음과 같이 사용, 관리, 보호됩니다.
1) 개인정보의 사용: DO!PO 사이트는 서비스 제공과 관련해서 수집된 회원의 신상정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다. 단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 설치확인 및 사후관리 위탁용역업체가 설치확인 및 사후관리를 수행하는 경우, 지방자치단체 보조금 지급을 위한 지방자치단체장의 요청이 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보통신윤리위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우, 귀하가 DO!PO 사이트에 제공한 개인정보를 스스로 공개한 경우에는 그러하지 않습니다.
2) 개인정보의 관리: 귀하는 개인정보의 보호 및 관리를 위하여 서비스의 개인정보관리에서 수시로 귀하의 개인정보를 변경할 수 있습니다.
3) 개인정보의 보호: 귀하의 개인정보는 오직 귀하와 귀하의 요구에 의해 사이트 관리자만이 열람/수정/삭제할 수 있으며, 이는 전적으로 귀하의 ID와 비밀번호에 의해 관리되고 있습니다. 따라서 타인에게 본인의 ID와 비밀번호를 알려주어서는 안되며, 작업 종료시에는 반드시 로그아웃 해주시기 바랍니다.

제 8 조 (사용자의 정보 보안)
1. 가입 신청자가 사이트 서비스 가입 절차를 완료하는 순간부터 귀하는 입력한 정보의 비밀을 유지할 책임이 있으며, 회원의 ID와 비밀번호를 사용하여 발생하는 모든 결과에 대한 책임은 회원 본인에게 있습니다.
2. ID와 비밀번호에 관한 모든 관리의 책임은 회원에게 있으며, 회원의 ID나 비밀번호가 부정하게 사용되었다는 사실을 발견한 경우에는 즉시 DO!PO에 그 사실을 통보해야 합니다. 통보를 하지 않음으로 인한 모든 책임은 회원 본인에게 있습니다.
3. 이용자는 사이트에서 서비스사용 종료시마다 정확히 접속을 종료해야 하며, 정확히 종료하지 아니함으로써 제3자가 귀하에 관한 정보를 이용하게 되는 등의 결과로 인해 발생하는 손해 및 손실에 대하여 DO!PO는 책임을 부담하지 아니합니다.

제 9 조 (서비스의 중지 및 제한)
1. DO!PO는 이용자가 본 약관의 내용에 위배되는 행동을 한 경우나 다음 각 호에 해당하는 경우 서비스의 중지 및 사용을 제한할 수 있습니다.
1) 서비스용 설비의 보수 또는 공사로 인한 부득이한 경우
2) 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 때
3) 국가비상사태, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 서비스 이용에 지장이 있는 때

※제 3 장 의무 및 책임※

제 10 조 (DO!PO의 의무)
DO!PO는 회원의 신상정보를 본인의 승낙없이 제3자에게 누설, 배포하지 않습니다. 다만, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 설치확인 및 사후관리 위탁용역업체가 설치확인 및 사후관리를 수행하는 경우, 지방자치단체 보조금 지급을 위한 지방자치단체장의 요청이 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보통신윤리위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우, 귀하가 DO!PO 사이트에 제공한 개인정보를 스스로 공개한 경우에는 그러하지 않습니다.

제 11 조 (회원의 의무)
1. 회원 가입시에 요구되는 정보는 정확하게 기입하여야 합니다. 또한 이미 제공된 귀하에 대한 정보가 정확한 정보가 되도록 유지, 갱신하여야 하며, 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.
2. 회원은 DO!PO의 사전 승낙 없이 서비스를 이용하여 어떠한 영리행위도 할 수 없습니다.

제 12 조 (양도금지)
회원이 서비스의 이용권한, 기타 이용계약 상 지위를 타인에게 양도, 증여할 수 없습니다.

제 13 조 (손해배상)
DO!PO는 서비스 이용과 관련하여 회원에게 발생한 손해 중 회원의 고의, 과실에 의한 손해에 대하여 책임을 부담하지 아니합니다.

제 14 조 (면책조항)
1. DO!PO는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.
2. DO!PO는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.
3. DO!PO는 회원이나 제3자에 의해 표출된 의견을 승인하거나 반대하거나 수정하지 않습니다. DO!PO는 어떠한 경우라도 회원이 서비스에 담긴 정보에 의존해 얻은 이득이나 입은 손해에 대해 책임이 없습니다.

제 15 조 (관할법원)
서비스 이용으로 발생한 분쟁에 대해 소송이 제기될 경우 DO!PO 소재지를 관할하는 법원을 관할법원으로 합니다.

[부 칙] (시행일) 이 약관은 2018년 02월 12일부터 시행합니다.
</textarea>
			</div>
			
			<div class="article">
				<i class="fa fa-check-circle-o" id="second-check" aria-hidden="true"></i>
				<div class="agree">
					DO!PO 개인정보 수집및 이용동의<span class="important">(필수 체크)</span>
				</div>
				<textarea class="form-control" rows="20" cols="110" readonly="readonly">
※개인정보 수집 및 이용※
DO!PO(이하 “DOIPO”이라 함) 홈페이지에서 수집하게 될 개인정보는 [개인정보보호법] 제15조에 따라 개인정보의 수집,이용 시 본인의 동의를 얻어야 하는 정보입니다. 이에 DO!PO는 아래 내용과 같이 개인정보를 수집·이용하고자 합니다. 홈페이지 이용자는 동의를 거부할 수 있습니다. 다만, 이 경우 회원가입 및 제공 서비스에 제한이 있을 수 있습니다.

[개인정보의 처리 목적] 

DO!PO는 해당 업무 등을 위해 개인정보를 수집,이용합니다. 수집된 개인정보는 정해진 목적 이외의 용도로는 이용되지 않으며, 수집 목적 등이 변경될 경우에는 회원가입자에게 알리고 동의를 받을 예정입니다.

[수집하는 개인정보의 항목] 

가. DO!PO는 필요한 최소한의 개인정보를 수집하며, 이에 대한 동의를 얻고 있습니다. 수집하는 개인정보 항목은 다음과 같습니다.
- 필수항목 : 성명(한글), 아이디, 비밀번호, 성별, 주소, 핸드폰번호, 이메일주소
- 선택항목 : 전화번호

나. 서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다. 
- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록

[개인정보 수집 및 이용 목적] 

DO!PO은 다음과 같은 이유로 개인정보를 수집합니다. 

가. 회원관리 
- 해당 업무 운영을 위한 회원 서비스 제공 및 본인확인
- 가입의사 확인 및 가입 사실 입증
- 고지사항 전달 및 민원처리 
나. 기타 원활한 양질의 서비스 제공 

[개인정보 보유 및 이용기간] 
정보주체 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다. 

가. 보존근거 : 가입 및 서비스 정보 제공 

나. 보존기간 : 회원탈퇴시까지 

[동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익] 

회원가입 시 개인정보 수집 동의를 거부하실 수 있으며, 동의를 거부하실 경우 회원가입 및 해당사이트의 이용이 불가능함을 알려 드립니다.

[정보담당 문의처]
010-9510-7717
010-7633-7290

[E-mail]
hidoipo@gmail.com 

이상 DO!PO의 개인정보보호정책은 2018년 02월 12일부터 시행합니다.

최종갱신일 : 2018년 02월
				</textarea>
			</div>
			<div class="link_group">
				<a class="link" id="agree_link" onclick="nextPage('${location}/user/join_second')">동의</a>
				<a class="link" id="disAgree_link" onclick="location.href='${location}/main/main'">취소</a>
			</div>
		</form>
	</div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>