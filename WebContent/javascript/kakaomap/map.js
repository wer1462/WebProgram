/**
 * 
 */
function map() {
	var container = document.getElementById('map');
	var options = {
		center: new kakao.maps.LatLng(37.4560044656444, 126.705258070068),
		level: 9
	};

	var map = new kakao.maps.Map(container, options);

	var marker = new kakao.maps.Marker({
		// 지도 중심좌표에 마커를 생성합니다 
		position: map.getCenter()
	});
	// 지도에 마커를 표시합니다
	marker.setMap(map);
}