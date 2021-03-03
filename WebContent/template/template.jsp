<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>Insert title here</title>
</head>	
<script type="text/javascript" src="${root }/javascript/page/check.js"></script>
<body>
<jsp:include page="/template/top.jsp"/>

<jsp:include page="${viewPage}"/>


</body>
</html>