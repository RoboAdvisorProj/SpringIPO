<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="kr">
<head>
<title>D O ! P O</title>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="location" value="${pageContext.request.contextPath}" />
</head>
<body>
	<%@ include file="../../include/topmenu.jsp"%>
	<!-- Section Background -->
	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/main/main">Home</a></li>
				<li class="active">&nbsp;적극투자형 리스트</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>
	<!-- /.section-background -->

	<div class="container" style="margin-top: 50px">
		<div class="box-header">
			<h3 class="box-title">적극투자형 리스트</h3>
		</div>

<div class="table-responsive">
		<table class="table table-bordered" style="margin-top: 50px">
			<tr>
				<th style="text-align: center;">번호</th>
				<th style="text-align: center;">제목</th>
				<th style="text-align: center;">작성자</th>
				<th style="text-align: center;">등록일</th>
				<th style="text-align: center;">조회수</th>
			</tr>
			<c:forEach items="${list}" var="boardVO" varStatus="status">
				<tr>
					<td class="col-md-1" style="text-align: center;">${boardVO.bno}</td>
					<td class="col-md-6"><a id="boardTitle"
						href="${location}/board/readPage${pageMaker.makeSearch(pageMaker.pageCri.page)
					}&bno=${boardVO.bno}">${boardVO.title} <strong>[ ${boardVO.replycnt} ]</strong>
					</a></td>
					<td class="col-md-2" style="text-align: center;">${boardVO.writer}</td>
					<td class="col-md-2" style="text-align: center;"><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
							value="${boardVO.regdate}" /></td>
					<td class="col-md-1" style="text-align: center;"><span class="badge bg-red">${boardVO.viewcnt}</span></td>
				</tr>
			</c:forEach>
		</table>
</div>
	</div>

	<div class="box-footer">
		<div class="text-center">
			<ul class="pagination pagination-lg" style="margin-right: 80px;">

				<c:if test="${pageMaker.prev}">
					<li><a
						href="listPage${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
				</c:if>

				<c:forEach begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }" var="idx">
					<li
						<c:out value="${pageMaker.pageCri.page == idx?'class =active':''}"/>>
						<a href="listPage${pageMaker.makeSearch(idx)}">${idx}</a>
					</li>
				</c:forEach>

				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<li><a
						href="listPage${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
				</c:if>

			</ul>
		</div>
	</div>
	<!-- /.box-footer-->

	<form id="jobForm">
		<input type='hidden' name="page" value=${pageMaker.pageCri.perPageNum}>
		<input type='hidden' name="perPageNum" value=${pageMaker.pageCri.perPageNum}>
	</form>


	<div style="width: 550px;" class="center-block clearfix">
		<div class='box-body'>
			<div class="col-xs-4">
				<select name="searchType" class="form-control">
					<option value="tcw"
						<c:out value="${cri.searchType eq 'n'?'selected':''}"/>>
						기업명 검색</option>
				</select>
			</div>
			<div class="col-xs-5">
				<input type="text" name='keyword' id="keywordInput"
					value='${cri.keyword}' class="form-control">
			</div>
			<button id='searchBtn' class="btn btn-primary">검색</button>


		</div>
	</div>
	<!-- 엔터키 눌렀을때 검색 버튼 동작 -->
	<script>
	$("#keywordInput").keyup(function(event) {
	    if (event.keyCode === 13) {
	        $("#searchBtn").click();
	    }
	});
	</script>
	<!-- 글쓰기,수정,삭제를 했을때 자바스크립트로 알림 -->
<!-- 	<script>
		var result = '${msg}';

		if (result == 'register success') {
			alert("글쓰기를 성공적으로 완료하였습니다.");
		} else if (result == 'modify success') {
			alert("글수정을 성공적으로 완료하였습니다.");
		} else if (result == 'remove success') {
			alert("글삭제를 성공적으로 완료하였습니다.");
		}
	</script> -->
	<script>
		$(document).ready(
				function() {
					$('#searchBtn').on(
							"click",
							function(event) {
								self.location = "listPage"
										+ '${pageMaker.makeQuery(1)}'
										+ "&searchType="
										+ $("select option:selected").val()
										+ "&keyword="
										+ $('#keywordInput').val();
							});
				});
	</script>
	<%@ include file="../../include/footer.jsp"%>
</body>
</html>
