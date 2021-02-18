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
<body>
	<div id="map" style="width: 100%; height: 800px;"></div>
	<script type="text/javascript"
		src="${root }/javascript/kakaomap/marker.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ccef7d00e62b4082f4025e9586ca1c2a"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center : new kakao.maps.LatLng(37.456256238338824,
					126.70505364001494),
			level : 9
		};

		var map = new kakao.maps.Map(container, options);

		var marker = new kakao.maps.Marker();
		var markerPosition = new kakao.maps.LatLng(37.64376525571563,
				126.65006255667537);

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker();
		// 지도에 마커를 표시합니다
		marker.setMap(map);

		kakao.maps.event.addListener(map, 'click', markEvent);//click event

		var polygonPath = [
				new kakao.maps.LatLng(37.33568541411278, 126.61254368760869),
				new kakao.maps.LatLng(37.33871515348975, 126.66019458881948),
				new kakao.maps.LatLng(37.376340620557244, 126.71421847940645),
				new kakao.maps.LatLng(37.37894335281179 , 126.71746033192),
				new kakao.maps.LatLng(37.397738216576 , 126.74088036564868),
				new kakao.maps.LatLng(37.43093878226089 , 126.76137449892913),
				new kakao.maps.LatLng(37.45230909513748 , 126.77902777732417),
				new kakao.maps.LatLng(37.48281269675615 , 126.74963192597006),
				new kakao.maps.LatLng(37.52318118912366 , 126.7513070784922),
				new kakao.maps.LatLng(37.55262561791538 , 126.76895414448612),
				new kakao.maps.LatLng(37.57916947104569 , 126.77865340731958),
				new kakao.maps.LatLng(37.59174386283342 , 126.7255348734563),
				new kakao.maps.LatLng(37.64376525571563 , 126.65006255667537),
				new kakao.maps.LatLng(37.60402652688696 , 126.61921930093665),
				new kakao.maps.LatLng(37.60714022807424 , 126.61254427083178),
				new kakao.maps.LatLng(37.59391459181403 , 126.59141603133502),
				new kakao.maps.LatLng(37.58859085099565 , 126.59434363814314),
				new kakao.maps.LatLng(37.58021745663753 , 126.58053215908778),
				new kakao.maps.LatLng(37.54873537587978  , 126.59560082462222) ,
				new kakao.maps.LatLng(37.49571625843979  , 126.60493348569472) ,
				new kakao.maps.LatLng(37.471465294470256  , 126.59547486619915) ,
				new kakao.maps.LatLng(37.419835930296074  , 126.58978802908713) ,
				new kakao.maps.LatLng(37.35479450609307  , 126.58291852014483) ,
				new kakao.maps.LatLng(37.346866298648685  , 126.58314295228624) ,
				new kakao.maps.LatLng(37.340482036716004  , 126.61351212114693)];

		// 지도에 표시할 다각형을 생성합니다
		var polygon = new kakao.maps.Polygon({
			path : polygonPath, // 그려질 다각형의 좌표 배열입니다
			strokeWeight : 3, // 선의 두께입니다
			strokeColor : '#39DE2A', // 선의 색깔입니다
			strokeOpacity : 0.8, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			strokeStyle : 'solid', // 선의 스타일입니다
			fillColor : '#A2FF99', // 채우기 색깔입니다
			fillOpacity : 0.7
		// 채우기 불투명도 입니다
		});
		
		polygon.setMap(map);
	</script>
	<div id="clickLatlng"></div>
</body>
</html>

