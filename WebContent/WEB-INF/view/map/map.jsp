<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
	
	<link rel="stylesheet" href="${root }/css/top.css" type="text/css"/>
	<link rel="stylesheet" href="${root }/css/bottom.css" type="text/css"/>
	<link rel="stylesheet" href="${root }/css/map-page.css" type="text/css"/>
	
	<link rel="stylesheet" href="${root }/css/all.css" type="text/css"/>
	
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
	<script  src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
	
<meta charset="utf-8">
<title>map</title>
</head>
<script type="text/javascript"
		src="${root }/javascript/kakaomap/marker.js"></script>
		<script type="text/javascript"
		src="${root }/javascript/kakaomap/map.js"></script>
		<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
		
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ccef7d00e62b4082f4025e9586ca1c2a&libraries=clusterer"></script>
	<script type="text/javascript">
	var root = "";
	
 	function toServer(root2) {
 		clusterer.clear();
 		markers = [];
		root = root2;
		var url = root + "/map/list.in";
		var obj = document.getElementById("obj");
		var params = "";
		//alert(obj.room1.checked);
		if(obj.room1.checked){
			params += "room1="+obj.room1.value;
		}
		if(obj.room2.checked){
			if(params != ""){
				params += "&";
			}
			params += "room2="+obj.room2.value;
		}
		if(obj.room3.checked){
			if(params != ""){
				params += "&";
			}
			params += "room3="+obj.room3.value;
		}
		if(obj.room4.checked){
			if(params != ""){
				params += "&";
			}
			params += "room4="+obj.room4.value;
		}
		
		if(obj.sell1.checked){
			if(params != ""){
				params += "&";
			}
			params += "sell1="+obj.sell1.value;
		}
		if(obj.sell2.checked){
			if(params != ""){
				params += "&";
			}
			params += "sell2="+obj.sell2.value;
		}
		
		
		if(obj.price1.checked){
			if(params != ""){
				params += "&";
			}
			params += "price1="+obj.price1.value;
		}
		if(obj.price2.checked){
			if(params != ""){
				params += "&";
			}
			params += "price2="+obj.price2.value;
		}
		if(obj.price3.checked){
			if(params != ""){
				params += "&";
			}
			params += "price3="+obj.price3.value;
		}
		
		
		if(obj.price_room1.checked){
			if(params != ""){
				params += "&";
			}
			params += "price_room1="+obj.price_room1.value;
		}
		if(obj.price_room2.checked){
			if(params != ""){
				params += "&";
			}
			params += "price_room2="+obj.price_room2.value;
		}
		if(obj.price_room3.checked){
			if(params != ""){
				params += "&";
			}
			params += "price_room3="+obj.price_room3.value;
		}
		
		if(obj.size_room1.checked){
			if(params != ""){
				params += "&";
			}
			params += "size_room1="+obj.size_room1.value;
		}
		if(obj.size_room2.checked){
			if(params != ""){
				params += "&";
			}
			params += "size_room2="+obj.size_room2.value;
		}
		if(obj.size_room3.checked){
			if(params != ""){
				params += "&";
			}
			params += "size_room3="+obj.size_room3.value;
		}
		
		
		if(obj.plus1.checked){
			if(params != ""){
				params += "&";
			}
			params += "plus1="+obj.plus1.value;
		}
		if(obj.plus2.checked){
			if(params != ""){
				params += "&";
			}
			params += "plus2="+obj.plus2.value;
		}
		if(obj.plus3.checked){
			if(params != ""){
				params += "&";
			}
			params += "plus3="+obj.plus3.value;
		}
		if(obj.plus4.checked){
			if(params != ""){
				params += "&";
			}
			params += "plus4="+obj.plus4.value;
		}
		if(obj.plus5.checked){
			if(params != ""){
				params += "&";
			}
			params += "plus5="+obj.plus5.value;
		}
		if(obj.plus6.checked){
			if(params != ""){
				params += "&";
			}
			params += "plus6="+obj.plus6.value;
		}
		if(obj.plus7.checked){
			if(params != ""){
				params += "&";
			}
			params += "plus7="+obj.plus7.value;
		}
		if(obj.plus8.checked){
			if(params != ""){
				params += "&";
			}
			params += "plus8="+obj.plus8.value;
		}
		
				
		sendRequest("POST", url, fromServer, params);
		
	}
 	
	function toMapServer(size,arr) {
		var url = root + "/map/clickList.in";
		
		var list = [];
		for(var i = 0; i < size; i++){
			list.push(arr[i].getTitle());
		}
		params = "list=" + list;
		sendRequest("POST", url, fro , params);
		
	}
 	
 	var markers = [];
 		
 	function fromServer() {
		if(xhr.readyState==4 && xhr.status==200) {
			var obj=JSON.parse(xhr.responseText);	
	
			for (var i = 0; i < obj.map.length; i++) {
				addMarker(new kakao.maps.LatLng(obj.map[i].y, obj.map[i].x),obj.map[i]);
			}
			
		
			clusterer.addMarkers(markers);
		
			kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {
		        // 현재 지도 레벨에서 1레벨 확대한 레벨
		        toMapServer(cluster.getSize(),cluster.getMarkers());
		        var level = map.getLevel()-1;
		        // 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
		        map.setLevel(level, {anchor: cluster.getCenter()});		      
		    });
			mapList(1);
		}			
	} 

 		
 	function addMarker(position,obj) {    
	    // 마커를 생성합니다
	    var marker = new kakao.maps.Marker({
	        position: position,
	        title :  String(obj.num)
	    });
	
	    // 마커가 지도 위에 표시되도록 설정합니다
	    //marker.setMap(map);
	    // 생성된 마커를 배열에 추가합니다
	    markers.push(marker);    
	}
 	
 	
 	function mapList(pageNum){
		var url = root + "/map/mapListAjax.in";
		params = "pageNumber="+pageNum
		sendRequest("POST", url, fromMap, params);
 	}
 	
 	var num = 1;
	function fromMap(){
		if(xhr.readyState==4 && xhr.status==200) {
			var obj=JSON.parse(xhr.responseText);
			
			for(var i = 0;i<10;i++){
				var content = document.createElement("div");
				content.setAttribute("class","list-text");
				
				var img = document.createElement("div");
				img.setAttribute("class","list-images");
				
				var total = document.createElement("div");
				total.setAttribute("class","map-list-b");
				total.setAttribute("OnClick","location.href ='"+root+"/map/mapDetail.in?room_Num="+obj.map[i].room_Num+"'")
				
				var ul = document.createElement("ul");
				 
				var li = document.createElement("li");
				li.setAttribute("class","list-text-1");

				var a = document.createElement("a");
				a.innerHTML = obj.map[i].room_Type;
				li.appendChild(a);

				var a2 = document.createElement("a");
				a2.innerHTML = obj.map[i].room_Floor;
				li.appendChild(a2);

				var a3 = document.createElement("a");
				a3.innerHTML = "관심 " + obj.map[i].room_LikeNum;
				li.appendChild(a3);

				var li2 = document.createElement("li");
				li2.setAttribute("class","list-text-2");

				var aa = document.createElement("a");
				aa.innerHTML =obj.map[i].room_Price;
				li2.appendChild(aa);


				var li3 = document.createElement("li");
				li3.setAttribute("class","list-text-3");

				var aaa = document.createElement("a");
				aaa.innerHTML = obj.map[i].room_Floor+","+obj.map[i].room_Size+","+obj.map[i].room_Manageprice;
				li3.appendChild(aaa);

				ul.appendChild(li);
				ul.appendChild(li2);
				ul.appendChild(li3);

				var div = document.getElementById("map-view-l");
				var div2 = document.getElementById("map-list-view");
				content.appendChild(ul);
				total.appendChild(img);
				total.appendChild(content);
				div2.appendChild(total);
				div.appendChild(div2);
			}
			
		}
 	}
	
	$(document).ready(function(){
	    //스크롤 발생 이벤트 처리
	    $('#map-view-l').scroll(function(){
	    	 var documentHeight  = $('#map-list-view').height();
	         
	         //세로 스크롤위치 max값과 창의 높이를 더하면 현재문서의 높이를 구할수있음.
	         //세로 스크롤위치 값이 max이면 문서의 끝에 도달했다는 의미
	         var scrollHeight = $('#map-view-l').scrollTop()+$('#map-view-l').height();         

	           
	         if(scrollHeight >= documentHeight) { //문서의 맨끝에 도달했을때 내용 추가 
	        	num++;
	        	mapList(num);
	         } 	
	    });
	});

		
	function searchList(){
		var obj = document.getElementById("obj");
		if(obj.room1.checked){
			alert("ho");
		}
		
		
		
	}


