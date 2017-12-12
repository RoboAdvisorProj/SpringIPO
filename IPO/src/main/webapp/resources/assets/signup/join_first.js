$(document).ready(function(){
	$("#all-check").click(function(){	
		agreeCheck(this);
	})
	
	$("#first-check").click(function(){
		toggleColor(this);
	})	
	
	$("#second-check").click(function(){
		toggleColor(this);
	})

})

function agreeCheck(sel){
	if($(sel).hasClass('change_color'))
		$(".fa-check-circle-o").removeClass('change_color');

	else
		$(".fa-check-circle-o").addClass('change_color');	
}

function toggleColor(sel){
	$(sel).toggleClass("change_color")
}

/*동의버튼 클릭시*/
function nextPage(path){
	if( $("#first-check").hasClass('change_color') && $("#second-check").hasClass('change_color'))
		location.href=path;
	else
		alert("약관에 모두 동의하셔야 합니다.");
}


/*비동의 클릭시*/
function exitPage(path){
	if(confirm("이 페이지에서 나가시겠습니까?")){
		location.href=path;
	}
}