<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="root" value="${pageContext.request.contextPath}"/>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!doctype html>
<html>
<head>
	
	<link rel="stylesheet" href="${root }/css/top.css" type="text/css"/>
	<link rel="stylesheet" href="${root }/css/bottom.css" type="text/css"/>
	<link rel="stylesheet" href="${root }/css/like-page.css" type="text/css"/>
	
	<link rel="stylesheet" href="${root }/css/all.css" type="text/css"/>
	
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
	
<meta charset="utf-8">
<title>like</title>
</head>
<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
<script type="text/javascript">

function toLikeCheck(root,value,likecheck) {
	var url = root + "/map/clickLike.in";
	var like = likecheck.checked;
	var str = "";
	if(like){
		str = "추가";
	}else{
		str = "제거";
	}
	params = "like=" + str;
	params += "&room_Num="+value;
	sendRequest("POST", url, null , params);
	
}

</script>

<body id="wrap">
	<div id="like">
		<div id="like-t">
			<div class="like-t-box">
				<div class="like-t-box-l">
					<a class="member-normal">일반회원</a>
					<a>이원희 님의 관심목록</a>
				</div>
				<div class="like-t-box-r">
					<a>총 <span>${mapList.size()}</span>개의 관심 목록이 있습니다.</a>
				</div>
			</div>
		</div>
		
		

			<div class="like-box">
				<div class="like-l">
				<c:forEach var="i" begin="0" end="${mapList.size()/4}">
			
				<div class="like-l-box">	
					<c:forEach var="map" items="${mapList}"  begin="${i*4}" end="${i*4+3}">
														
							<div class="like-item">
								<div class="like-item-img img-item-1" OnClick="javascript:location.href ='${root}/map/mapDetail.in?room_Num=${map.room_Num}'">
									<div class="like-del">
										<span></span>
									</div>
								</div>
								<div class="like-item-tag">
									<div class="like-tag-l">
										<c:if test = "${fn : contains(map.room_Type, '원룸')}"><a>원룸</a></c:if>
										<c:if test = "${fn : contains(map.room_Type, '투룸')}"><a>원룸</a></c:if>
										<c:if test = "${fn : contains(map.room_Type, '쓰리룸')}"><a>원룸</a></c:if>
										<c:if test = "${fn : contains(map.room_Type, '오피스텔')}"><a>원룸</a></c:if>
										<a>${fn:trim(fn:split(map.room_Floor,'/')[0])}</a>
										<a>관심 ${map.room_LikeNum}</a>
									</div>
									<div class="like-tag-r">
										<div class="like-btn">
											<input type="checkbox" name="like" id="${map.room_Num }" value="${map.room_Num }" onchange="toLikeCheck('${root }',this.value,this)" checked="checked">
											<label for="${map.room_Num }">관심목록<span></span></label>
										</div>
									</div>
								</div>
								<div OnClick="javascript:location.href ='${root}/map/mapDetail.in?room_Num=${map.room_Num}'">
									<div class="like-item-price">
										<a>${map.room_Price} 만 원</a>
									</div>
									<div class="like-item-text">
										<a>${map.room_Floor}, ${map.room_Size}, 관리비 ${map.room_Manageprice}</a><br/>
									</div>
								</div>
							</div>	
							
								
	
						</c:forEach>
					</div>		
					</c:forEach>
				</div>
			</div>

		
		
		
	</div>
</body>
</html>
