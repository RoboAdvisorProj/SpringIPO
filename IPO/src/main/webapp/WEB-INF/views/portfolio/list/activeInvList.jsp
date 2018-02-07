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

		<div class="container">
					<a href="#none" class="pull-right" data-toggle="modal" 
					style="margin-right:20px;"
						data-target="#myModal"><strong>리스트 상세설명 보기</strong></a>
					<!-- Trigger the modal with a button -->
					<!-- Modal -->
					<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">리스트 상세설명</h4>
								</div>
								<div class="modal-body">

									<dl>
										<dt>종목코드</dt>
										<dd>각 종목의 고유번호로 거래소에서 사용되는 코드입니다.</dd>
										<br/>

										<dt>주식명</dt>
										<dd>해당 주식을 발행한 회사명 입니다.</dd>
										<br/>

										<dt>현재가(종가)</dt>
										<dd>매일 장 마감(15:30) 시 최종 가격입니다.</dd>
										<br/>

										<dt>ROE</dt>
										<dd>기업의 순수 자본 대비 당기순이익 비율입니다.</dd>
										<br/>

										<dt>BETA</dt>
										<dd>해당 종목의 소속 시장(코스피 혹은 코스닥) 대비 몇 배나 수익률을 기록했는지 나타냅니다.</dd>
										<br/>
										
										<dt>일일수익률</dt>
										<dd>전일 대비 주식가격 변동분 입니다.</dd>
										<br/>
									</dl>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">닫기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				
<div class="table-responsive">
		<table class="table table-bordered" style="margin-top: 50px">
		<tr>
				<th style="text-align: center;">종목코드</th>
				<th style="text-align: center;">주식명</th>
				<th style="text-align: center;">현재가(종가)</th>
				<th style="text-align: center;">ROE(%)</th>
				<th style="text-align: center;">BETA</th>
				<th style="text-align: center;">일일수익률(%)</th>
			</tr>
			<c:forEach items="${list}" var="indicatorVO" varStatus="status">
				<tr>
					<td class="col-md-2" style="text-align: center;">${indicatorVO.code}</td>
					<td class="col-md-2" style="text-align: center;">${indicatorVO.name}</td>
					<td class="col-md-2" style="text-align: center;">${indicatorVO.price}</td>
					<td class="col-md-2" style="text-align: center;">${indicatorVO.roe}</td>
					<td class="col-md-2" style="text-align: center;">${indicatorVO.beta}</td>
				<c:choose> 
					<c:when test="${indicatorVO.chan>0}">
					<td class="col-md-2" style="text-align: center; color: red; "><small>▲</small> +${indicatorVO.chan}</td>
					</c:when>
					<c:when test="${indicatorVO.chan<0}">
					<td class="col-md-2" style="text-align: center; color: blue; "><small>▼</small> ${indicatorVO.chan}</td>
					</c:when>
					<c:otherwise>
					<td class="col-md-2" style="text-align: center; color: black;">${indicatorVO.chan}</td>
					</c:otherwise>
				</c:choose>
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
						href="activeInvList${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
				</c:if>

				<c:forEach begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }" var="idx">
					<li
						<c:out value="${pageMaker.pageCri.page == idx?'class =active':''}"/>>
						<a href="activeInvList${pageMaker.makeSearch(idx)}">${idx}</a>
					</li>
				</c:forEach>

				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<li><a
						href="activeInvList${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
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
					<option value="n"
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

	<script>
		$(document).ready(
				function() {
					$('#searchBtn').on(
							"click",
							function(event) {
								self.location = "activeInvList"
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
