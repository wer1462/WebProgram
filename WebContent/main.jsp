<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
	
	<!-- noto sans -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400;500;700&display=swap" rel="stylesheet">

	<!-- roboto -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
	
<meta charset="utf-8">
<title>인룸 :: 시흥·안산의 모든 방 여기있다</title>
</head>

<body id="wrap">
	<div id="area">
		<jsp:include page="/template/top.jsp"/>
		<div id="search">
			<div id="search-box-head">
				<div class="search-box-title">
					<p>시흥·안산의 <span>어떤 방</span>에서 </p>
					<p>살고 싶으신가요<span class="search-box-title-question">?</span></p>
				</div>
			</div>
			<div id="search-box-body">
				<div class="search-box-action">
					<form>
						<img src="images/loupe.png"/>
						<input type="text"/>
						<button>방 찾기</button>
					</form>
				</div>
			</div>
			<div id="search-box-body-tag">
				<div class="search-box-tag">
					<ul>
						<li><a class="search-box-tag-fav">인기 검색어</a></li>
						<li><a href="#">#안산</a></li>
						<li><a href="#">#시흥</a></li>
						<li><a href="#">#중앙동</a></li>
						<li><a href="#">#배곧신도시</a></li>
						<li><a href="#">#고잔동</a></li>
						<li><a href="#">#시흥대야</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="favorite">
			<div id="favorite-box-head">
				<div class="favorite-box-title">
					<p>이번 주 <span>인기있는 인룸</span>을 한 눈에 <a>매주 월요일을 기준으로 업데이트 됩니다.</a></p>
					<!-- <p>조회수가 가장 많은 방을 한눈에</p> -->
				</div>
			</div>
			<div id="favorite-box-body">
				<div class="favorite-box-top5">
					<ul>
						<li>
							<div class="top5-box" onClick="location.href='https://www.zigbang.com/home/officetel/items/25996647';">
								<div class="top5-box-head top5-1"></div>
								<div class="top5-box-body">
									<p class="top5-box-body-tag-room"><a>원룸</a><a>안산</a><a>관심999+</a></p>
									<p class="top5-box-body-tag-price"><a>999/99</a></p>
									<p class="top5-box-body-tag-info"><a>1층, 37m², 관리비 5만</a><br/>
										<a>세명에서도 충분히 사는 집</a></p>
								</div>
							</div>
						</li>
						<li>
							<div class="top5-box">
								<div class="top5-box-head top5-2"></div>
								<div class="top5-box-body">
									<p class="top5-box-body-tag-room"><a>오피스텔</a><a>안산</a><a>관심999+</a></p>
									<p class="top5-box-body-tag-price"><a>999/99</a></p>
									<p class="top5-box-body-tag-info"><a>1층, 37m², 관리비 5만</a><br/>
										<a>세명에서도 충분히 사는 집</a></p>
								</div>
							</div>
						</li>
						<li>
							<div class="top5-box">
								<div class="top5-box-head top5-3"></div>
								<div class="top5-box-body">
									<p class="top5-box-body-tag-room"><a>오피스텔</a><a>안산</a><a>관심999+</a></p>
									<p class="top5-box-body-tag-price"><a>999/99</a></p>
									<p class="top5-box-body-tag-info"><a>1층, 37m², 관리비 5만</a><br/>
										<a>세명에서도 충분히 사는 집</a></p>
								</div>
							</div>
						</li>
						<li>
							<div class="top5-box">
								<div class="top5-box-head top5-4"></div>
								<div class="top5-box-body">
									<p class="top5-box-body-tag-room"><a>오피스텔</a><a>안산</a><a>관심999+</a></p>
									<p class="top5-box-body-tag-price"><a>999/99</a></p>
									<p class="top5-box-body-tag-info"><a>1층, 37m², 관리비 5만</a><br/>
										<a>세명에서도 충분히 사는 집</a></p>
								</div>
							</div>
						</li>
						<li>
							<div class="top5-box">
								<div class="top5-box-head top5-5"></div>
								<div class="top5-box-body">
									<p class="top5-box-body-tag-room"><a>오피스텔</a><a>안산</a><a>관심999+</a></p>
									<p class="top5-box-body-tag-price"><a>999/99</a></p>
									<p class="top5-box-body-tag-info"><a>1층, 37m², 관리비 5만</a><br/>
										<a>세명에서도 충분히 사는 집</a></p>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<jsp:include page="/template/bottom.jsp"/>
	</div>
</body>
</html>
