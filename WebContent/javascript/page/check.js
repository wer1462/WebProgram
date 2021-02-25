/**
 * 
 */
/**
 * 
 */
/**
 * 
 */
function registerForm(obj) {
	//유효성 검사

  	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var re = /^[a-zA-Z0-9]{4,12}$/;  //아이디와 패스워드가 적합한지 검사할 정규식
	var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	// 직접입력시 이메일이 적합한지 검사할 정규식
	
	if(obj.id.value=="") {
		alert("아이디를 입력하세요.");
		obj.id.focus();
		return false;
	}
	if(!re.test(obj.id.value)) {
		alert("아이디는 4~12자의 영문 대소문자와 숫자로만 입력");
		obj.id.focus();
		return false;
	}
	if(obj.password.value=="") {
		alert("비밀번호를 입력하세요.");
		obj.password.focus();
		return false;
	}
	if(!re.test(obj.password.value)) {
		alert("비밀번호는 4~12자의 영문 대소문자와 숫자로만 입력");
		obj.password.focus();
		return false;
	}
	if(obj.password.value!= obj.passwordCheck.value){
		alert("비밀번호가 일치하지 않습니다.");
		obj.passwordCheck.focus();
		return false;
	}
	if(obj.name.value=="") {
		alert("이름을 입력해주세요.");
		obj.name.focus();
		return false;
	}
	 if(obj.bdyy.value=="") {
		 alert("생일을 입력해주세요");
		 obj.bdyy.focus();
		 return false;
	 }
	 if(obj.bdmm.value=="월") {
		 alert("생일을 입력해주세요");
		 obj.bdmm.focus();
		 return false;
	 }
	 if(obj.bddd.value=="") {
		 alert("생일을 입력해주세요");
		 obj.bddd.focus();
		 return false;
	 }
	 if(obj.email.value=="") {
         alert("이메일을 입력해 주세요");
         obj.email.focus();
         return false;
     }
	if (obj.email.value.match(regExp) != null) {
 	}else {
    	alert("형식을 지켜주세요");
        obj.email.focus();
        return false;
  	}

	 if(obj.phnAdd.value=="번호") {
		 alert("전화번호를 확인해주세요");
		 obj.phnAdd.focus();
		 return false;
	 }
	 if(obj.phnMiddle.value=="") {
		 alert("전화번호를 확인해주세요");
		 obj.phnMiddle.focus();
		 return false;
	 }
	 if(obj.phnLast.value=="") {
		 alert("전화번호를 확인해주세요");
		 obj.phnLast.focus();
		 return false;
	 }
}

