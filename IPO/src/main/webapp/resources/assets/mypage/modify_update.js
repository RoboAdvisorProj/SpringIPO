$(document).ready(function(){
	/* pdateFileName = this.files[0].name;파일명 가져오기  */
	/* 기존에 사용하던 프로필 사진가져오기 */
	var prev_profile = $("#prev_pic").val();
	/* 프로필사진을 변경했는지 확인 */
	var isChange = ""; 
	
	var email = $("#mEmail").val();
	var position = email.indexOf('@');
	
	/* @를기준으로 앞에아이디, 뒤에 주소를 가져오기 */
	var emailId = email.substring(0,position);
	var emailLoc = email.substring(position+1,email.length);

	/* 프로필 사진이 한번이라도 변경됐을시 */
	$("#pic").change(function(){
		isChange = "change";
	})  

	/* select박스에 변경이 생길시 뒤에 주소에 자동입력 */
	$("#email_box").stop().change(function(){		
		selectEmailCheck(this);
	})
	
	/* 현재유저의 이메일을 화면에 보여줌 */
	$("#first_email").attr("value",emailId)
	$("#last_email").attr("value",emailLoc)


	/* 이미지 업로드 클릭시 */
	$(".sel_pic").click(function(){
		/* 파일업르도 버튼 강제로 클릭이벤트발생 */
		$("#pic").trigger("click");
	})
	
	/* 이미지업로드시 */
	$("#pic").change(function(){
		readURL(this);
	})
	
	/* 업로드 삭제버튼 클릭시 */
	$("#cancelPic").click(function(){
		
		isChange = "change";
		/* 미리보기 삭제 */
		$("#pro_pic").attr('src','').css("display","none");
		
		/* 기본 프로필사진 보여주기 */
		$("#profile").css("display","inline-block");
		/* 파일삭제 */
		$("#pic").val("");
	})
	
	/* 수정버튼 눌렀을때 */
	$("#modifyBtn").click(function(){
		var icons = $(".fa-check");
		var i = 0;
		
		$("#mEmail").val($("#first_email").val()+"@"+$("#last_email").val())
		
		/* 모두 올바르게 입력했는지 체크 */
		$.each(icons,function(index,value){
			if( $(value).hasClass("view") )
				i++;
		})
		
		if(i == icons.length ){
			if(confirm("수정하시겠습니까?")){
				if(isChange){
					$("#isChange").attr("value",isChange);
				} 
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
		
/* 이미지미리보기  */
function readURL(input){
	if(input.files && input.files[0]){
		var reader = new FileReader();
		
		reader.onload = function(e){
			$("#pro_pic").attr('src',e.target.result).css("display","inline-block");
			$("#profile").css("display","none")
		}
		reader.readAsDataURL(input.files[0]);
	}
}