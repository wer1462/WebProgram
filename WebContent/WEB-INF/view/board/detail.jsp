<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
        
<c:set var="root" value="${pageContext.request.contextPath}" />

<!doctype html>
<html>
<head>
	
	<link rel="stylesheet" href="${root}/css/top.css" type="text/css"/>
	<link rel="stylesheet" href="${root}/css/bottom.css" type="text/css"/>
	<link rel="stylesheet" href="${root}/css/detail-page.css" type="text/css"/>
	
	<link rel="stylesheet" href="${root}/css/all.css" type="text/css"/>
	<link rel="stylesheet" href="${root}/css/cell.css" type="text/css"/>
	
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.pkgd.min.js" integrity="sha512-Nx/M3T/fWprNarYOrnl+gfWZ25YlZtSNmhjHeC0+2gCtyAdDFXqaORJBj1dC427zt3z/HwkUpPX+cxzonjUgrA==" crossorigin="anonymous"></script>
		<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ccef7d00e62b4082f4025e9586ca1c2a&libraries=clusterer"></script>
		
<meta charset="utf-8">
<title>detail</title>
</head>
<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
<script type="text/javascript">

function toLikeCheck(root) {
	var url = root + "/map/clickLike.in";
	var like = document.getElementById("like").checked;
	var room_Num = document.getElementById("room_Num").value;
	var str = "";
	if(like){
		str = "추가";
	}else{
		str = "제거";
	}
	var params = "like=" + str;
	params += "&room_Num="+room_Num;
	sendRequest("POST", url, null , params);
	
}


function report(root,member_num,room_Num){
	var url = root + "/map/report.in";
	var params = "";
	params += "member_num="+member_num;
	params += "&room_Num="+room_Num;
	sendRequest("POST", url, setReport , params);
}


function setReport(){
	if(xhr.readyState==4 && xhr.status==200) {
			document.getElementById("reportBtn").style.visibility='hidden';
	}

}

