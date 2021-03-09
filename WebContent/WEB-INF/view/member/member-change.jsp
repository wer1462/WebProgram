<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}" />


<html>
<head>


	<link rel="stylesheet" href="${root }/css/top.css" type="text/css"/>
	<link rel="stylesheet" href="${root }/css/bottom.css" type="text/css"/>
	<link rel="stylesheet" href="${root }/css/retouch-page.css" type="text/css"/>
	
	<link rel="stylesheet" href="${root }/css/all.css" type="text/css"/>
	
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
<meta charset="UTF-8">
<title>member-change</title>
</head>
<body id="wrap">
	<div id="retouch">
		<!-- <div id="retouch-t">
			<div class="retouch-t-l">
			</div>
			<div class="retouch-t-r">
			</div>
		</div>
-->
		<div id="retouch-box">
			<div class="retouch-l">
				<div class="retouch-l-t">
					<a>회원정보</a>
				</div>
				<div class="retouch-l-m">
					<ul>
						<li class="retouch-admin"><a href="#">개인정보 수정</a></li>
						<li class="retouch-admin">
							<a>내 방 관리</a>
							<ul class="room-admin">
								<li><a href="#">올린 방</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="retouch-l-f">
					<a href="#">회원탈퇴 바로가기<span></span></a>
				</div>
			</div>
			<div class="retouch-r">
				<div class="retouch-check">
					<ul>
						<li>비밀확인 재확인</li>
						<li>회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 입력해 주시기 바랍니다.</li>
						<li>※ 타인에게 노출되지 않도록 주의해 주세요.</li>
					</ul>
					<div class="pw-check">
						<form method="post" action="${root }/member/changeinfo.in">
							<label>비밀번호</label>
							<input type="password" maxlength="20" autofocus name="pwd"/>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>