<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta charset="utf-8">
	
	<!-- noto sans -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400;500;700&display=swap" rel="stylesheet">

	<!-- roboto -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="${root }/css/member.css"/>
	<script type="text/javascript" src="${root }/javascript/page/check.js"></script>
<title>인룸 :: 회원가입</title>
</head>
<script type="text/javascript">




</script>

<body>
	<div id="wrap">
		<div id="header">
		</div>
		<div id="nav">
		</div>
		<div id="page">
			<div class="member">
				<div class="memberFrame">
					<div id="memberSubject">
						<a href="#"><img src="../images/logo-sub.png"/></a>
					</div>
					<form method="post" id="memberForm" class="memberForm" action="" onsubmit="return registerForm(this)">
						<div id="memberId" class="memberCnt">
							<label class="memberTt">아이디<span class="memberS">*</span></label>
							<input type="text" maxlength="12" class="inp" id="idBox" placeholder="아이디" name="id"/>
							<label class="memberTt"><fd>ff</fd></label>
						</div>
						<div class="cut"></div>
						<div id="memberPw" class="memberCnt">
							<label class="memberTt">비밀번호<span class="memberS">*</span></label>
							<input type="password" maxlength="20" placeholder="비밀번호" class="inp" name="password"/>
						</div>
						<div class="cut"></div>
						<div id="memberPwCk" class="memberCnt">
							<label class="memberTt">비밀번호 확인<span class="memberS">*</span></label>
							<input type="password" maxlength="20" class="inp" name="passwordCheck"/>
						</div>
						<div class="cut"></div>
						<!-- <div class="line"></div> -->
						<div id="memberName" class="memberCnt">
							<label class="memberTt">이름<span class="memberS">*</span></label>
							<input type="text" maxlength="8" class="inp" name="name"/>
						</div>
						<div class="cut"></div>
						<div id="memberBirth" class="memberCnt">
							<label class="memberTt">생년월일<span class="memberS">*</span></label>
							<div id="memberBd">
								<span><input type="text" id="bdyy" class="inp" placeholder="년(4자)" maxlength="4" name="bdyy"/></span>
								<span>
									<select id="bdmm" class="selc" name="bdmm">
										<option>월</option>
										<option value="01">1</option>
										<option value="02">2</option>
										<option value="03">3</option>
										<option value="04">4</option>
										<option value="05">5</option>
										<option value="06">6</option>
										<option value="07">7</option>
										<option value="08">8</option>
										<option value="09">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
									</select>
								</span>
								<span><input type="text" id="bddd" class="inp" placeholder="일" maxlength="2" name="bddd"/></span>
							</div>
						</div>
						<div class="cut"></div>
						<div id="memberEmail" class="memberCnt">
							<label class="memberTt">메일 &#40;전화번호와 메일 중 선택&#41;<span class="memberS">*</span></label>
							<div id="memberMail">
								<input type="text" id="mailName" class="inp" name="email" maxlength="20"/>
								<!-- <select id="mailAdd" class="selc">
									<option>이메일</option>
									<option value="naver.com">naver.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="daum.net">daum.net</option>
									<option value="nate.com">nate.com</option>
									<option value="hanmail.com">hanmail.com</option>
								</select> -->
							</div>
						</div>
						<div class="cut"></div>
						<div id="memberNumber" class="memberCnt">
							<label class="memberTt">전화번호  &#40;메일과 전화번호 중 선택&#41;<span class="memberS">*</span></label>
							<div id="memberPhone">
								<select id="phnAdd" class="selc" name="phnAdd">
									<option>번호</option>
									<option>010</option>
									<option>011</option>
									<option>016</option>
									<option>018</option>
									<option>019</option>
									<option>070</option>
								</select>
								<input type="text" id="phnMiddle" class="inp" name="phnMiddle" maxlength="4"/>
								<input type="text" id="phnLast" class="inp" name="phnLast" maxlength="4"/>
							</div>
						</div>
						<div class="cut"></div>
						<div id="memberActionBtn" class="memberCnt">
							<input type="submit" value="가입하기" id="memberAction"/>
						</div>
					</form>
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
