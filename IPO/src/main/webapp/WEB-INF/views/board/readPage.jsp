<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<c:set var="location" value="${pageContext.request.contextPath}" />

<%@include file="../include/topmenu.jsp"%>
<section class="section-background">
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="${location}/main/main">Home</a></li>
			<li class="active">&nbsp;BOARD</li>
		</ol>
	</div>
	<!-- /.container -->
</section>

<div class="container">
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">글보기</h3>
					</div>
					<!-- /.box-header -->

					<form role="form" action="modifyPage" method="post">
						<input type='hidden' name='bno' value="${boardVO.bno}"> 
						<input type='hidden' name='page' value="${cri.page}"> 
						<input	type='hidden' name='perPageNum' value="${cri.perPageNum}">
						<input	type='hidden' name='searchType' value="${cri.searchType}">
						<input	type='hidden' name='keyword' value="${cri.keyword}">
					</form>

					<div class="box-body">
						<div class="form-group">
							<label for="exampleInputEmail1">번호</label> <input type="text"
								name='bno' class="form-control" value="${boardVO.bno}"
								readonly="readonly">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">작성자</label> <input type="text"
								name="writer" class="form-control" value="${boardVO.writer}"
								readonly="readonly">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">제목</label> <input type="text"
								name='title' class="form-control" value="${boardVO.title}"
								readonly="readonly">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">내용</label>
							<textarea class="form-control" name="content" rows="10"
								readonly="readonly">${boardVO.content}</textarea>
						</div>

					</div>
					<!-- /.box-body -->

					<div class="box-footer" style="margin-top: 50px">
						<button type="submit" class="btn btn-warning">수정</button>
						<button type="submit" class="btn btn-danger ">삭제</button>
						<button type="submit" class="btn btn-primary">목록보기</button>
					</div>


					<script>
						$(document).ready(function() {

							var formObj = $("form[role='form']");
			
							
							console.log(formObj);

							$(".btn-warning").on("click", function() {
								formObj.attr("action", "${location}/board/modifyPage");
								formObj.attr("method", "get");
								formObj.submit();
							});

							$(".btn-danger").on("click", function() {
								formObj.attr("action", "${location}/board/removePage");
								formObj.submit();
							});
							$(".btn-primary").on("click",function(){
								formObj.attr("method","get");
								formObj.attr("action","${location}/board/listPage");
								formObj.submit();
							});

						});
					</script>




				</div>
				<!-- /.box -->
			</div>
			<!--/.col (left) -->

		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@include file="../include/footer.jsp"%>