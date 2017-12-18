$(document).ready(function(){
	
	var email = $("#mEmail").val();
	var position = email.indexOf('@');
	
	/* @를기준으로 앞에아이디, 뒤에 주소를 가져오기 */
	var emailId = email.substring(0,position);
	var emailLoc = email.substring(position+1,email.length);

	/* select박스에 변경이 생길시 뒤에 주소에 자동입력 */
	$("#email_box").stop().change(function(){		
		selectEmailCheck(this);
	})
	
	/* 현재유저의 이메일을 화면에 보여줌 */
	$("#first_email").attr("value",emailId)
	$("#last_email").attr("value",emailLoc)
	
	/* 수정버튼 눌렀을때 */
	$("#modifyBtn").click(function(){
		var icons = $(".fa-check");
		var i = 0;
		
		$("#mEmail").val($("#first_email").val()+"@"+$("#last_email").val())
		
		/* 모두 올바르게 입력했는지 체크 */
		$.each(icons,function(index,value){
			if( $(value).hasClass("view") ){
				i++;
			}
		})
		
		if(i == icons.length ){
			if(confirm("수정하시겠습니까?")){
				$("#modify_form").submit(); 
			}
		}
		else
			alert("모두 올바르게 입력 하셔야 합니다.");
	})
	
	/* 취소버튼을 눌렀을때 */
	$("#cancelBtn").click(function(){
		if(confirm("이 페이지에서 나가시겠습니까?"))
			$("#modify_form").attr("method","get").attr("action","/index.jsp").submit();  
	})
})