</script>
<body id="wrap">
	<input type="hidden" value="${mapDto.room_Num }" id="room_Num"/>
	<div id="detail">
		<div id="detail-t">
			<div class="detail-t-box">
				<div class="detail-t-box-l">
					<a>${mapDto.room_Type }</a><a>/</a>
					<a>${mapDto.room_Size }</a><a>/</a>
					<c:if test="${mapDto.room_RentType == '월세'}"> 
						<a>보증금/월세 ${mapDto.room_Price }</a>
					</c:if>
										
					<c:if test="${mapDto.room_RentType == '전세'}">
						<a>전세 ${mapDto.room_Price }</a>
					</c:if>
				</div>
				<div class="detail-t-box-r">
					<!-- <button></button> -->
					<div class="like-btn">
						<c:if test="${check == 'checked' }"><input type="checkbox" name="like" id="like" onchange="toLikeCheck('${root }')" checked="checked"></c:if>
						<c:if test="${check != 'checked' }"><input type="checkbox" name="like" id="like" onchange="toLikeCheck('${root }')"></c:if>
						<label for="like">관심목록에 추가<span></span></label>
					</div>
					<a href="#">1:1 상담문의</a>
					<c:if test="${member_num != null }">
						<c:if test="${!fn: contains(mapDto.ROOM_REPORTUSER,member_num)}">
							<a id="reportBtn" onclick="report('${root}','${member_num}',${mapDto.room_Num})">허위매물 신고</a>
						</c:if>
					</c:if>
				</div>
			</div>
		</div>
		<div id="detail-p" class="carousel" data-flickity='{ "wrapAround": true, "draggable": false }'>
			<div class="carousel-cell photo photo-1"></div>
			<div class="carousel-cell photo photo-2"></div>
			<div class="carousel-cell photo photo-3"></div>
			<div class="carousel-cell photo photo-4"></div>
			<div class="carousel-cell photo photo-5"></div>
		</div>
		<div id="detail-m">
			<div class="detail-m-box">
				<div class="detail-tag-t">
					<div class="detail-tag-l">
						<div class="tag-info-1">
							<a class="info-t info-t-1">계약 정보</a>
								<ul>
									<li>
										<a>계약형태</a>
										<div>${mapDto.subRoom_Type }</div>
									</li>
									<c:choose>

										<c:when test="${mapDto.room_RentType == '월세'}"> 
											<li>
												<a>보증금/월세</a>
												<div>${mapDto.room_Price }</div>
											</li> 
										</c:when>
										
										<c:when test="${mapDto.room_RentType == '전세'}">
											<li>
												<a>전세</a>
												<div>${mapDto.room_Price }</div>
											</li> 
										</c:when>				
									</c:choose>

									
									<li>
										<a>공용 관리비</a>
										<div>${mapDto.room_Manageprice }</div>
									</li>
									<li>
										<a>입주가능일</a>
										<div>${mapDto.ROOM_MOVEIN }</div>
									</li>
									<li>
										<a>최초등록일</a>
										<div><fmt:formatDate pattern="yyyy-MM-dd" value="${ mapDto.room_date}"/></div>
									</li>
								</ul>
						</div>
					</div>
					<div class="detail-tag-r">
						<div class="tag-info-r">
							<a class="info-t info-t-1">방 정보</a>
								<ul>
									<li>
										<a>해당층/건물층</a>
										<div>${mapDto.room_Floor }</div>
									</li>
									<li>
										<a>전용/공급면적</a>
										<div>${mapDto.room_Size }</div>
									</li>
									<li>
										<a>방 수/욕실 수</a>
										<div>${mapDto.room_Structure }</div>
									</li>
									<li>
										<a>난방종류</a>
										<div>${mapDto.ROOM_BOILER }</div>
									</li>
									<li>
										<a>빌트인</a>
										<div>${mapDto.ROOM_BUILTIN }</div>
									</li>
									<li>
										<a>세대당 주차수</a>
										<div>${mapDto.room_Parking }</div>
									</li>
									<c:if test="${mapDto.ROOM_ELEVATOR !=  null}">
										<li>
											<a>엘리베이터</a>
											<div>${mapDto.ROOM_ELEVATOR}</div>
										</li>
									</c:if>	
									<c:if test="${mapDto.ROOM_ANIMAL !=  null}">
										<li>
											<a>반려동물</a>
											<div>${mapDto.ROOM_ANIMAL }</div>
										</li>
									</c:if>							
									
									<li>
										<a>베란다/발코니</a>
										<div>${mapDto.ROOM_VERANDA }</div>
									</li>
								</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="detail-m-2">
			<div class="detail-m-box">
				<div class="detail-tag-t">
					<div class="detail-tag-l">
						<div class="tag-info-1">
							<a class="info-t info-t-1">기본옵션</a>
							
								
								<c:forEach var="a" begin="0" end="${optionlen/4}">
								<div class="option-list-r">
									<c:forEach var="aa" begin="${a*4 }" end="${(a*4)+3}">
									<c:choose>
										<c:when test="${option[aa] == '에어컨'}"> 
											<div class="option-items">
												<div class="option-aircon option-icon-r"></div>
												<a>에어컨</a>
											</div>
										</c:when>
										<c:when test="${option[aa] == '비데'}"> 
											<div class="option-items">
												<div class="option-bidet option-icon-r"></div>
												<a>비데</a>
											</div>
										</c:when>
										<c:when test="${option[aa] == '옷장'}"> 
											<div class="option-items">
												<div class="option-closet option-icon-r"></div>
												<a>옷장</a>
											</div>
										</c:when>
										<c:when test="${option[aa] == '책상'}"> 
											<div class="option-items">
												<div class="option-desk option-icon-r"></div>
												<a>책상</a>
											</div>
										</c:when>
										<c:when test="${option[aa] == '전자도어락'}"> 
											<div class="option-items">
												<div class="option-doorlock option-icon-r"></div>
												<a>전자도어락</a>
											</div>
										</c:when>
										<c:when test="${option[aa] == '인덕션'}"> 
											<div class="option-items">
												<div class="option-induction option-icon-r"></div>
												<a>인덕션</a>
											</div>
										</c:when>
										<c:when test="${option[aa] == '세탁기'}"> 
											<div class="option-items">
												<div class="option-laundry option-icon-r"></div>
												<a>세탁기</a>
											</div>
										</c:when>
										<c:when test="${option[aa] == '전자레인지'}"> 
											<div class="option-items">
												<div class="option-micerowave option-icon-r"></div>
												<a>전자레인지</a>
											</div>
										</c:when>
										<c:when test="${option[aa] == '냉장고'}"> 
											<div class="option-items">
												<div class="option-refrig option-icon-r"></div>
												<a>냉장고</a>
											</div>
										</c:when>
										<c:when test="${option[aa] == '신발장'}"> 
											<div class="option-items">
												<div class="option-shoes option-icon-r"></div>
												<a>신발장</a>
											</div>
										</c:when>
										<c:when test="${option[aa] == '가스레인지'}"> 
											<div class="option-items">
												<div class="option-gas option-icon-r"></div>
												<a>가스레인지</a>
											</div>
										</c:when>
										<c:when test="${option[aa] == '침대'}"> 
											<div class="option-items">
												<div class="option-bed option-icon-r"></div>
												<a>침대</a>
											</div>
										</c:when>
										<c:when test="${option[aa] == 'TV'}"> 
											<div class="option-items">
												<div class="option-tv option-icon-r"></div>
												<a>TV</a>
											</div>
										</c:when>
										
									</c:choose>
									</c:forEach>
									</div>
								</c:forEach>
						
								
								
					

						</div>
					</div>
					<div class="detail-tag-r">
						<div class="tag-info-r">
							<a class="info-t info-t-1">보안/안전시설</a>
							<c:forEach var="a" begin="0" end="${securitylen/4}">
								<div class="option-list-r">
									<c:forEach var="aa" begin="${a*4 }" end="${(a*4)+3}">
									<c:choose>
										<c:when test="${security[aa] == '카드키'}"> 
											<div class="option-items">
												<div class="option-cardkey option-icon-r"></div>
												<a>카드키</a>
											</div>
										</c:when>
										<c:when test="${security[aa] == 'CCTV'}"> 
											<div class="option-items">
												<div class="option-cctv option-icon-r"></div>
												<a>CCTV</a>
											</div>
										</c:when>
										<c:when test="${security[aa] == '공동현관'}"> 
											<div class="option-items">
												<div class="option-entrance option-icon-r"></div>
												<a>공동현관</a>
											</div>
										</c:when>
										<c:when test="${security[aa] == '화재경보기'}"> 
											<div class="option-items">
												<div class="option-fire option-icon-r"></div>
												<a>화재경보기</a>
											</div>
										</c:when>
										<c:when test="${security[aa] == '인터폰'}"> 
											<div class="option-items">
												<div class="option-intercom option-icon-r"></div>
												<a>인터폰</a>
											</div>
										</c:when>
										<c:when test="${security[aa] == '비디오폰'}"> 
											<div class="option-items">
												<div class="option-videophone option-icon-r"></div>
												<a>비디오폰</a>
											</div>
										</c:when>
										<c:when test="${security[aa] == '방범창'}"> 
											<div class="option-items">
												<div class="option-window option-icon-r"></div>
												<a>방범창</a>
											</div>
										</c:when>
									</c:choose>
									</c:forEach>
									</div>
								</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="detail-f">
			<span class="info-t info-t-2">※ 중개사무소 대표가 직접 확인하고 승인한 매물입니다.</span>
		</div>
		<div id="detail-map">
			<a class="info-t info-t-1">위치 및 주변시설</a>
			<div class="map" id="map" style="width:100%;height:400px;">
			</div>
			<script type="text/javascript">
				var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
				var x = ${x};
				var y = ${y};
				
		   		mapOption = { 
		        	center: new kakao.maps.LatLng(${y},${x} ), // 지도의 중심좌표
		        	level: 3, // 지도의 확대 레벨
		        	disableDoubleClick: false,
		        	disableDoubleClickZoom: false,
		        	scrollwheel: false,
		        	draggable: false
		    	};
				var map = new kakao.maps.Map(mapContainer, mapOption); 
				map.setKeyboardShortcuts(false);
				
				var markerPosition  = new kakao.maps.LatLng(${y},${x} ); 

				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
				    position: markerPosition
				});

				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
			</script>
		</div>
		<div id="detail-seller">
			<a class="info-t info-t-1">판매자 정보</a>
			<div class="seller-box">
				<div class="seller-box-l">
					<div class="seller-name">
						<a></a>
						<ul>
							<li>${mapDto.ROOM_AGENT }</li>
							<li><span>${mapDto.room_WriterName }</span></li>
						</ul>
					</div>
				</div>
				<div class="seller-box-r">
					<div class="seller-btn">
						<div class="seller-btn-item">
							<a href="#">1:1 상담문의</a>
						</div>
						<div class="seller-btn-item">
							<a href="#">
								불량판매자 신고
								<!-- <svg width="14" height="14" viewBox="0 0 17 18" href>
									<g fill="#fff" fill-rule="evenodd">
									<path stroke-width="1.2" d="M8.6.6h1v1.8h-1zM15.207 2.934l.707.707-1.273 1.273-.707-.707zM1.934 2.793l.707-.707 1.273 1.273-.707.707z"></path>
									<path d="M3.5 17.5h10V11A4.5 4.5 0 0 0 9 6.5H8A4.5 4.5 0 0 0 3.5 11v6.5z"></path><path stroke-width="1.2" d="M.6 17.6h15.8v1H.6z"></path>
									</g>
								</svg> -->
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="detail-seller-other">
			<div class="other-box">
			<c:forEach var="listDto" items="${Dtolist}">
					<div class="other-item" OnClick="location.href ='${root}/map/mapDetail.in?room_Num=${listDto.room_Num}'">
						<div></div>
						<ul>
							<li>
								<a>${listDto.subRoom_Type }</a>
								<a>${listDto.room_Floor }</a>
								<a>관심 ${listDto.room_LikeNum }</a>
							</li>
							<li>${listDto.room_Price }</li>
							<li>${listDto.room_Floor }, ${listDto.room_Size }, 관리비 ${listDto.room_Manageprice }</li>
						</ul>
					</div>	
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>
