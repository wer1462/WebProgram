/**
 * 
 */
/**
 * 
 */
/**
 * 
 */




function registerForm1(obj){
	var num = /^[0-9]*$/;
	var han = /^[가-힣]+$/;
	var phone = /^\d{4}$/;
	var day = /^\d{2}$/;
	var day2 = /^[1-9]{1}$|^[0-2]{1}[0-9]{1}$|^3{1}[0-1]{1}$/;
	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var re = /^[a-zA-Z0-9]{4,12}$/;  //아이디와 패스워드가 적합한지 검사할 정규식
	// 직접입력시 이메일이 적합한지 검사할 정규식
	
	var checkid = document.getElementById("checkid");

	if (obj.member_Id.value == "") {
		alert("아이디를 입력하세요.");
		obj.member_Id.focus();
		return false;
	}
	if (!re.test(obj.member_Id.value)) {
		alert("아이디는 4~12자의 영문 대소문자와 숫자로만 입력");
		obj.member_Id.focus();
		return false;
	}
	if (obj.member_Pwd.value == "") {
		alert("비밀번호를 입력하세요.");
		obj.member_Pwd.focus();
		return false;
	}
	if (!re.test(obj.member_Pwd.value)) {
		alert("비밀번호는 4~12자의 영문 대소문자와 숫자로만 입력");
		obj.member_Pwd.focus();
		return false;
	}
	if (obj.member_Pwd.value != obj.passwordCheck.value) {
		alert("비밀번호가 일치하지 않습니다.");
		obj.passwordCheck.focus();
		return false;
	}
	if (checkid.childNodes[0].nodeValue == "아이디가 이미 존재합니다.") {
		alert("아이디를 바꿔주세요.");
		obj.member_Id.focus();
		
		return false;
	}
	
}



function registerForm(obj) {
	//유효성 검사
	var num = /^[0-9]*$/;
	var han = /^[가-힣]+$/;
	var phone = /^\d{10,11}$/;
	var phone2 = /^\d{4}$/;
	var day = /^\d{2}$/;
	var day2 = /^[1-9]{1}$|^[0-2]{1}[0-9]{1}$|^3{1}[0-1]{1}$/;
	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var re = /^[a-zA-Z0-9]{4,12}$/;  //아이디와 패스워드가 적합한지 검사할 정규식
	// 직접입력시 이메일이 적합한지 검사할 정규식


	
	if (obj.member_Name.value == "") {
		alert("이름을 입력해주세요.");
		obj.member_Name.focus();
		return false;
	}
	if (!han.test(obj.member_Name.value)) {
		alert("한글만 입력해주세요.");
		obj.member_Name.focus();
		return false;
	}
	if (obj.bdyy.value == "") {
		alert("생일을 입력해주세요");
		obj.bdyy.focus();
		return false;
	}
	if (!num.test(obj.bdyy.value)) {
		alert("숫자만 입력해주세요.");
		obj.bdyy.focus();
		return false;
	}
	if (!phone2.test(obj.bdyy.value)) {
		alert("4자리를 입력해주세요.");
		obj.bdyy.focus();
		return false;
	}
	if (obj.bdmm.value == "월") {
		alert("생일을 입력해주세요");
		obj.bdmm.focus();
		return false;
	}
	if (obj.bddd.value == "") {
		alert("생일을 입력해주세요");
		obj.bddd.focus();
		return false;
	}
	if (!num.test(obj.bd_dd.value)) {
		alert("숫자만 입력해주세요.");
		obj.bddd.focus();
		return false;
	}
	if (!day2.test(obj.bddd.value)) {
		alert("1 ~ 31일까지만 존재합니다.");
		obj.bddd.focus();
		return false;
	}
	if (obj.member_Email.value == "") {
		alert("이메일을 입력해 주세요");
		obj.member_Email.focus();
		return false;
	}
	if (obj.member_Email.value.match(regExp) == null) {
		alert("이메일 형식을 지켜주세요");
		obj.member_Email.focus();
		return false;
	}
	if (obj.phnNum.value == "") {
		alert("전화번호를 확인해주세요");
		obj.phnNum.focus();
		return false;
	}
	if (!phone.test(obj.phnNum.value)) {
		alert("10~11자리로 작성해주세요.");
		obj.phnNum.focus();
		return false;
	}
	if (!num.test(obj.phnNum.value)) {
		alert("숫자만 입력해주세요.");
		obj.phnNum.focus();
		return false;
	}
	
}

