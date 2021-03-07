<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<!-- noto sans -->
<link rel="stylesheet" type="text/css" href="${root }/css/top.css" />
<body>
	<div id="top">
		<div id="top-nav">
			<div id="top-nav-l">
				<a href="${root }/main.jsp">로고</a>
			</div>
			<div id="top-nav-m">
				<a href="${root }/map/mapList.in">방찾기<span><img src="${root }/images/arrow.png" /></span></a> 
				<a href="${root }/set/register.in">방 내놓기<span><img src="${root }/images/arrow.png" /></span></a> 
				<a href="#">관심 목록</a> <a href="#">중개사 가입</a>
			</div>
			<div id="top-nav-r">
				<c:if test="${member_name == null }"><a href="${root }/member/goLogin.in">로그인·회원가입</a></c:if>
				<c:if test="${member_name != null }"><a href="${root }/member/goLogin.in">${member_name}</a></c:if>
			</div>
		</div>
	</div>

</body>
</html>