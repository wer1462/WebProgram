<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${root}/css/top.css" type="text/css" />
<link rel="stylesheet" href="${root}/css/bottom.css" type="text/css" />
<link rel="stylesheet" href="${root}/css/upload-room.css"
   type="text/css" />
<link rel="stylesheet" href="${root}/css/all.css" type="text/css" />

<link rel="preconnect" href="https://fonts.gstatic.com">
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
   rel="stylesheet">
<script type="text/javascript" src="${root}/javascript/kakaomap/map.js"></script>

<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ccef7d00e62b4082f4025e9586ca1c2a&libraries=clusterer,services"></script>
<script
   src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<meta charset="UTF-8">
<title>방 내놓기</title>

<script type="text/javascript" src="${root}/javascript/set/script.js"></script>
</head>
<script type="text/javascript">
	function RentType(){
		var a = document.getElementById("a");
		var b = document.getElementById("b");
		if(a.disabled == false){
			a.disabled = true;
			a.value="불가";
			b.disabled = true;
			b.value="불가";
		}else{
			a.disabled = false;
			a.value="";
			b.disabled = false;
			b.value="";
		}
		
	}
	
	var ff = "";
	function dayType(obj){
		var aa = document.getElementById("aa");
		var bb = document.getElementById("bb");
		var cc = document.getElementById("cc");
		
		if(ff != obj.value){
			ff = obj.value;
			aa.disabled = true;
			bb.disabled = true;
			cc.disabled = true;
			aa.value = "불가";
			bb.value = "불가";
			cc.value = "불가";
			
		}else if(ff == obj.value){
			obj.checked = false;
			ff = "";
			aa.disabled = false;
			bb.disabled = false;
			cc.disabled = false;
			aa.value = "";
			bb.value = "01";
			cc.value = "";
		}
	}
	
	
	function parking(obj){
		var aa = document.getElementById("parking1");
		var bb = document.getElementById("parking2");
		
		if(obj.checked){
			aa.disabled = true;
			bb.disabled = true;
			aa.value = "불가";
			bb.value = "불가";
		}else{
			aa.disabled = false;
			bb.disabled = false;
			aa.value = "";
			bb.value = "";
		}
		
		
	}
	
	function Agentbox(obj){
		var aa = document.getElementById("AgentStore");
		if(obj.checked){
			aa.disabled = true;
			aa.value = "불가";
		}else{
			aa.disabled = false;
			aa.value = "";
		}
		
		
	}
	
	function Security(obj){
		var aa1 = document.getElementById("Security1");
		var aa2 = document.getElementById("Security2");
		var aa3 = document.getElementById("Security3");
		var aa4 = document.getElementById("Security4");
		var aa5 = document.getElementById("Security5");
		var aa6 = document.getElementById("Security6");
		var aa7 = document.getElementById("Security7");
		var aa8 = document.getElementById("Security8");

		
		if(obj.checked){
			
			aa1.disabled = true;
			aa2.disabled = true;
			aa3.disabled = true;
			aa4.disabled = true;
			aa5.disabled = true;
			aa6.disabled = true;
			aa7.disabled = true;
			aa8.disabled = true;

			
			aa1.checked = false;
			aa2.checked = false;
			aa3.checked = false;
			aa4.checked = false;
			aa5.checked = false;
			aa6.checked = false;
			aa7.checked = false;
			aa8.checked = false;

			
		}else{
			aa1.disabled = false;
			aa2.disabled = false;
			aa3.disabled = false;
			aa4.disabled = false;
			aa5.disabled = false;
			aa6.disabled = false;
			aa7.disabled = false;
			aa8.disabled = false;
		}
	}


	
	
	
	function option(obj){
		var aa1 = document.getElementById("Options1");
		var aa2 = document.getElementById("Options2");
		var aa3 = document.getElementById("Options3");
		var aa4 = document.getElementById("Options4");
		var aa5 = document.getElementById("Options5");
		var aa6 = document.getElementById("Options6");
		var aa7 = document.getElementById("Options7");
		var aa8 = document.getElementById("Options8");
		var aa9 = document.getElementById("Options9");
		var aa10 = document.getElementById("Options10");
		var aa11 = document.getElementById("Options11");
		var aa12 = document.getElementById("Options12");
		var aa13 = document.getElementById("Options13");
		
		if(obj.checked){
			
			aa1.disabled = true;
			aa2.disabled = true;
			aa3.disabled = true;
			aa4.disabled = true;
			aa5.disabled = true;
			aa6.disabled = true;
			aa7.disabled = true;
			aa8.disabled = true;
			aa9.disabled = true;
			aa10.disabled = true;
			aa11.disabled = true;
			aa12.disabled = true;
			aa13.disabled = true;
			
			aa1.checked = false;
			aa2.checked = false;
			aa3.checked = false;
			aa4.checked = false;
			aa5.checked = false;
			aa6.checked = false;
			aa7.checked = false;
			aa8.checked = false;
			aa9.checked = false;
			aa10.checked = false;
			aa11.checked = false;
			aa12.checked = false;
			aa13.checked = false;
		
			
		}else{
			aa1.disabled = false;
			aa2.disabled = false;
			aa3.disabled = false;
			aa4.disabled = false;
			aa5.disabled = false;
			aa6.disabled = false;
			aa7.disabled = false;
			aa8.disabled = false;
			aa9.disabled = false;
			aa10.disabled = false;
			aa11.disabled = false;
			aa12.disabled = false;
			aa13.disabled = false;
		}
		
		
	}


