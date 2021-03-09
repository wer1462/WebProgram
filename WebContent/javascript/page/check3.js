/**
 * 
 */


function registerForm(obj){
   var num = /^[0-9]*$/;
   var han = /^[가-힣]+$/;
   var phone = /^\d{10,11}$/;
   var day = /^\d{2}$/;
   var day2 = /^[1-9]{1}$|^[0-2]{1}[0-9]{1}$|^3{1}[0-1]{1}$/;
   var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
   var re = /^[a-zA-Z0-9]{4,12}$/;  //아이디와 패스워드가 적합한지 검사할 정규식
   // 직접입력시 이메일이 적합한지 검사할 정규식

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

 
   
   if (obj.member_Email.value=="") {
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