<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
	
	<link rel="stylesheet" href="../css/top.css" type="text/css"/>
	<link rel="stylesheet" href="../css/bottom.css" type="text/css"/>
	<link rel="stylesheet" href="../css/login-page.css" type="text/css"/>
	
	<link rel="stylesheet" href="../css/all.css" type="text/css"/>
	
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
	
<meta charset="UTF-8">
<title>login</title>
</head>

<body id="wrap">
	<div id="login">
		<div id="login-box">
			<div class="login-box-l">
			</div>
			<div class="login-box-r">
				<div class="login-form">
					<div class="login-t">
						<ul>
							<!-- <li>로고</li> -->
							<li>로그인</li>
							<li>신규 사용자이신가요? <a href="${root }/member/register.in">계정 만들기</a></li>
						</ul>
					</div>
					<div class="login-m">
						<form>
							<div class="login-id">
								<label>아이디</label><br/>
								<input type="text" maxlength="14">
							</div>
							<div class="login-pw">
								<label>비밀번호</label><br/>
								<input type="password" maxlength="20">
							</div>
						</form>
					</div>
					<div class="login-f">
						<form>
							<div class="login-ac">
								<a href="#">아이디·비밀번호 찾기</a>
								<input type="submit" value="로그인">
							</div>
						</form>
					</div>
					<div class="login-sns">
						<form>
							<div class="sns-item">
								<button class="sns-goolgle">
									<div class="sns-logo sns-logo-google"></div>
									Google로 계속
								</button>
							</div>
							<div class="sns-item">
								<button class="sns-naver">
									<div class="sns-logo sns-logo-naver"></div>
									Naver로 계속
								</button>
							</div>
							<div class="sns-item">
								<button class="sns-kakao">
									<div class="sns-logo sns-logo-kakao"></div>
									Kakao로 계속
								</button>
							</div>
							<div class="sns-item">
								<button class="sns-apple"> 
									<div class="sns-logo sns-logo-apple"></div>
									Apple로 계속
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
