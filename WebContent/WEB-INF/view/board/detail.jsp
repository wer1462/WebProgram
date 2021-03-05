<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
<meta charset="utf-8">
<title>detail</title>
</head>

<body id="wrap">
	<div id="detail">
		<div id="detail-t">
			<div class="detail-t-box">
				<div class="detail-t-box-l">
					<a>원룸</a><a>/</a>
					<a>12평</a><a>/</a>
					<a>월세 500·30</a><a>/</a>
					<a>안산시 상록구 고잔동</a>
				</div>
				<div class="detail-t-box-r">
					<!-- <button></button> -->
					<div class="like-btn">
						<input type="checkbox" name="like" id="like">
						<label for="like">관심목록에 추가<span></span></label>
					</div>
					<a href="#">1:1 상담문의</a>
					<a href="#">허위매물 신고</a>
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
										<div>${mapDto.room_Type }</div>
									</li>
									<li>
										<a>주용도</a>
										<div>공동주택</div>
									</li>
									<li>
										<a>보증금</a>
										<div>500 만/원</div>
									</li>
									<li>
										<a>월세</a>
										<div>30 만/원</div>
									</li>
									<li>
										<a>공용 관리비</a>
										<div>${mapDto.room_Manageprice }</div>
									</li>
									<li>
										<a>입주가능일</a>
										<div>즉시 입주</div>
									</li>
									<li>
										<a>사용승인일</a>
										<div>2002.08.22</div>
									</li>
									<li>
										<a>최초등록일</a>
										<div>2021.02.10</div>
									</li>
									<li>
										<a>입주가능일</a>
										<div>2021.03.01</div>
									</li>
									<li>
										<div></div>
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
										<div>9층/9층</div>
									</li>
									<li>
										<a>전용/공급면적</a>
										<div>${mapDto.room_Size }</div>
									</li>
									<li>
										<a>방 수/욕실 수</a>
										<div>2개/1개</div>
									</li>
									<li>
										<a>난방종류</a>
										<div>개별난방</div>
									</li>
									<li>
										<a>빌트인</a>
										<div>아님</div>
									</li>
									<li>
										<a>건물 주차수</a>
										<div>총 0대</div>
									</li>
									<li>
										<a>세대당 주차수</a>
										<div>0대</div>
									</li>
									<li>
										<a>엘리베이터</a>
										<div>없음</div>
									</li>
									<li>
										<a>반려동물</a>
										<div>불가능</div>
									</li>
									<li>
										<a>베란다/발코니</a>
										<div>없음</div>
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
							<div class="option-list-r">
								<div class="option-items">
									<div class="option-aircon option-icon-r"></div>
									<a>에어컨</a>
								</div>
								<div class="option-items">
									<div class="option-bidet option-icon-r"></div>
									<a>비데</a>
								</div>
								<div class="option-items">
									<div class="option-closet option-icon-r"></div>
									<a>옷장</a>
								</div>
								<div class="option-items">
									<div class="option-desk option-icon-r"></div>
									<a>책상</a>
								</div>
							</div>
							<div class="option-list-r">
								<div class="option-items">
									<div class="option-doorlock option-icon-r"></div>
									<a>전자도어락</a>
								</div>
								<div class="option-items">
									<div class="option-induction option-icon-r"></div>
									<a>인덕션</a>
								</div>
								<div class="option-items">
									<div class="option-laundry option-icon-r"></div>
									<a>세탁기</a>
								</div>
								<div class="option-items">
									<div class="option-micerowave option-icon-r"></div>
									<a>전자레인지</a>
								</div>
							</div>
							<div class="option-list-r">
								<div class="option-items">
									<div class="option-refrig option-icon-r"></div>
									<a>냉장고</a>
								</div>
								<div class="option-items">
									<div class="option-shoes option-icon-r"></div>
									<a>신발장</a>
								</div>
								<div class="option-items">
									<div class="option-gas option-icon-r"></div>
									<a>가스레인지</a>
								</div>
								<div class="option-items">
									<div class="option-bed option-icon-r"></div>
									<a>침대</a>
								</div>
							</div>
							<div class="option-list-r">
								<div class="option-items">
									<div class="option-tv option-icon-r"></div>
									<a>TV</a>
								</div>
								<div class="option-items">
									<div class="option-x option-icon-r"></div>
									<a></a>
								</div>
								<div class="option-items">
									<div class="option-x option-icon-r"></div>
									<a></a>
								</div>
								<div class="option-items">
									<div class="option-x option-icon-r"></div>
									<a></a>
								</div>
							</div>
						</div>
					</div>
					<div class="detail-tag-r">
						<div class="tag-info-r">
							<a class="info-t info-t-1">보안/안전시설</a>
								<div class="option-list-r">
									<div class="option-items">
										<div class="option-cardkey option-icon-r"></div>
										<a>카드키</a>
									</div>
									<div class="option-items">
										<div class="option-cctv option-icon-r"></div>
										<a>CCTV</a>
									</div>
									<div class="option-items">
										<div class="option-entrance option-icon-r"></div>
										<a>공동현관</a>
									</div>
									<div class="option-items">
										<div class="option-fire option-icon-r"></div>
										<a>화재경보기</a>
									</div>
								</div>
								<div class="option-list-r">
									<div class="option-items">
										<div class="option-intercom option-icon-r"></div>
										<a>인터폰</a>
									</div>
									<div class="option-items">
										<div class="option-videophone option-icon-r"></div>
										<a>비디오폰</a>
									</div>
									<div class="option-items">
										<div class="option-window option-icon-r"></div>
										<a>방범창</a>
									</div>
									<div class="option-items">
										<div class="option-x option-icon-r"></div>
										<a></a>
									</div>
								</div>
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
			<div class="detail-mapbox">
			</div>
		</div>
		<div id="detail-seller">
			<a class="info-t info-t-1">판매자 정보</a>
			<div class="seller-box">
				<div class="seller-box-l">
					<div class="seller-name">
						<a></a>
						<ul>
							<li>미남공인중개사사무소</li>
							<li><span>이원희</span></li>
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
				<div class="other-item" OnClick="location.href ='#'">
					<div></div>
					<ul>
						<li>
							<a>원룸</a>
							<a>7층</a>
							<a>관심 999+</a>
						</li>
						<li>666/66</li>
						<li>9층, 99평, 관리비 99만</li>
					</ul>
				</div>
				<div class="other-item" OnClick="location.href ='#'">
					<div></div>
					<ul>
						<li>
							<a>원룸</a>
							<a>7층</a>
							<a>관심 999+</a>
						</li>
						<li>666/66</li>
						<li>9층, 99평, 관리비 99만</li>
					</ul>
				</div>
				<div class="other-item" OnClick="location.href ='#'">
					<div></div>
					<ul>
						<li>
							<a>원룸</a>
							<a>7층</a>
							<a>관심 999+</a>
						</li>
						<li>666/66</li>
						<li>9층, 99평, 관리비 99만</li>
					</ul>
				</div>
				<div class="other-item" OnClick="location.href ='#'">
					<div></div>
					<ul>
						<li>
							<a>원룸</a>
							<a>7층</a>
							<a>관심 999+</a>
						</li>
						<li>666/66</li>
						<li>9층, 99평, 관리비 99만</li>
					</ul>
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>
