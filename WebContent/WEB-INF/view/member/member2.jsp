<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
	
	<link rel="stylesheet" href="${root }/css/top.css" type="text/css"/>
	<link rel="stylesheet" href="${root }/css/bottom.css" type="text/css"/>
	<link rel="stylesheet" href="${root }/css/login-page.css" type="text/css"/>
	<link rel="stylesheet" href="${root }/css/member-page.css" type="text/css"/>
	
	<link rel="stylesheet" href="${root }/css/all.css" type="text/css"/>
	
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
	
<meta charset="UTF-8">
<title>member2</title>
</head>
<script type="text/javascript" src="${root }/javascript/page/check.js"></script>
<body id="wrap">
	
	<div id="login">
		<div id="login-box">
			<div class="login-box-l">
			</div>
			<div class="login-box-r">
				<div class="login-form animate__animated animate__fadeInRight">
					<div class="login-t member-t">
						<ul>
							<!-- <li>로고</li> -->
							<li>회원가입</li>
							<li>회원가입을 위해 추가사항을 입력해주세요.</li>
						</ul>
					</div>
					
					<form action="${root}/member/registerOk.in" method="post" onsubmit="return registerForm(this);">
						<input type="hidden" name="member_Id" value="${member_Id }">
						<input type="hidden" name="member_Pwd" value="${member_Pwd }">
						<div class="login-m">
							<div class="member-items">
								<label>이름</label><br/>
								<input type="text" maxlength="14" id="member_Name" name="member_Name">
							</div>
							<div class="member-items">
								<div id="memberBd">
									<div id="bdyy">
										<label>년</label><br/>
										<input type="text" class="inp" placeholder="" maxlength="4" name="bdyy"/>
									</div>
									<div id="bdmm">
										<label>월</label><br/>
										<div class="option-box">
											<select class="selc" name="bdmm">
													<option value="01">1월</option>
													<option value="02">2월</option>
													<option value="03">3월</option>
													<option value="04">4월</option>
													<option value="05">5월</option>
													<option value="06">6월</option>
													<option value="07">7월</option>
													<option value="08">8월</option>
													<option value="09">9월</option>
													<option value="10">10월</option>
													<option value="11">11월</option>
													<option value="12">12월</option>
												
											</select>
										</div>
									</div>
									<div id="bddd">
										<label>일</label><br/>
										<input type="text" class="inp" placeholder="" maxlength="2" name="bddd"/>
									</div>
								</div>
							</div>
							<div class="member-items">
								<label>이메일</label><br/>
								<input type="text" maxlength="14" id="member_Email" name="member_Email" >
							</div>
							<div class="member-items">
								<label>전화번호</label><br/>
								<input type="text" maxlength="14" name="phnNum" placeholder="-제외 숫자만 입력">
							</div>
							<div class="member-items">
								<p class="privacy-t">사용약관 및 개인정보보호 정책<span>*</span></p>
								<p class="privacy">계정 만들기를 클릭함으로써 <a href="#">사용 약관</a> 및 <a href="#">개인정보보호 정책</a>을 읽었으며 이에 동의한다고 확인합니다.</p>
							</div>
						</div>
						<div class="login-f">
							<div class="login-ac member-ac">
								<a href="${root }/member/register.in">아이디·비밀번호로 돌아가기</a>
								<input type="submit" value="계정 만들기">
							</div>
						</div>
					</form>
				
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>
