<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" href="../css/top.css" type="text/css"/>
	<link rel="stylesheet" href="../css/bottom.css" type="text/css"/>
	<link rel="stylesheet" href="../css/login-page.css" type="text/css"/>
	<link rel="stylesheet" href="../css/find-page.css" type="text/css"/>
	
	<link rel="stylesheet" href="../css/all.css" type="text/css"/>
	
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">

<meta charset="UTF-8">
<title>find-pw</title>
</head>
<body id="wrap">
	<div id="login">
		<div id="login-box">
			<div class="login-box-l">
			</div>
			<div class="login-box-r">
				<div class="login-form">
					<div class="login-t find-t">
						<ul>
							<!-- <li>로고</li> -->
							<li>비밀번호 찾기</li>
							<li>이전에 사용한 이메일이나 전화번호와 아이디를 입력하시면</li>
							<li>귀하의 비밀번호를 찾아보도록 하겠습니다.</li>
						</ul>
					</div>
					<div class="login-m find-m">
						<form>
							<div class="login-id find-id">
								<label>아이디</label><br/>
								<input type="text" maxlength="20" placeholder="">
							</div>
							<div class="login-id find-id">
								<label>이메일 또는 전화번호</label><br/>
								<input type="text" maxlength="20" placeholder="abc@email.com 또는 010-0000-0000">
							</div>
						</form>
					</div>
					<div class="login-f">
						<form>
							<div class="login-ac find-ac">
								<a href="#">로그인으로 돌아가기</a>
								<input type="submit" value="계속">
							</div>
						</form>
					</div>
					<div class="find-f">
						<a>추가적인 도움이 필요하십니까?<a class="find-f-ac" href="#">자세히 알아보기</a></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>