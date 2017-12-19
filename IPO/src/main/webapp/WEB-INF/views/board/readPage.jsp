<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="location" value="${pageContext.request.contextPath}" />
<title>D O ! P O</title>
<%@include file="../include/topmenu.jsp"%>

<link rel="stylesheet" href="<c:url value="/resources/assets/css/replytimeline.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/assets/css/mailbox.css"/>">
<style>
hr {
	height: 1px;
	background-color: #555;
	margin-top: 20px;
	margin-bottom: 20px;
	width: 100%;
}
</style>
<style type="text/css">
.popup {
	position: absolute;
}

.back {
	background-color: gray;
	opacity: 0.5;
	width: 100%;
	height: 300%;
	overflow: hidden;
	z-index: 1101;
}

.front {
	z-index: 1110;
	opacity: 1;
	boarder: 1px;
	margin: auto;
}

.show {
	position: relative;
	max-width: 1200px;
	max-height: 800px;
	overflow: auto;
}
</style>


<section class="section-background">
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="${location}/main/main">Home</a></li>
			<li class="active">&nbsp;BOARD</li>
		</ol>
	</div>
</section>

<div class='popup back' style="display: none;"></div>
	<div id="popup_front" class='popup front' style="display: none;">
	<img id='popup_img'>
</div>

<div class="container" style="margin-top: 50px">
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
						<input type='hidden' name='bno' value="${boardVO.bno}"> <input
							type='hidden' name='page' value="${cri.page}"> <input
							type='hidden' name='perPageNum' value="${cri.perPageNum}">
						<input type='hidden' name='searchType' value="${cri.searchType}">
						<input type='hidden' name='keyword' value="${cri.keyword}">
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
			
			
			<ul class="mailbox-attachments clearfix uploadedList" style="list-style:none;"></ul>
					<!-- /.box-body -->
					<div class="box-footer" style="margin-top: 50px">
					<sec:authorize access="isAuthenticated()"> 
					<sec:authentication property="principal" var="user"/> 
					<c:if test="${user.username == boardVO.writer}">
						<button type="submit" class="btn btn-warning" id="postModBtn">수정</button>
						<button type="submit" class="btn btn-danger" id="postDelBtn">삭제</button>
					</c:if>
					</sec:authorize>
						<button type="submit" class="btn btn-primary" id="postListBtn">목록보기</button>
					</div>
					<hr>
					<div class="row">
						<div class="box box-success">
							<div class="box-header">
								<h3 class="box-title">댓글 등록</h3>
							</div>
								<sec:authorize access="isAuthenticated()"> 
							<div class="box-body">
								<label for="exampleInputEmail1" class="col-sm-2 control-label">작성자</label>
								<div class="col-sm-10">
									<input class="form-control" type="text"
										placeholder="당신의 아이디를 입력하세요." id="newReplyWriter" value="${user.username}" readonly="readonly">
								</div>
								<label for="exampleInputEmail1" class="col-sm-2 control-label">댓글
									내용</label>
								<div class="col-sm-10">
									<textarea class="form-control" type="text"
										placeholder="명예훼손, 개인정보 유출, 분쟁 유발, 허위사실 유포 등의 글은 이용약관에 의해 제재는 물론 법률에 의해 처벌받을 수 있습니다. &#13;&#10;건전한 커뮤니티를 위해 자제를 당부 드립니다."
										id="newReplyText" rows="5"></textarea>
								</div>
							</div>
							<!-- /.box-body -->
							<div class="box-footer">
								<button type="button" class="btn btn-primary" id="replyAddBtn">댓글
									추가</button>
							</div>
							</sec:authorize>
							
						 <sec:authorize access="isAnonymous()">
							<div class="box-body">
							<div><a href="javascript:goLogin();">댓글 서비스는 로그인해야 사용하실 수 있습니다.</a></div>
							</div>
						</sec:authorize>
						</div>
						<br>

						<!-- The time line -->
						<ul class="timeline">
							<!-- timeline time label -->
							<li class="time-label" id="repliesDiv" style="cursor: pointer;"><span
								class="bg-green"> 댓글 보기 <small id="replycntSmall">
										[ ${boardVO.replycnt} ] </small> 
										<i class="fa fa-refresh fa-spin fa-lg fa-fw"></i>
										<span class="sr-only">Loading...</span>
							</span></li>
						</ul>

						<div class='text-center'>
							<ul id="pagination" class="pagination pagination-sm no-margin ">
							</ul>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->


					<!-- Modal -->
					<div id="modifyModal" class="modal modal-primary fade"
						role="dialog">
						<div class="modal-dialog">
							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title"></h4>
								</div>
								<div class="modal-body" data-replyer>
									<p>
										<textarea type="text" id="replytext" class="form-control"
											rows="5"></textarea>
									</p>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-warning" id="replyModBtn">수정</button>
									<button type="button" class="btn btn-danger" id="replyDelBtn">삭제</button>
									<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
								</div>
							</div>
						</div>
					</div>
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


<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script type="text/javascript" src="<c:url value="/resources/assets/js/upload.js"/>"></script>
<script id="templateAttach" type="text/x-handlebars-template">
<li data-src='{{fullName}}'>
  <span class="mailbox-attachment-icon has-img">
<img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	</span>
  </div>
</li>                
</script>

