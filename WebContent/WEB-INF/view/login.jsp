<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
	
	<!-- noto sans -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400;500;700&display=swap" rel="stylesheet">

	<!-- roboto -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="../css/login.css"/>
	
<title>인룸 :: 로그인</title>
</head>

<body>
	<div id="wrap">
		<div id="header">
		</div>
		<div id="nav">
		</div>
		<div id="page">
			<div class="login">
				<div class="loginFrame">
					<div id="loginSubject">
						<a><img src="../images/logo-sub.png"/></a>
					</div>
					<form method="post" id="loginForm" class="loginForm">
						<div id="loginId" class="loginCnt">
							<input type="text" name="id" class="inp" maxlength="12" placeholder="아이디를 입력해 주세요."/>
						</div>
						<div id="loginPw" class="loginCnt">
							<input type="password" name="password" maxlength="20" class="inp" placeholder="비밀번호를 입력해 주세요."/>
						</div>
						<div id="loginActionBtn" class="loginBtn">
							<input type="submit" value="로그인" id="loginAction" onclick=""/>
						</div>
						<!--
						<div id="loginSns">
							<div id="loginNaver">
								<input type="submit" value="네이버로 로그인" id="loginNaverAction" class="loginSnsAction"/>
							</div>
							<div id="loginKakao">
								<input type="submit" value="카카오로 로그인" id="loginKakaoAction" class="loginSnsAction"/>
							</div>
							<div id="loginFackbook">
								<input type="submit" value="페이스북으로 로그인" id="loginFackbookAction" class="loginSnsAction"/>
							</div>
							<div id="loginApple">
								<input type="submit" value="Apple로 로그인" id="loginAppleAction" class="loginSnsAction"/>
							</div>
						</div>
						-->
					</form>
					<div id="loginbottom">
						<div class="loginBtCnt">
							<a href="${root }/map/register.in">회원가입</a>
							<span>
								<a href="#" class="idSearch">아이디 찾기</a>
								<a href="#">비밀번호 찾기</a>
							</span>
							
						</div>
					</div>
					<div class="cut"></div>
					<div id="login-sns-circle">
						<div id="login-sns-circle-action">
							<div id="login-sns-naver">
								<span><a href="#"><img src="../images/naver.png"/></a></span>
							</div>
							<div id="login-sns-kakao">
								<span><a href="#"><img src="../images/kakao.png"/></a></span>
							</div>
							<div id="login-sns-facebook">
								<span><a href="#"><img src="../images/fb.png"/></a></span>
							</div>
							<div id="login-sns-apple">
								<span><a href="#"><img src="../images/apple.png"/></a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- <div id="footer">
		</div> -->
		<div id="notice">
		</div>
	</div>
</body>
</html>
