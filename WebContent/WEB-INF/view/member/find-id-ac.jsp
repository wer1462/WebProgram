<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}" />
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
<title>find-id-ac</title>
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
							<li>아이디 찾기</li>
						</ul>
					</div>
					<div class="login-m">
						<form>
							<div class="login-id find-id">
								<label>귀하의 정보로 아이디를 검색했습니다.</label><br/>
								<div class="find-search-ac">
									<a>${findId}<span>입니다.</span></a>
								</div>
							</div>
						</form>
					</div>
					<div class="login-f">
						
							<div class="login-ac find-ac">
								<a href="${root}/member/find-pw.in">비밀번호 찾기</a>
								<input type="button" value="로그인으로 돌아가기" onclick="location.href='${root}/member/goLogin.in'">
							</div>
						
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