<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
	
	<link rel="stylesheet" href="css/top.css" type="text/css"/>
	<link rel="stylesheet" href="css/bottom.css" type="text/css"/>
	<link rel="stylesheet" href="css/main-page.css" type="text/css"/>
	
	<link rel="stylesheet" href="css/all.css" type="text/css"/>
	
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
	
<meta charset="utf-8">
<title>main</title>
</head>

<body id="wrap">
<jsp:include page="/template/top.jsp"/>
	<div id="main">
		
		<div id="main-box">
			<div id="search">
				<div id="search-t" class="animate__animated animate__fadeInUp animate__delay-1s">
					<p><span>시흥·안산</span>의 <span>모든 방</span></p>
					<p>여기, 인룸에서 찾아드려요.</p>
				</div>
				<div id="search-m" class="animate__animated animate__fadeInUp animate__delay-2s">
					<div id="search-m-ac">
						<form method="POST" action="${root }/map/search.in" >
							<img src="${root }/images/loupe.png"/>
							<input type="text" id="search" name="palce"/>
							<input type="submit" value="방 찾기" class="search-m-ac-btn"/>
						</form>
					</div>
				</div>
				<div id="search-b" class="animate__animated animate__fadeInUp animate__delay-2s">
					<div id="search-b-ac">
						<ul>
							<li><a id="search-b-ac-fav">인기 검색어</a></li>
							<li><a href="${root }/map/search.in?palce=안산">#안산</a></li>
							<li><a href="${root }/map/search.in?palce=배곧신도시">#배곧신도시</a></li>
							<li><a href="${root }/map/search.in?palce=고잔신도시">#고잔신도시</a></li>
							<li><a href="${root }/map/search.in?palce=오이도역">#오이도역</a></li>
							<li><a href="${root }/map/search.in?palce=정왕역">#정왕역</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