</script>

<body id="wrap" onload="toServer('${root}');">
	
	<div id="map-menu">
		<div id="map-menu-l">
			<div class="map-search">
				<form>
					<input type="text" placeholder="시흥 배곧신도시·안산 중앙동"/>
					<img src="../images/loupe-map.png"/>
				</form>
			</div>
		</div>
		<div id="map-menu-r">
			<div class="map-select">
				<form name = "obj" id = "obj">
					<div class="select-box">
						<button class="select-box-ac" disabled>원룸·오피스텔</button>
						<div class="select-box-hover">
							<div class="select-box-hover-ac animate__animated animate__fadeIn animate__delay">
								<a class="select-box-hover-ac-t">방 종류</a><br/>
								<a class="select-box-hover-ac-sub">중복선택이 가능합니다.</a>
								<div class="hover-item-box">
									<div class="hover-item">
										<input type="checkbox" id="room-1" name="room1" onchange="toServer('${root}')" value="원룸"/>
										<label for="room-1"><span></span>원룸</label>
									</div>
									<div class="hover-item">
										<input type="checkbox" id="room-2" name="room2" onchange="toServer('${root}')" value="투룸"/>
										<label for="room-2"><span></span>투룸</label>
									</div>
									<div class="hover-item">
										<input type="checkbox" id="room-3" name="room3" onchange="toServer('${root}')" value="쓰리룸"/>
										<label for="room-3"><span></span>쓰리룸</label>
									</div>
									<div class="hover-item">
										<input type="checkbox" id="room-4" name="room4" onchange="toServer('${root}')" value="오피스텔"/>
										<label for="room-4"><span></span>오피스텔</label>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="select-box">
						<button disabled>월세·전세</button>
						<div class="select-box-hover">
							<div class="select-box-hover-ac animate__animated animate__fadeIn animate__delay">
								<a class="select-box-hover-ac-t">매물 종류</a><br/>
								<a class="select-box-hover-ac-sub">중복선택이 가능합니다.</a>
								<div class="hover-item-box">
									<div class="hover-item">
										<input type="checkbox" id="sell-1" name="sell1" onchange="toServer('${root}')" value="월세"/>
										<label for="sell-1"><span></span>월세</label>
									</div>
									<div class="hover-item">
										<input type="checkbox" id="sell-2" name="sell2" onchange="toServer('${root}')" value="전세"/>
										<label for="sell-2"><span></span>전세</label>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="select-box">
						<button disabled>보증금·월세</button>
						<div class="select-box-hover">
							<div class="select-box-hover-ac animate__animated animate__fadeIn animate__delay">
								<a class="select-box-hover-ac-t">보증금 기준금액</a><br/>
								<!-- <a class="select-box-hover-ac-sub select-box-hover-ac-sub-x">중복선택 불가능</a> -->
								<div class="hover-item-box">
									<div class="hover-item">
										<input type="radio" id="price-1" name="price1" onchange="toServer('${root}')" value="500"/>
										<label for="price-1"><span></span>500 이상</label>
									</div>
									<div class="hover-item">
										<input type="radio" id="price-2" name="price2" onchange="toServer('${root}')" value="500"/>
										<label for="price-2"><span></span>500 이하</label>
									</div>
									<div class="hover-item">
										<input type="radio" id="price-3" name="price3"/>
										<label for="price-3"><span></span>상관없음</label>
									</div>
								</div>
								<div class="select-box-hover-ac-2">
									<a class="select-box-hover-ac-t">월세 기준금액</a><br/>
									<!-- <a class="select-box-hover-ac-sub select-box-hover-ac-sub-x">중복선택 불가능</a> -->
									<div class="hover-item-box">
										<div class="hover-item">
											<input type="radio" id="price-room-1" name="price_room1"/>
											<label for="price-room-1"><span></span>50 이상</label>
										</div>
										<div class="hover-item">
											<input type="radio" id="price-room-2" name="price_room2"/>
											<label for="price-room-2"><span></span>50 이하</label>
										</div>
										<div class="hover-item">
											<input type="radio" id="price-room-3" name="price_room3"/>
											<label for="price-room-3"><span></span>상관없음</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="select-box">
						<button disabled>방크기(전용면적)</button>
						<div class="select-box-hover">
							<div class="select-box-hover-ac animate__animated animate__fadeIn animate__delay">
								<a class="select-box-hover-ac-t select-box-hover-ac-t-2">방크기 기준</a><br/>
								<!-- <a class="select-box-hover-ac-sub select-box-hover-ac-sub-x">중복선택 불가능</a> -->
								<div class="hover-item-box">
									<div class="hover-item">
										<input type="radio" id="size-room-1" name="size_room1"/>
										<label for="size-room-1"><span></span>33m²(10평) 이상</label>
									</div>
									<div class="hover-item">
										<input type="radio" id="size-room-2" name="size_room2"/>
										<label for="size-room-2"><span></span>33m²(10평) 이하</label>
									</div>
									<div class="hover-item">
										<input type="radio" id="size-room-3" name="size_room3"/>
										<label for="size-room-3"><span></span>상관없음</label>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="select-box">
						<button disabled>추가필터</button>
						<div class="select-box-hover">
							<div class="select-box-hover-ac select-box-hover-ac-plus animate__animated animate__fadeIn animate__delay">
								<a class="select-box-hover-ac-t">추가필터</a><br/>
								<a class="select-box-hover-ac-sub">중복선택이 가능합니다.</a>
								<div class="hover-item-box hover-item-box-plus">
									<div class="hover-item-box-l">
										<div class="hover-item">
											<input type="checkbox" id="plus-1" name="plus1"/>
											<label for="plus-1"><span></span>주차가능</label>
										</div>
										<div class="hover-item">
											<input type="checkbox" id="plus-2" name="plus2"/>
											<label for="plus-2"><span></span>베란다/발코니</label>
										</div>
										<div class="hover-item">
											<input type="checkbox" id="plus-3" name="plus3"/>
											<label for="plus-3"><span></span>단기임대</label>
										</div>
										<div class="hover-item">
											<input type="checkbox" id="plus-4" name="plus4"/>
											<label for="plus-4"><span></span>엘리베이터</label>
										</div>
									</div>
									<div class="hover-item-box-r">
										<div class="hover-item">
											<input type="checkbox" id="plus-6" name="plus5"/>
											<label for="plus-6"><span></span>풀옵션</label>
										</div>
										<div class="hover-item">
											<input type="checkbox" id="plus-7" name="plus6"/>
											<label for="plus-7"><span></span>반려동물</label>
										</div>
										<div class="hover-item">
											<input type="checkbox" id="plus-9" name="plus7"/>
											<label for="plus-9"><span></span>빌트인</label>
										</div>
										<div class="hover-item">
											<input type="checkbox" id="plus-5" name="plus8"/>
											<label for="plus-5"><span></span>보안/안전시설</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="map-view">
		<div id="map-view-l">
			<div class="map-list">
				<div class="map-list-t">
					<div class="list-info">
						<a>검색된 전체 방<span>999+</span>개</a>
					</div>
					<div class="list-option">
						<select>
							<option>최신순</option>
							<option>거리순</option>
							<option>조회순</option>
							<option>관심순</option>
						</select>
					</div>
				</div>
					<div id="map-list-view"></div>
					<!-- <div class="map-list-b" OnClick="location.href ='#'">
						<div class="list-images">
						</div>
						<div class="list-text" id="list-text">
							<ul>
								<li class="list-text-1">
									<a>오피스텔</a>
									<a>18층</a>
									<a>관심 999+</a>
								</li>
								<li class="list-text-2">
									<a>900/90</a>
								</li>
								<li class="list-text-3">
									<a id="aaaa"></a><br/>
									<a class="list-text-3-sub">💟신축1.5룸💟착한가격💟</a>
								</li>
							</ul> 
						</div>
					</div> -->

				<center>	
					
			</center>
			</div>
		</div>
		<div id="map-view-r">
		</div>
	</div>
	<script type="text/javascript">
		var container = document.getElementById('map-view-r');		
		
		var map = new kakao.maps.Map(container, options());
		map.setMaxLevel(9);
		
		var clusterer = new kakao.maps.MarkerClusterer({
	        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
	        gridSize: 50,
	        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
	        minLevel: 1, // 클러스터 할 최소 지도 레벨 
	        disableClickZoom: true,
	        minClusterSize:1	        
	    });
	</script>
</body>
</html>