<script id="template" type="text/x-handlebars-template">
{{#each .}}
<li class="replyLi" data-replyer={{replyer}}>
<i class="fa fa-comments bg-blue"></i>
 <div class="timeline-item" >
  <span class="time">
    <i class="fa fa-clock-o"></i>{{prettifyDate regdate}}
  </span>
  <h3 class="timeline-header"><strong>{{replyer}}</strong></h3>
  <div class="timeline-body">{{replytext}} </div>
    <div class="timeline-footer">
	{{#eqReplyer replyer}}
     <a class="btn btn-success btn-xs" 
	    data-toggle="modal" data-target="#modifyModal">댓글 수정</a>
	{{/eqReplyer}}
    </div>
  </div>			
</li>
{{/each}}
</script>
<script>
	
	Handlebars.registerHelper("eqReplyer", function(replyer, block) {
		var accum = '';
		if (replyer == '${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}') {
			accum += block.fn();
		}
		return accum;
	});
	Handlebars.registerHelper("prettifyDate", function(timeValue) {
		var dateObj = new Date(timeValue);
		var year = dateObj.getFullYear();
		var month = dateObj.getMonth() + 1;
		var date = dateObj.getDate();
		return year + "/" + month + "/" + date;
	});
	var printData = function(replyArr, target, templateObject) {
		var template = Handlebars.compile(templateObject.html());
		var html = template(replyArr);
		$(".replyLi").remove();
		target.after(html);
	}
	var bno = ${boardVO.bno};
	var replyPage = 1;
	function getPage(pageInfo) {
		$.getJSON(pageInfo, function(data) {
			printData(data.list, $("#repliesDiv"), $('#template'));
			printPaging(data.pageMaker, $(".pagination"));
			$("#modifyModal").modal('hide');
			$("#replycntSmall").html("[ " + data.pageMaker.totalCount + " ]");
		});
	}
	var printPaging = function(pageMaker, target) {
		var str = "";
		if (pageMaker.prev) {
			str += "<li><a href='" + (pageMaker.startPage - 1)
					+ "'> << </a></li>";
		}
		for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
			var strClass = pageMaker.pageCri.page == i ? 'class=active' : '';
			str += "<li "+strClass+"><a href='"+i+"'>" + i + "</a></li>";
		}
		if (pageMaker.next) {
			str += "<li><a href='" + (pageMaker.endPage + 1)
					+ "'> >> </a></li>";
		}
		target.html(str);
	};
	$("#repliesDiv").on("click", function() {
		if ($(".timeline li").size() > 1) {
			return;
		}
		getPage("${location}/replies/" + bno + "/1");
	});
	$(".pagination").on("click", "li a", function(event) {
		event.preventDefault();
		replyPage = $(this).attr("href");
		getPage("${location}/replies/" + bno + "/" + replyPage);
	});
	$("#replyAddBtn").on("click", function() {
		var replyerObj = $("#newReplyWriter");
		var replytextObj = $("#newReplyText");
		var replyer = replyerObj.val();
		var replytext = replytextObj.val();
		$.ajax({
			type : 'post',
			url : '${location}/replies/',
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType : 'text',
			data : JSON.stringify({
				bno : bno,
				replyer : replyer,
				replytext : replytext
			}),
			success : function(result) {
				console.log("result: " + result);
				if (result == 'REPLY REGISTER SUCCESS') {
					alert("댓글이 등록 되었습니다.");
					replyPage = 1;
					getPage("${location}/replies/" + bno + "/" + replyPage);
					//replyerObj.val("");
					replytextObj.val("");
				}
			}
		});
	});
	$(".timeline").on("click", ".replyLi", function(event) {
		var reply = $(this);
		$("#replytext").val(reply.find('.timeline-body').text());
		$(".modal-title").html(reply.attr("data-replyer"));
	});
	$("#replyModBtn").on("click", function() {
		var rno = $(".modal-title").html();
		var replytext = $("#replytext").val();
		$.ajax({
			type : 'put',
			url : '${location}/replies/' + rno,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "PUT"
			},
			data : JSON.stringify({
				replytext : replytext
			}),
			dataType : 'text',
			success : function(result) {
				console.log("result: " + result);
				if (result == 'REPLY UPDATE SUCCESS') {
					alert("댓글이 수정 되었습니다.");
					getPage("${location}/replies/" + bno + "/" + replyPage);
				}
			}
		});
	});
	$("#replyDelBtn").on("click", function() {
		var rno = $(".modal-title").html();
		var replytext = $("#replytext").val();
		$.ajax({
			type : 'delete',
			url : '${location}/replies/' + rno,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "DELETE"
			},
			dataType : 'text',
			success : function(result) {
				console.log("result: " + result);
				if (result == 'REPLY REMOVE SUCCESS') {
					alert("댓글이 삭제 되었습니다.");
					getPage("${location}/replies/" + bno + "/" + replyPage);
				}
			}
		});
	});
</script>


<script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$("#postModBtn").on("click", function(){
		formObj.attr("action", "${location}/board/modifyPage");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	
/* 	$("#removeBtn").on("click", function(){
		formObj.attr("action", "/sboard/removePage");
		formObj.submit();
	}); */
	
	$("#postDelBtn").on("click", function(){
		
		var replyCnt =  $("#replycntSmall").html().replace(/[^0-9]/g,"");
		
		if(replyCnt > 0 ){
			alert("댓글이 달린 게시물을 삭제할 수 없습니다.");
			return;
		}	
		
		var arr = [];
		$(".uploadedList li").each(function(index){
			 arr.push($(this).attr("data-src"));
		});
		
		if(arr.length > 0){
			$.post("${location}/deleteAllFiles",{files:arr}, function(){
				
			});
		}
		
		formObj.attr("action", "${location}/board/removePage");
		formObj.submit();
	});	
	
	$("#postListBtn ").on("click", function(){
		formObj.attr("method", "get");
		formObj.attr("action", "${location}/board/listPage");
		formObj.submit();
	});
	
	var bno = ${boardVO.bno};
	var template = Handlebars.compile($("#templateAttach").html());
	
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
	
});

function goLogin(){
	self.location ="/user/login";
}

</script>

<%@include file="../include/footer.jsp"%>