<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${root }/css/top.css" type="text/css" />
<link rel="stylesheet" href="${root }/css/bottom.css" type="text/css" />
<link rel="stylesheet" href="${root }/css/upload-room.css"
	type="text/css" />

<link rel="stylesheet" href="${root }/css/all.css" type="text/css" />

<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<script type="text/javascript" src="${root }/javascript/kakaomap/map.js"></script>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ccef7d00e62b4082f4025e9586ca1c2a&libraries=clusterer,services"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<meta charset="UTF-8">
<title>방 내놓기</title>
</head>
<body>
	<div id="upload-room">
		<div id="upload-t">
			<div class="upload-t-box">
				<div class="upload-t-box-l">
					<a>방 내놓기</a>
				</div>
				<div class="upload-t-box-r">
					<a>허위매물을 게시하거나 정확한 정보를 게시하지 않은 경우의 <span>불이익</span>이나 <span>법적
							책임</span>은 본인에게 있습니다.
					</a>
				</div>
			</div>
		</div>
		<div id="upload-m">
			<div class="upload-m-1">
				<div class="upload-notice">
					<ul>
						<li>전/월세 매물만 등록할 수 있습니다</li>
						<li>1개의 매물만 등록 가능하며, 인룸에서 표시됩니다.</li>
						<li>등록한 매물은 30일 간 노출됩니다.</li>
						<li>프라임 회원 가입 시 목록 상단에 가장 먼저 표시됩니다.</li>
					</ul>
				</div>

				<!-- 계약정보 -->
				<p>계약정보</p>
				<div class="upload-item-box">
					<div class="upload-item">
						<div class="upload-item-l">
							<a>종류 선택</a>
						</div>
						<div class="upload-item-r">
							<div id="box">
								<label> <input type="radio" name="room" checked /> <a
									for="room">원룸</a>
								</label> <label> <input type="radio" name="room" /> <a
									for="room">투룸·쓰리룸</a>
								</label> <label> <input type="radio" name="room" /> <a
									for="room">오피스텔</a>
								</label>
								<!-- <input class="upload-text" type="text" placeholder="세부사항 입력"/> -->
							</div>
						</div>
					</div>
					<div class="upload-item">
						<div class="upload-item-l">
							<a>가격 종류</a>
						</div>
						<div class="upload-item-r">
							<div id="box">
								<label> <input type="radio" name="price" checked /> <a
									for="price">월세</a>
								</label> <label> <input type="radio" name="price" /> <a
									for="price">전세</a>
								</label> <label> <input type="radio" name="price" /> <a
									for="price">매매</a>
								</label>
							</div>
						</div>
					</div>
					<div class="upload-item">
						<div class="upload-item-l upload-item-info-l">
							<a>가격 정보</a>
						</div>
						<div class="upload-item-r">
							<div id="box">
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>월세·전세</span> <input type="text" class="info-input"
											maxlength="5" placeholder="-" /> <span>만원</span>
									</div>
								</div>
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>보증금</span> <input type="text" class="info-input"
											maxlength="5" placeholder="-"> <span>만원</span>
									</div>
								</div>
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>관리비</span> <input type="text" class="info-input"
											maxlength="5" placeholder="-" /> <span>만원</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="upload-item">
						<div class="upload-item-l">
							<a>입주 날짜</a>
						</div>
						<div class="upload-item-r">
							<div id="box">
								<input type="text" maxlength="4" placeholder="년도" /> <select>
									<option>1월</option>
									<option>2월</option>
									<option>3월</option>
									<option>4월</option>
									<option>5월</option>
									<option>6월</option>
									<option>7월</option>
									<option>8월</option>
									<option>9월</option>
									<option>10월</option>
									<option>11월</option>
									<option>12월</option>
								</select> <input type="text" maxlength="2" placeholder="일" /> <label
									class="upload-live"> <input type="radio" name="live" />
									<a for="live">날짜협의</a>
								</label> <label class="upload-live"> <input type="radio"
									name="live" /> <a for="live">즉시입주</a>
								</label> <span class="upload-live-span">※ 세가지 중 한가지만 선택해주세요.</span>
							</div>
						</div>
					</div>
				</div>

				<!-- 방 정보 -->
				<p>방 정보</p>
				<div class="upload-item-box">
					<div class="upload-item">
						<div class="upload-item-l upload-item-l-size">
							<a>건물 크기</a>
						</div>
						<div class="upload-item-r">
							<div id="box" class="upload-item-r-size">
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>공급면적</span> <input type="text" class="info-input"
											maxlength="5" placeholder="-" /> <span>평</span>
									</div>
								</div>
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>공급면적</span> <input type="text" class="info-input"
											maxlength="5" placeholder="-"> <span>㎡</span>
									</div>
								</div>
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>전용면적</span> <input type="text" class="info-input"
											maxlength="5" placeholder="-" /> <span>평</span>
									</div>
								</div>
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>전용면적</span> <input type="text" class="info-input"
											maxlength="5" placeholder="-"> <span>㎡</span>
									</div>
								</div>
							</div>
							<!-- <form class="upload-item-r-size">
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>전용면적</span>
										<input type="text" class="info-input" maxlength="5" placeholder="--"/>
										<span>평</span>
									</div>
								</div>
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>전용면적</span>
										<input type="text" class="info-input" maxlength="5" placeholder="--">
										<span>㎡</span>
									</div>
								</div>
							</div> -->
						</div>
					</div>
					<div class="upload-item">
						<div class="upload-item-l">
							<a>건물 층수</a>
						</div>
						<div class="upload-item-r">
							<div id="box">
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>건물 층수</span> <input type="text" class="info-input"
											maxlength="5" placeholder="-" /> <span>층</span>
									</div>
								</div>
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>해당 층수</span> <input type="text" class="info-input"
											maxlength="5" placeholder="-" /> <span>층</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="upload-item">
						<div class="upload-item-l">
							<a>방/욕실 수</a>
						</div>
						<div class="upload-item-r">
							<div id="box">
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>방 수</span> <input type="text" class="info-input"
											maxlength="5" placeholder="-" /> <span></span>
									</div>
								</div>
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>욕실 수</span> <input type="text" class="info-input"
											maxlength="5" placeholder="-" /> <span>개</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="upload-item">
						<div class="upload-item-l">
							<a>세대별 주차 수</a>
						</div>
						<div class="upload-item-r">
							<div id="box">
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>총 주차가능 수</span> <input type="text" class="info-input"
											maxlength="5" placeholder="-" /> <span>개</span>
									</div>
								</div>
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>총 세대 수</span> <input type="text" class="info-input"
											maxlength="5" placeholder="-" /> <span>세대</span>
									</div>
								</div>
								<label class="upload-live"> <input type="radio"
									name="park" /> <a for="park">주차없음</a>
								</label>
							</div>
						</div>
					</div>
					<!-- 옵션 -->
					<p>옵션</p>

					<div id="option-frame">
						<div class="upload-item-box upload-item-box-2">
							<div class="upload-item upload-item-2">
								<div class="upload-item-l option-t option-t-r">
									<a>반려동물</a>
								</div>
								<!-- <div class="upload-item-r option">
							<div id="box">
								<div class="option_l"></div>
								<div class="option_r"></div>
							</div>
						</div> -->
								<div class="upload-item-r">
									<div id="box">
										<label> <input type="radio" name="animal" checked /> <a
											for="animal">가능</a>
										</label> <label> <input type="radio" name="animal" /> <a
											for="animal">불가능</a>
										</label>
									</div>
								</div>
							</div>
							<div class="upload-item upload-item-2">
								<div class="upload-item-l option-t option-t-r">
									<a>엘레베이터</a>
								</div>
								<!-- <div class="upload-item-r option">
							<div id="box">
								<div class="option_l"></div>
								<div class="option_r"></div>
							</div>
						</div> -->
								<div class="upload-item-r">
									<div id="box">
										<label> <input type="radio" name="elv" checked /> <a
											for="elv">있음</a>
										</label> <label> <input type="radio" name="elv" /> <a
											for="elv">없음</a>
										</label>
									</div>
								</div>
							</div>
						</div>
						<div class="upload-item-box upload-item-box-2">
							<div class="upload-item upload-item-2">
								<div class="upload-item-l option-t option-t-r">
									<a>빌트인</a>
								</div>
								<!-- <div class="upload-item-r option">
							<div id="box">
								<div class="option_l"></div>
								<div class="option_r"></div>
							</div>
						</div> -->
								<div class="upload-item-r">
									<div id="box">
										<label> <input type="radio" name="animal" checked /> <a
											for="animal">있음</a>
										</label> <label> <input type="radio" name="animal" /> <a
											for="animal">없음</a>
										</label>
									</div>
								</div>
							</div>
							<div class="upload-item upload-item-2">
								<div class="upload-item-l option-t option-t-r">
									<a>베란다/발코니</a>
								</div>
								<!-- <div class="upload-item-r option">
							<div id="box">
								<div class="option_l"></div>
								<div class="option_r"></div>
							</div>
						</div> -->
								<div class="upload-item-r">
									<div id="box">
										<label> <input type="radio" name="elv" checked /> <a
											for="animal_yes">있음</a>
										</label> <label> <input type="radio" name="elv" /> <a
											for="elv">없음</a>
										</label>
									</div>
								</div>
							</div>
						</div>

						<div class="upload-item">
							<div class="upload-item-l option-plus">
								<a>추가옵션</a>
							</div>
							<div class="upload-item-r">
								<div class="option-plus-form">
									<label> <input type="checkbox" /> <a>에어컨</a>
									</label> <label> <input type="checkbox" /> <a>비데</a>
									</label> <label> <input type="checkbox" /> <a>옷장</a>
									</label> <label> <input type="checkbox" /> <a>책상</a>
									</label> <label> <input type="checkbox" /> <a>전자도어락</a>
									</label>
								</div>
								<div class="option-plus-form">
									<label> <input type="checkbox" /> <a>인덕션</a>
									</label> <label> <input type="checkbox" /> <a>침대</a>
									</label> <label> <input type="checkbox" /> <a>세탁기</a>
									</label> <label> <input type="checkbox" /> <a>전자레인지</a>
									</label> <label> <input type="checkbox" /> <a>냉장고</a>
									</label>

								</div>
								<div class="option-plus-form">
									<label> <input type="checkbox" /> <a>신발장</a>
									</label> <label> <input type="checkbox" /> <a>가스레인지</a>
									</label> <label> <input type="checkbox" /> <a>침대</a>
									</label>
								</div>

							</div>


						</div>
					</div>
					<div class="upload-item">
						<div class="upload-item-l option-plus-2">
							<a>보안</a>
						</div>
						<div class="upload-item-r">
							<div class="option-plus-form">
								<label> <input type="checkbox" /> <a>카드키</a>
								</label> <label> <input type="checkbox" /> <a>CCTV</a>
								</label> <label> <input type="checkbox" /> <a>공동현관</a>
								</label> <label> <input type="checkbox" /> <a>책상</a>
								</label> <label> <input type="checkbox" /> <a>화재경보기</a>
								</label>
							</div>
							<div class="option-plus-form">
								<label> <input type="checkbox" /> <a>인터폰</a>
								</label> <label> <input type="checkbox" /> <a>비디오폰</a>
								</label> <label> <input type="checkbox" /> <a>방범창</a>
								</label>
							</div>
						</div>
					</div>
				</div>

				<!-- 상세정보 -->
				<p>상세정보</p>
				<div class="upload-item-box">
					<div class="upload-item">
						<div class="upload-item-l">
							<a>상세 설명</a>
						</div>
						<div class="upload-item-r">
							<div id="box">
								<input type="text" class="detail-info-input" maxlength="30"
									placeholder="예) 중앙역 도보 5분, 혼자 살기 좋은 집 입니다." />
							</div>
						</div>
					</div>
					<div class="upload-item">
						<div class="upload-item-l upload-map">
							<a>주소</a>
						</div>
						<div class="upload-item-r upload-map-r">
							<p>※ 도로변, 지변주소에 대해 통합 검색이 가능합니다.</p>
							<div id="box">
								<input type="text" class="detail-info-button1"
									id="sample5_address" maxlength="20"
									placeholder="예) 정왕로 16, 고잔로 21" /> <input type="button"
									class="detail-info-button2"
									onclick="sample5_execDaumPostcode()" value="주소검색" />
								<div class="upload-item-info-box">
									<input type="text" class="detail-info-button3" maxlength="6"
										placeholder="예) 102동" /> <span>동</span>
								</div>
								<div class="upload-item-info-box">
									<input type="text" class="detail-info-button3" maxlength="6"
										placeholder="예) 2105호" /> <span>호</span>
								</div>

							</div>
							<div id="map"
								style="width: 90%; height: 300px; margin-top: 10px;"></div>
								<input type="hidden" id="map_x"/>
								<input type="hidden" id="map_y"/>
							<script>
								var mapContainer = document
										.getElementById('map'), // 지도를 표시할 div
								mapOption = {
									center : new daum.maps.LatLng(37.537187,
											127.005476), // 지도의 중심좌표
									level : 5
								// 지도의 확대 레벨
								};

								//지도를 미리 생성
								var map = new daum.maps.Map(mapContainer,
										mapOption);
								//주소-좌표 변환 객체를 생성
								var geocoder = new daum.maps.services.Geocoder();
								//마커를 미리 생성
								var marker = new daum.maps.Marker({
									position : new daum.maps.LatLng(37.537187,
											127.005476),
									map : map
								});

								function sample5_execDaumPostcode() {
									new daum.Postcode(
											{
												oncomplete : function(data) {
													var addr = data.address; // 최종 주소 변수

													// 주소 정보를 해당 필드에 넣는다.
													document.getElementById("sample5_address").value = addr;
													// 주소로 상세 정보를 검색
													geocoder.addressSearch(
																	data.address,
																	function(
																			results,
																			status) {
																		// 정상적으로 검색이 완료됐으면
																		if (status === daum.maps.services.Status.OK) {

																			var result = results[0]; //첫번째 결과의 값을 활용
																			document.getElementById("map_x").value = result.x;
																			document.getElementById("map_y").value = result.y;
																			// 해당 주소에 대한 좌표를 받아서
																			var coords = new daum.maps.LatLng(
																					result.y,
																					result.x);
																			// 지도를 보여준다.
																			map.relayout();
																			// 지도 중심을 변경한다.
																			map.setCenter(coords);
																			// 마커를 결과값으로 받은 위치로 옮긴다.
																			marker.setPosition(coords)
																		}
																	});
												}
											}).open();
								}
							</script>

						</div>
					</div>
					
					<div class="upload-item">
						<div class="upload-item-l">
							<a>부동산 정보</a>
						</div>
						<div class="upload-item-r">
							<div id="box">
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>공인중개사 이름</span> <input type="text"
											class="info-input-dongsan" maxlength="10" placeholder="" />
									</div>
								</div>
								<div class="upload-item-info">
									<div class="upload-item-info-box">
										<span>담당자</span> <input type="text" class="info-input-dongsan"
											maxlength="10" placeholder="" />
									</div>
								</div>
								<label class="upload-live"> <input type="radio"
									name="solo" /> <a for="solo">개인</a>
								</label>
							</div>
						</div>
					</div>
				</div>

				<!-- 사진 -->
				<p>사진</p>
				<div class="upload-item-box">

					<div class="upload-item">
						<div class="upload-item-l upload-photo">
							<a>사진</a>
						</div>
						<div class="upload-item-r upload-map-r">
							<p>- 사진은 가로로 찍은 사진을 권장합니다.</p>
							<p>- 사진 용량은 사진 한 장당 10MB까지 등록이 가능합니다.</p>
							<p>- 사진은 최소 5장 이상 등록해야하며, 최대 8장까지 가능합니다. 그 이상 등록 시 시간이 다소 지연될
								수 있습니다.</p>
							<div id="box">
								<input type="file" class="photo-file" />
							</div>
							<div class="detail-info-photoex">
								<div class="photoex-box">
									<div class="photoex ex1"></div>
									<div class="photoex ex1"></div>
									<div class="photoex ex1"></div>
									<div class="photoex ex1"></div>
								</div>
								<div class="photoex-box">
									<div class="photoex ex2"></div>
									<div class="photoex ex2"></div>
									<div class="photoex ex2"></div>
									<div class="photoex ex2"></div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="upload-item-box-btn">
					<button>등록</button>
					<button>취소</button>
				</div>

			</div>
		</div>
	</div>
	<div id="footer">
		<div id="footer-box">
			<div id="footer-frame">
				<div class="footerFrame-head">
					<ul>
						<li><a href="#">개인정보처리방침</a></li>
						<li>|</li>
						<li><a href="#">인룸 이용약관</a></li>
						<li>|</li>
						<li><a href="#">권리침해 처리방침</a></li>
						<li>|</li>
						<li><a href="#">광고문의</a></li>
						<li>|</li>
						<li><a href="#">사업자정보 확인</a></li>
						<span>
							<li><a href="#">고객센터</a></li>
						<li>|</li>
							<li><a href="#">&#40;주&#41;원희상사</a></li>
						</span>
					</ul>
				</div>
				<div class="footerFrame-body">
					<ul class="footerbody-first">
						<li>대표이사<span>이원희</span></li>
						<li>|</li>
						<li>사업자등록번호<span>001-01-00001</span></li>
						<li>|</li>
						<li>통신판매업신고번호<span>2021-경기정왕-00001 (등록 정보 확인)</span></li>
					</ul>
					<ul class="footerbody-second">
						<li>주소<span>경기도 시흥시 정왕동 과학로 L동 207호</span></li>
						<li>|</li>
						<li>대표전화<span>031-001-0001</span></li>
						<li>|</li>
						<li>이메일<span>admin@inroom.com</span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>