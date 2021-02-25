<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Kakao 지도 시작하기</title>
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
		root = root2;
		var url = root + "/map/list.in";
		sendRequest("POST", url, fromServer, null);
		
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
	function fro() {
		
	}
 	
 	var markers = [];
 	
 	function fromServer() {
		if(xhr.readyState==4 && xhr.status==200) {
			var obj=JSON.parse(xhr.responseText);	
 	
			var container = document.getElementById('map');		
	
			var map = new kakao.maps.Map(container, options());
			map.setMaxLevel(9);
		
			
			
			for (var i = 0; i < obj.map.length; i++) {
				addMarker(new kakao.maps.LatLng(obj.map[i].y, obj.map[i].x),obj.map[i]);
			}
			
			var clusterer = new kakao.maps.MarkerClusterer({
		        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
		        gridSize: 50,
		        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
		        minLevel: 1, // 클러스터 할 최소 지도 레벨 
		        disableClickZoom: true,
		        minClusterSize:1,
		        markers: markers
		        
		    });
			/* clusterer.addMarkers(markers); */
		
			kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {
		        // 현재 지도 레벨에서 1레벨 확대한 레벨
		        toMapServer(cluster.getSize(),cluster.getMarkers());
		        var level = map.getLevel()-1;
		        // 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
		        map.setLevel(level, {anchor: cluster.getCenter()});
		      
		    });
			
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
 	
		
	
		
		

</script>
<body onload="toServer('${root}')">
	<div id="map" style="width: 100%; height: 800px;"></div>
</body>
</html>

