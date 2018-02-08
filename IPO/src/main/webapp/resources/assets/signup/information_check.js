$(document).ready(function(){
	var pwd_check = false;
	var email_check = false;


	/* 아이디체크 */
	$("#username").stop().blur(function(){
		 var id =$(this).val();
		 var $id_parent = $(this).parent();
		 
		 var reg_exp=new RegExp("^[a-zA-Z][a-zA-Z0-9]{3,11}$","g");
		 var match=reg_exp.exec(id);
		 
		 if(id == '')
			 errorCheckEffect("아이디를 입력하세요",$id_parent);
		 else if(id.length < 4 || id.length > 13)
			 errorCheckEffect("아이디는 최소 5자 이상 12자리 이하로 입력해주세요.",$id_parent);
		 else if(match==null)
			 errorCheckEffect("아이디 첫글자는 영문으로 시작하며 영문과 숫자 조합만 가능합니다.",$id_parent);
		 else{
			 idCheckAjax();
		 }
	})
	/*  -------------------- ---------------------------------------- */
	
	
	/* 비밀번호 체크  */
	$("#password").stop().blur(function(){
		pwd_check = pwdCheck(this);
	})
	/*  -------------------- ---------------------------------------- */
	
	
	/* 비밀번호 재확인 체크 */
	$("#password_check").stop().blur(function(){
		var $pwCheck_parent =$(this).parent();
		
		if(pwd_check == true){
			var password = $("#password_check").val();
			
			if( password!=$("#password").val() )
				errorCheckEffect("비밀번호가 다릅니다",$pwCheck_parent);
			else
				successCheckEffect($pwCheck_parent);
		}
		else
			$("#password").focus();
	})
	/*  -------------------- ---------------------------------------- */
	
	
	/* 이름 체크  */
	$("#name").stop().blur(function(){
		 var name =$(this).val();
		 var $name_parent = $(this).parent();
		 
		 
		 if(name == '' || name.length < 2)
			 errorCheckEffect("이름을 올바르게 입력하세요",$name_parent);
		 else
			 successCheckEffect($name_parent);
	})
	/*  -------------------- ---------------------------------------- */
	
	/* 나이 체크  */
	$("#age").stop().blur(function(){
		 var age =$(this).val();
		 var $age_parent = $(this).parent();
		 
		 if(age == '' || age < 1 || age > 200)
			 errorCheckEffect("나이를 올바르게 입력하세요",$age_parent);
		 else
			 successCheckEffect($age_parent);
		 
	})
	
	/* 이메일 처리코드 */
	$("#first_email").stop().blur(function(){
		email_check = emailCheck()
		var regType = /^[A-Za-z0-9+]*$/;

		var first_email = $("#first_email").val();
		var last_email = $("#last_email").val();
		var $email_field = $("#email_field");
		
		if(email_check)
			successCheckEffect($email_field);
		else
			errorCheckEffect("이메일 주소를 입력하세요",$email_field)
		
		if(regType.test(first_email)==false && regType.test(last_email)==false)
			errorCheckEffect("이메일 텍스트 형식이 잘못되었습니다.",$email_field)
	})
	

	$("#last_email").stop().blur(function(){
		email_check = emailCheck()
		var regType = /^[A-Za-z0-9+]*$/;
		var first_email = $("#first_email").val();
		var last_email = $("#last_email").val();
		var $email_field = $("#email_field");
		
		if(email_check)
			successCheckEffect($email_field); 
		else
			errorCheckEffect("이메일 아이디를 입력하세요.",$email_field)
			
			
		if(regType.test(first_email)==false && regType.test(last_email)==false)
			errorCheckEffect("이메일 텍스트 형식이 잘못되었습니다.",$email_field)
	})
	
	$("#email_box").stop().change(function(){		
		selectEmailCheck(this);
	})
	/*  -------------------- ---------------------------------------- */
	
	
	
	/* 전화번호 체크 */
	$("#tel").stop().blur(function(){
		var tel =$(this).val();
		var $tel_parent = $(this).parent();
		 
		if(tel == '' || tel.indexOf("-")!= -1)
			errorCheckEffect("'-'제외하고 올바르게 입력하세요", $tel_parent);
		else if(tel.length!=11)
			errorCheckEffect("전화번호 11자리를 올바르게 입력하세요.", $tel_parent);
		else
		 	successCheckEffect($tel_parent);	 
	})
	/*  -------------------- ---------------------------------------- */
})

/*나이필드 숫자만 입력*/
function onlyNumber(obj) {
    $(obj).keyup(function(){
         $(this).val($(this).val().replace(/[^0-9]/g,""));
    }); 
}
/* 이메일 체크  */
function emailCheck(){
	var first_email = $("#first_email").val();
	var last_email = $("#last_email").val();
	
	if(first_email == '' || last_email == '')
		return false;
	else
		return true;
}

/* 이메일 사이트 입력 처리코드  */
function selectEmailCheck(){
	var $email_field = $("#email_field");
	if($("#email_box").val() == 'empty'){
		$("#last_email").val('');
		$("#last_email").prop('readonly',false);
	}
	else{	
		$("#last_email").val( $("#email_box").val() );
		$("#last_email").prop("readonly", true);
	}
	
	if($("#last_email").val() =='' || $("#first_email").val() ==''){
		errorCheckEffect("이메일을 정확하게 입력하세요",$email_field)
	}else
		successCheckEffect($email_field);
}

function pwdCheck(sel){
	var password = $(sel).val();
	var $password_parent = $(sel).parent();
	
	var num = password.search(/[0-9]/g);
	var eng = password.search(/[a-z]/ig);
	var spe = password.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

	if(password == ''){
		errorCheckEffect("비밀번호를 입력하세요",$password_parent)		
		return false;
	}
	
	if(password.length < 8 || password.length > 20){
		errorCheckEffect("8~20자 사이를 입력하세요",$password_parent)		
		return false;
	}
	
	if(num < 0 || eng < 0 || spe < 0 ){
		errorCheckEffect("특수문자,영문자,숫자를 모두 포함하세요",$password_parent)
		return false;
	}
	
	successCheckEffect($password_parent)
	return true;
}