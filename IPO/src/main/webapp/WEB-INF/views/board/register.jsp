<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="kr">
<head>
<title>D O ! P O</title>
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

						<form id='registerForm' role="form" method="post">
							<div class="box-body">
								<div class="form-group">
									<label for="exampleInputEmail1">제목</label> <input type="text"
										name='title' class="form-control" placeholder="Enter Title">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">내용</label>
									<textarea class="form-control" name="content" rows="3"
										placeholder="Enter ..."></textarea>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">작성자</label> <input type="text"
										name="writer" class="form-control" placeholder="Enter Writer">
								</div>
									<div class="form-group">
									<label for="exampleInputEmail1">아래 빈곳에 파일을 끌어당겨서 올려주세요.</label>
									<div class="fileDrop"></div>
							</div>
							<ul class="mailbox-attachments clearfix uploadedList" style="list-style:none;">
							</ul>
							</div>
							<!-- /.box-body -->
							
	
							<div class="box-footer">
								<button type="submit" class="btn btn-primary pull-right">완료</button>
							</div>
						</form>


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
</script>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