</script>
<body>
   <form action="${root}/set/registerOk.in" method="post" onsubmit="return registerForm(this)" enctype="multipart/form-data">
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
                        <label> <input type="radio" name="room_Type" value="원룸" checked="checked"/> <a
                           for="room_Type">원룸</a>
                        </label> <label> <input type="radio" name="room_Type" value="투룸"/> <a
                           for="room_Type">투룸</a>
                        </label>
                        <label> <input type="radio" name="room_Type" value="쓰리룸"/> <a
                           for="room_Type">쓰리룸</a>
                        </label>
                         <label> <input type="radio" name="room_Type" value="오피스텔"/> <a
                           for="room_Type">오피스텔</a>
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
                        <label> <input type="radio" name="room_RentType" value="월세" checked onchange="RentType()" /> <a for="room_RentType">월세</a>
                        </label> <label> <input type="radio" name="room_RentType" value="전세" onchange="RentType()" /> <a for="room_RentType">전세</a>
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
                              <span>월세·전세 가격</span> <input type="text" name="room_Price1" class="info-input"
                                 maxlength="8" placeholder="-" /><span>억</span> <input type="text" name="room_Price2" class="info-input"
                                 maxlength="8" placeholder="-" />  <span>만원</span>
                           </div>
                        </div>
                        <div class="upload-item-info">
                           <div class="upload-item-info-box">
                              <span>보증금</span> <input type="text" name="room_Deposit1" class="info-input"
                                 maxlength="8" placeholder="-" id="b"/><span>억</span><input type="text" name="room_Deposit2" class="info-input"
                                 maxlength="5" placeholder="-" id="a"> <span>만원</span>
                           </div>
                        </div>
                        <div class="upload-item-info">
                           <div class="upload-item-info-box">
                              <span>관리비</span> <input type="text" name="room_Manageprice" class="info-input"
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
                        <input type="text" maxlength="4" placeholder="년도" name="aa" id="aa"/> 
                        <select name="bb" id="bb">
                           <option>01</option>
                           <option>02</option>
                           <option>03</option>
                           <option>04</option>
                           <option>05</option>
                           <option>06</option>
                           <option>07</option>
                           <option>08</option>
                           <option>09</option>
                           <option>10</option>
                           <option>11</option>
                           <option>12</option>
                        </select> 
                        <input type="text" maxlength="2" placeholder="일" name="cc" id="cc"/> 
                        <label class="upload-live">
                           
                           <input type="radio" name="room_LiveDate" value="날짜 협의" onclick="dayType(this)" id="ff"/>
                           <a for="room_LiveDate">날짜협의</a>
                        </label> 
                        <label class="upload-live"> 
                           <input type="radio" name="room_LiveDate" value="즉시 입주" onclick="dayType(this)" id="pp"/> 
                           <a for="room_LiveDate">즉시입주</a>
                        </label> 
                        <span class="upload-live-span">※ 세가지 중 한가지만 선택해주세요.</span>
                      
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
                              <span>공급면적</span> <input type="text" class="info-input" name="room_SupplySizeM"
                                 maxlength="5" placeholder="-"> <span>㎡</span>
                           </div>
                        </div>
                        <div class="upload-item-info">
                           <div class="upload-item-info-box">
                              <span>전용면적</span> <input type="text" class="info-input" name="room_DedicatedSizeM"
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
                              <span>건물 층수</span> <input type="text" class="info-input" name="room_BuildingFloor"
                                 maxlength="5" placeholder="-" /> <span>층</span>
                           </div>
                        </div>
                        <div class="upload-item-info">
                           <div class="upload-item-info-box">
                              <span>해당 층수</span> <input type="text" class="info-input" name="room_Floor"
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
                              <span>방 수</span> <input type="text" class="info-input" name="room_Count"
                                 maxlength="5" placeholder="-" /> <span></span>
                           </div>
                        </div>
                        <div class="upload-item-info">
                           <div class="upload-item-info-box">
                              <span>욕실 수</span> <input type="text" class="info-input" name="room_Toilet"
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
                              <span>총 주차가능 수</span> <input type="text" class="info-input" name="room_Parking"
                                 maxlength="5" placeholder="" id="parking1"/> <span>개</span>
                           </div>
                        </div>
                        <div class="upload-item-info">
                           <div class="upload-item-info-box">
                              <span>총 세대 수</span> <input type="text" class="info-input" name="room_Parking2"
                                 maxlength="5" placeholder="" id="parking2"/> <span>세대</span>
                           </div>
                        </div>
                        <label class="upload-live"> <input type="checkbox" 
                           name="room_Parking3" value="주차없음"  onclick="parking(this)"/> <a for="room_Parking3">주차없음</a>
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
                              <label> <input type="radio" name="room_Pet" value="가능" checked /> <a
                                 for="room_Pet">가능</a>
                              </label> <label> <input type="radio" name="room_Pet" value="불가능"/> <a
                                 for="room_Pet">불가능</a>
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
                              <label> <input type="radio" name="room_Elevator" value="있음" checked /> <a
                                 for="room_Elevator">있음</a>
                              </label> <label> <input type="radio" name="room_Elevator" value="없음"/> <a
                                 for="room_Elevator">없음</a>
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
                              <label> <input type="radio" name="room_Built_In" value="빌트인 주방" checked /> <a
                                 for="room_Built_In">있음</a>
                              </label> <label> <input type="radio" name="room_Built_In" value="없음"/> <a
                                 for="room_Built_In">없음</a>
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
                              <label> <input type="radio" name="room_Veranda" value="있음" checked /> <a
                                 for="room_Veranda">있음</a>
                              </label> <label> <input type="radio" name="room_Veranda" value="없음"/> <a
                                 for="room_Veranda">없음</a>
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
                           <label> 
                           <input type="checkbox" name="room_Options" value="에어컨" id="Options12"/> <a id="a1">에어컨</a>
                           </label> 
                           <label> 
                           		<input type="checkbox" name="room_Options" value="비데" id="Options1"/> <a id="a2">비데</a>
                           </label>
                            <label> 
                            	<input type="checkbox" name="room_Options" value="옷장" id="Options2"/> <a id="a3">옷장</a>
                           </label> 
                           <label> 
                           		<input type="checkbox" name="room_Options" value="책상" id="Options3"/> <a id="a4">책상</a>
                           </label> 
                           <label> 
                           		<input type="checkbox" name="room_Options" value="전자도어락" id="Options4"/> <a id="a5">전자도어락</a>
                           </label>
                        </div>
                        <div class="option-plus-form">
                           <label> 
                           <input type="checkbox" name="room_Options" value="인덕션" id="Options13"/> <a id="a13">인덕션</a>
                           </label>
                            <label> 
                            	<input type="checkbox" name="room_Options" value="침대" id="Options5"/> <a id="a6">침대</a>
                           </label> 
                           <label> 
                           		<input type="checkbox" name="room_Options" value="세탁기" id="Options6"/> <a id="a7">세탁기</a>
                           </label>
                            <label> 
                            	<input type="checkbox" name="room_Options" value="전자레인지" id="Options7"/> <a id="a8">전자레인지</a>
                           </label> 
                           <label>
                           		 <input type="checkbox" name="room_Options" value="냉장고" id="Options8"/> <a id="a9">냉장고</a>
                           </label>

                        </div>
                        <div class="option-plus-form">
                           <label> <input type="checkbox" name="room_Options" value="신발장" id="Options9"/> <a id="a10">신발장</a>
                           </label> <label> <input type="checkbox" name="room_Options" value="가스레인지" id="Options10"/> <a id="a11">가스레인지</a>
                           </label> <label> <input type="checkbox" name="room_Options" value="침대" id="Options11"/> <a id="a12">침대</a>
                           </label>
                           <label> <input type="checkbox" name="room_Options" value="없음" onclick="option(this)"/> <a id="a1">없음</a>
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
                        <label> <input type="checkbox" name="room_Security" value="카드키" id="Security1"/> <a>카드키</a>
                        </label> <label> <input type="checkbox" name="room_Security" value="CCTV" id="Security2"/> <a>CCTV</a>
                        </label> <label> <input type="checkbox" name="room_Security" value="공동현관" id="Security3"/> <a>공동현관</a>
                        </label> <label> <input type="checkbox" name="room_Security" value="책상" id="Security4"/> <a>책상</a>
                        </label> <label> <input type="checkbox" name="room_Security" value="화재경보기" id="Security5"/> <a>화재경보기</a>
                        </label>
                     </div>
                     <div class="option-plus-form">
                        <label> <input type="checkbox" name="room_Security" value="인터폰" id="Security6"/> <a>인터폰</a>
                        </label> <label> <input type="checkbox" name="room_Security" value="비디오폰" id="Security7"/> <a>비디오폰</a>
                        </label> <label> <input type="checkbox" name="room_Security" value="방범창" id="Security8"/> <a>방범창</a>
                        </label>
                        <label> <input type="checkbox" name="room_Security" value="없음" onclick="Security(this)"/> <a>없음</a>
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
                        <input type="text" class="detail-info-input" maxlength="30" name="room_Content"
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
                        <input type="text" class="detail-info-button1" name="room_Address"
                           id="sample5_address" maxlength="20"
                           placeholder="예) 정왕로 16, 고잔로 21" /> <input type="button"
                           class="detail-info-button2"
                           onclick="sample5_execDaumPostcode()" value="주소검색" />
                        <div class="upload-item-info-box">
                           <input type="text" class="detail-info-button3" maxlength="6" name="room_Dong"
                              placeholder="예) 102동" /> <span>동/건물명</span>
                        </div>
                        <div class="upload-item-info-box">
                           <input type="text" class="detail-info-button3" maxlength="6" name="room_Ho"
                              placeholder="예) 2105호" /> <span>호</span>
                        </div>

                     </div>
                     <div id="map"
                        style="width: 90%; height: 300px; margin-top: 10px;"></div>
                        <input type="hidden" id="map_x" name="room_MapX"/>
                        <input type="hidden" id="map_y" name="room_MapY"/>
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
                              <span>공인중개사 이름</span> <input type="text" name="room_AgentStore"
                                 class="info-input-dongsan" maxlength="10" placeholder="예)원희중개사" id="AgentStore"/>
                           </div>
                        </div>
                        <div class="upload-item-info">
                           <div class="upload-item-info-box">
                              <span>담당자</span> <input type="text" class="info-input-dongsan" name="room_Agent"
                                 maxlength="10" placeholder="예)홍길동" />
                           </div>
                        </div>
                        <label class="upload-live"> <input type="checkbox" 
                           name="room_Agent2" value="개인" onclick="Agentbox(this)"/> <a for="solo">개인</a>
                        </label>
                        
                     </div>
                  </div>
               </div>
                <div class="upload-item">
                  <div class="upload-item-l">
                     <a>전화번호</a>
                  </div>
                  <div class="upload-item-r">
                   <div id="box">
                   	<div class="upload-item-info">
                    	<div class="upload-item-info-box">
                           	<span>전화번호</span><input type="text" name="tellphone" class="info-input-dongsan" maxlength="11" placeholder="예)01012345678" id="tellphone"/>
                 	</div></div>
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
                        <input multiple="multiple" type="file" class="photo-file" name="file" accept="image/*" id="fileId" />
                     </div>
                  </div>
               </div>
            </div>
            <div class="upload-item-box-btn">
               <input type="submit" value="등록"/>
               <input type="reset" value="취소"/>
            </div>

         </div>
      </div>      
   </div>
   </div>
   </form>
</body>
</html>