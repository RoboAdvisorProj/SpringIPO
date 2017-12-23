<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="kr">
<head>
<title>D O ! P O</title>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="location" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="<c:url value="/resources/assets/css/mailbox.css"/>">
<style>
.fileDrop {
	width: 100%;
	height: 100px;
	border: 1px dotted gray;
	background-color: #fff;
	margin: auto;
}
</style>
</head>
<body>
	<%@ include file="../include/topmenu.jsp"%>
	<!-- Main content -->
	<section class="section-background">
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="${location}/main/main">Home</a></li>
			<li class="active">&nbsp;글쓰기</li>
		</ol>
	</div>
</section>
	<div class="container" style="margin-top: 50px">
		<section class="content">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">
					<!-- general form elements -->
					<div class="box box-primary">
						<div class="box-header">
							<h3 class="box-title">글쓰기</h3>
						</div>
						<!-- /.box-header -->

	<sec:authorize access="isAuthenticated()"> 
	  		<sec:authentication property="principal" var="user"/>
						<form id='registerForm' role="form" method="post">
							<div class="box-body">
								<div class="form-group">
									<label for="exampleInputEmail1">작성자</label> <input type="text"
										name="writer" class="form-control" value="${user.username}" readonly="readonly">
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">제목</label> <input id="title" type="text"
										name='title' class="form-control" placeholder="제목을 입력하세요">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">내용</label>
									<textarea id="contents" class="form-control" name="content" rows="15" 
									placeholder="게시판에 글쓰기를 하는 경우, 본문에 개인정보(주민등록번호, 성명, 연락처 등)가 포함되어 게시되지 않도록 유의하시기 바랍니다.
개인정보를 포함하여 게시하는 경우에는 불특정 다수에게 개인정보가 노출되어 악용될 수 있으며,
특히, 타인의 개인정보가 노출되는 경우에는 개인정보보호법에 따라 처벌을 받을 수 있음을 알려드립니다."></textarea>
								</div>
									<div class="form-group">
									<label for="exampleInputEmail1">아래 빈곳에 파일을 끌어당겨서 올려주세요.</label>
									<div class="fileDrop"></div>
							</div>
							<ul class="mailbox-attachments clearfix uploadedList" style="list-style:none;">
							</ul>
							</div>
							<div class="box-footer">
								<button type="submit" class="btn btn-warning pull-right">취소</button>
								<button id="registerSuccess" type="submit" class="btn btn-primary pull-right" style="margin-right:5px">완료</button>
							</div>
						</form>
				</sec:authorize>

					</div>
					<!-- /.box -->
				</div>
				<!--/.col (left) -->

			</div>
			<!-- /.row -->
		</section>
	</div>
	<!-- /.content -->
	<!-- /.content-wrapper -->

	<script type="text/javascript" src="<c:url value="/resources/assets/js/upload.js"/>"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
	
	<script id="template" type="text/x-handlebars-template">
<li>
  <span class="mailbox-attachment-icon has-img">
<img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	<a href="{{fullName}}" class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
	</span>
  </div>
</li>                
</script>
<script>
var template = Handlebars.compile($("#template").html());
$(".fileDrop").on("dragenter dragover", function(event){
	event.preventDefault();
});
$(".fileDrop").on("drop", function(event){
	event.preventDefault();
	
	var files = event.originalEvent.dataTransfer.files;
	
	var file = files[0];
	var formData = new FormData();
	
	formData.append("file", file);	
	
	
	$.ajax({
		  url: '${location}/uploadAjax',
		  data: formData,
		  dataType:'text',
		  processData: false,
		  contentType: false,
		  type: 'POST',
		  success: function(data){
			  
			  var fileInfo = getFileInfo(data);
			  
			  var html = template(fileInfo);
			  
			  $(".uploadedList").append(html);
		  }
		});	
});
$(".uploadedList").on("click", ".delbtn", function(event){
	
	event.preventDefault();
	
	var that = $(this);
	 
	$.ajax({
	   url:"${location}/deleteFile",
	   type:"post",
	   data: {fileName:$(this).attr("href")},
	   dataType:"text",
	   success:function(result){
		   if(result == 'deleted'){
			   that.closest("li").remove();
		   }
	   }
   });
});
$(".btn-warning").on("click", function(){
	  self.location = "${location}/board/list?page=${cri.page}&perPageNum=${cri.perPageNum}"+
			  "&searchType=${cri.searchType}&keyword=${cri.keyword}";
	});
$("#registerSuccess").click(function() {
	var title = $("#title").val();
	var contents = $("#contents").val();
	if (title == "") {
		alert("글 제목을 입력하세요.");
		$("#title").focus(); // 입력포커스 이동
		return false; // 함수 종료
	}
	if (contents == "") {
		alert("글 내용을 입력하세요.");
		$("#contents").focus();
		return false;
	}
$("#registerForm").submit(function(event){
	event.preventDefault();
	
	var that = $(this);
	
	var str ="";
	$(".uploadedList .delbtn").each(function(index){
		 str += "<input type='hidden' name='files["+index+"]' value='"+$(this).attr("href") +"'> ";
	});

	that.append(str);
	that.get(0).submit();
	});
});
</script>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
