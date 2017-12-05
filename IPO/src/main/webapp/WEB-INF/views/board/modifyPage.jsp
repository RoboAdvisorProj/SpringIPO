<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/topmenu.jsp"%>
<!-- Section Background -->
<title>D O ! P O</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="location" value="${pageContext.request.contextPath}" />
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/mailbox.css"/>">
<style>
.fileDrop {
	width: 100%;
	height: 100px;
	border: 1px dotted gray;
	background-color: #fff;
	margin: auto;
}
</style>
<section class="section-background">
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="${location}/main/main">Home</a></li>
			<li class="active">&nbsp;글수정</li>
		</ol>
	</div>
	<!-- /.container -->
</section>
<div class="container" style="margin-top: 50px">
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">글수정</h3>
					</div>
					<!-- /.box-header -->

					<form role="form" action="modifyPage" method="post">

						<input type='hidden' name='page' value="${cri.page}"> <input
							type='hidden' name='perPageNum' value="${cri.perPageNum}">
						<input type='hidden' name='searchType' value="${cri.searchType}">
						<input type='hidden' name='keyword' value="${cri.keyword}">

						<div class="box-body">

							<div class="form-group">
								<label for="exampleInputEmail1">번호</label> <input type="text"
									name='bno' class="form-control" value="${boardVO.bno}"
									readonly="readonly">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">작성자</label> <input type="text"
									name="writer" class="form-control" value="${boardVO.writer}">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">제목</label> <input type="text"
									name='title' class="form-control" value="${boardVO.title}">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">내용</label>
								<textarea class="form-control" name="content" rows="10">${boardVO.content}</textarea>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">아래 빈곳에 파일을 끌어당겨서
									올려주세요.</label>
								<div class="fileDrop"></div>
							</div>
							<ul class="mailbox-attachments clearfix uploadedList"
								style="list-style: none;">
							</ul>
						</div>
						<!-- /.box-body -->
					
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">수정 완료</button>
						<button type="submit" class="btn btn-warning">취소</button>
					</div>
</form>
					<script type="text/javascript"
						src="<c:url value="/resources/assets/js/upload.js"/>"></script>
					<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">
<li>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	<a href="{{fullName}}" 
     class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
	</span>
  </div>
</li>                
</script>    

<script>
	$(document).ready(function(){
			
		var formObj = $("form[role='form']");
		
		formObj.submit(function(event){
			event.preventDefault();
			
			var that = $(this);
			
			var str ="";
			$(".uploadedList .delbtn").each(function(index){
				 str += "<input type='hidden' name='files["+index+"]' value='"+$(this).attr("href") +"'> ";
			});
			
			that.append(str);
			console.log(str);
			
			that.get(0).submit();
		});
		
		
		$(".btn-warning").on("click", function(){
		  self.location = "${location}/board/list?page=${cri.page}&perPageNum=${cri.perPageNum}"+
				  "&searchType=${cri.searchType}&keyword=${cri.keyword}";
		});
		
	});
	var template = Handlebars.compile($("#template").html());
	$(".fileDrop").on("dragenter dragover", function(event){
		event.preventDefault();
	});
	$(".fileDrop").on("drop", function(event){
		event.preventDefault();
		
		var files = event.originalEvent.dataTransfer.files;
		
		var file = files[0];
		//console.log(file);
		
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
	var bno = ${boardVO.bno};
	var template = Handlebars.compile($("#template").html());
	$.getJSON("${location}/board/getAttach/"+bno,function(list){
		$(list).each(function(){
			
			var fileInfo = getFileInfo(this);
			
			var html = template(fileInfo);
			
			 $(".uploadedList").append(html);
			
		});
	});
	$(".uploadedList").on("click", ".mailbox-attachment-info a", function(event){
		
		var fileLink = $(this).attr("href");
		
		if(checkImageType(fileLink)){
			
			event.preventDefault();
					
			var imgTag = $("#popup_img");
			imgTag.attr("src", fileLink);
			
			console.log(imgTag.attr("src"));
					
			$(".popup").show('slow');
			imgTag.addClass("show");		
		}	
	});
	$("#popup_img").on("click", function(){
		
		$(".popup").hide('slow');
		
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