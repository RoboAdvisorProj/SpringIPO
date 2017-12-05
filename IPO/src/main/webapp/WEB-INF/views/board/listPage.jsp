<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="noIE" lang="kr">
<!--<![endif]-->
<head>
<title>D O ! P O</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<c:set var="location" value="${pageContext.request.contextPath}" />
<style>
.col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3,
	.col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9,
	.col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3,
	.col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9,
	.col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3,
	.col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9,
	.col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3,
	.col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
	padding-right: 5px !important;
	padding-left: 5px !important;
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
				<li class="active">&nbsp;BOARD</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>
	<!-- /.section-background -->

	<div class="container" style="margin-top: 50px">
		<div class="box-header">
			<h3 class="box-title">자유게시판</h3>
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
			<c:forEach items="${list}" var="boardVO">
				<tr>
					<td class="col-md-1" style="text-align: center;">${boardVO.bno}</td>
					<td class="col-md-6"><a
						href="${location}/board/readPage${pageMaker.makeSearch(pageMaker.pageCri.page)
					}&bno=${boardVO.bno}">${boardVO.title}</a></td>
					<td class="col-md-2" style="text-align: center;">${boardVO.writer}</td>
					<td class="col-md-2" style="text-align: center;"><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
							value="${boardVO.regdate}" /></td>
					<td class="col-md-1" style="text-align: center;"><span class="badge bg-red">${boardVO.viewcnt}</span></td>
				</tr>
			</c:forEach>
		</table>
</div>
		<a href="${location}/board/register"
			class="btn btn-primary pull-right" role="button">글쓰기</a>
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
		<input type='hidden' name="perPageNum"
			value=${pageMaker.pageCri.perPageNum}>
	</form>


	<div style="width: 550px;" class="center-block clearfix">
		<div class='box-body'>
			<div class="col-xs-4">
				<select name="searchType" class="form-control">
					<option value="tcw"
						<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
						통합 검색</option>
					<option value="t"
						<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
						제목</option>
					<option value="c"
						<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
						내용</option>
					<option value="w"
						<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
						작성자</option>
					<option value="tc"
						<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
						제목 + 내용</option>
					<option value="cw"
						<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
						내용 + 작성자</option>
				</select>
			</div>
			<div class="col-xs-5">
				<input type="text" name='keyword' id="keywordInput"
					value='${cri.keyword }' class="form-control">
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
	<script>
		var result = '${msg}';

		if (result == 'register success') {
			alert("글쓰기를 성공적으로 완료하였습니다.");
		} else if (result == 'modify success') {
			alert("글수정을 성공적으로 완료하였습니다.");
		} else if (result == 'remove success') {
			alert("글삭제를 성공적으로 완료하였습니다.");
		}
	</script>
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

	<%@ include file="../include/footer.jsp"%>
</body>
</html>
