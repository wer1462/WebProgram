<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>

<link rel="stylesheet" href="${root }/css/top.css" type="text/css" />
<link rel="stylesheet" href="${root }/css/bottom.css" type="text/css" />
<link rel="stylesheet" href="${root }/css/login-page.css"
	type="text/css" />
<link rel="stylesheet" href="${root }/css/member-page.css"
	type="text/css" />

<link rel="stylesheet" href="${root }/css/all.css" type="text/css" />

<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">

<meta charset="UTF-8">
<title>member</title>
</head>
<script type="text/javascript" src="${root }/javascript/page/check.js"></script>
<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
<script type="text/javascript">
	function toServer(root, value) {
		var url = root + "/member/idCheck.in";
		if (value != "") {
			var params = "id=" + value;
			sendRequest("POST", url, fromServer, params);
		}
	}
	function fromServer() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			document.getElementById("checkid").innerHTML = xhr.responseText
		}
	}
</script>

<body id="wrap">
	<div id="login">
		<div id="login-box">
			<div class="login-box-l"></div>
			<div class="login-box-r">
				<div class="login-form animate__animated animate__fadeInRight"> 
					<div class="login-t member-t">
						<ul>
							<!-- <li>로고</li> -->
							<li>회원가입</li>
							<li>이미 계정이 있으신가요? <a href="${root }/member/loginPage.in">로그인</a></li>
						</ul>
					</div>

					<form action="${root }/member/register2.in" method="post"
						onsubmit="return registerForm1(this);">
						<div class="login-m">
							<div class="login-id member-items">
								<label>아이디</label><br /> <input type="text" maxlength="14"
									oninput="toServer('${root }',this.value)" id="member_Id" name="member_Id">
								<a class="check-id" id="checkid"></a>

							</div>
							<div class="login-pw member-items">
								<label>비밀번호</label><br /> <input type="password" maxlength="20"
									id="member_Pwd" name="member_Pwd">
							</div>
							<div class="login-pw member-items">
								<label>비밀번호 확인</label><br /> <input type="password"
									maxlength="20" id="passwordCheck">
							</div>
						</div>
						<div class="login-f">
							<div class="login-ac member-ac">
								<a href="${root }/member/loginPage.in">로그인으로 돌아가기</a> <input type="submit" value="계속">
							</div>
						</div>
					</form>


				</div>
			</div>
		</div>
	</div>
</body>
</html>
