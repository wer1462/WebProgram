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



</head>
<script type="text/javascript" src="${root }/javascript/page/check3.js"></script>
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
						<li>개인정보 수정</li>
					</ul>
					<div class="privacy">
						<form onsubmit="return registerForm(this);" method="post" action="${root }/member/updateMember.in">
							<div class="privacy-items">
								<div>이름<span></span></div>
								<input class="privacy-name" type="text" value="${memberDto.member_Name }" disabled/>
							</div>
							<div class="privacy-items">
								<div>비밀번호<span>*</span></div>
								<input class="privacy-pw" type="password" maxlength="20" value="0123456789" value="${memberDto.member_Pwd }" name="member_Pwd"/>
							</div>
							<div class="privacy-items">
								<div>이메일<span>*</span></div>
								<input class="privacy-mail" type="text" value="${memberDto.member_Email }" name="member_Email"/>
							</div>
							<div class="privacy-items">
								<div>전화번호<span>*</span></div>
								<input class="privacy-phone" type="text" value="${memberDto.member_Telephone }" name="phnNum"/>
							</div>
							<div class="privacy-items privacy-ac">
								<input class="privacy-ac-btn" type="submit" value="수정"/>
								<input class="privacy-ac-btn" type="button" value="취소" onclick="javascript:location.href='${root }/main.jsp'"/>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>