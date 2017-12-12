$(document).ready(function(){
	/* 이미지 업로드 클릭시 */
	$(".sel_pic").click(function(){
		$("#pic").trigger("click");
	});
	
	/* 이미지업로드시 */
	$("#pic").change(function(){
		readURL(this);
	});
	
	/* 업로드 취소버튼 클릭시 */
	$("#cancelPic").click(function(){
		/* 미리보기 삭제 */
		$("#pro_pic").attr('src','').css("display","none");
		
		/* 기본 프로필사진 보여주기 */
		$(".fa-user-circle").css("display","inline-block");
		/* 파일삭제 */
		$("#pic").val("");
	});
});

/* 취소버튼 클릭시 */
function exitPage(path){
	if(confirm("이 페이지에서 나가시겠습니까?"))
		$("#join_second_form").attr("method","get").attr("action",path).submit();  
}

/* 가입버튼 클릭시 */
function goNextPage(path){
	var icons = $(".fa-check");
	var i = 0;

	$("#mEmail").val($("#first_email").val()+"@"+$("#last_email").val())
	
	$.each(icons,function(index,value){
		if( $(value).hasClass("view") ){
			i++;
		}
	})
	
	if(i == icons.length )
		$("#join_second_form").attr("action",path).submit();
	else
		alert("모두 올바르게 입력 하셔야 합니다.");
}

/* 이미지미리보기 */
function readURL(input){
	if(input.files && input.files[0]){
		var reader = new FileReader();
		
		reader.onload = function(e){
			$("#pro_pic").attr('src',e.target.result).css("display","inline-block");
			$(".fa-user-circle").css("display","none")
		}
		reader.readAsDataURL(input.files[0]);
	}
}