<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
	<!-- noto sans -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400;500;700&display=swap" rel="stylesheet">
	
	<!-- roboto -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="${root }/css/top.css"/>
<body>
<div id="maps-head">
			<div class="maps-head-box">
				<div class="maps-head-box-l"></div>
				<div class="maps-head-box-r">
					<div class="maps-head-box-r-login">
						<div class="maps-head-box-r-login-l">
							<form>
								<div>
									<button>공인중개사 가입</button>
								</div>
								<div>
									<button>광고문의</button>
								</div>
							</form>
						</div>
						<div class="maps-head-box-r-login-r">
							<form>
								<div>
									<button>방찾기</button>
								</div>
								<div>
									<button>방팔기</button>
								</div>
								<div>
									<a href="${root }/map/loginPage.in">로그인·회원가입</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

</body>
</html>