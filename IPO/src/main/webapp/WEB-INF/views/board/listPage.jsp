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

		<table class="table table-bordered" style="margin-top: 50px">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
			<c:forEach items="${list}" var="boardVO">
				<tr>
					<td>${boardVO.bno}</td>
					<td><a href="${location}/board/readPage${pageMaker.makeQuery(pageMaker.pageCri.page)
					}&bno=${boardVO.bno}">${boardVO.title}</a></td>
					<td>${boardVO.writer}</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
							value="${boardVO.regdate}" /></td>
					<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
				</tr>
			</c:forEach>
		</table>
		<a href="${location}/board/register"
			class="btn btn-primary pull-right" role="button">글쓰기</a>
	</div>

	<div class="box-footer">
		<div class="text-center">
			<ul class="pagination">

				<c:if test="${pageMaker.prev}">
					<li><a
						href="listPage${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
				</c:if>

				<c:forEach begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }" var="idx">
					<li
						<c:out value="${pageMaker.pageCri.page == idx?'class =active':''}"/>>
						<a href="listPage${pageMaker.makeQuery(idx)}">${idx}</a>
					</li>
				</c:forEach>

				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<li><a
						href="listPage${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
				</c:if>

			</ul>
		</div>
	</div>
	<!-- /.box-footer-->
	
<form id="jobForm">
  <input type='hidden' name="page" value=${pageMaker.pageCri.perPageNum}>
  <input type='hidden' name="perPageNum" value=${pageMaker.pageCri.perPageNum}>
</form>



	<script>
		var result = '${msg}';

		if (result == 'register success') {
			alert("글쓰기를 성공적으로 완료하였습니다.");
		}
		else if(result == 'modify success') {
			alert("글수정을 성공적으로 완료하였습니다.");
		}
		else if(result == 'remove success') {
			alert("글삭제를 성공적으로 완료하였습니다.");
		}
	</script>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>