<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Walk Main</title>
	</head>
	<script type="text/javascript">
		var openWapi = "https://api.openweathermap.org/data/2.5/onecall";
		var key = {
			lat : 37.52738,
			lon : 126.91646,
			exclude : minutely,
			appid : 98cd05d2b75d3fddaf2dab718820d6fb
		};
		
		$.ajax({
			type: "GET",
			url : makeUrl(url, key),
			dataType:"json",
			contentType:'application/json',
			success:function(data){
				
			}
			
		});
	
	
	
	    $.ajax({
	    	url : apiURI,
            method : 'GET',
            success :  (data)=> {
              var temp = String((data.main.temp - 272)).substring(0,3); // 온도
              var location = data.name; // 지역이름 
              $('#chatLog').append('지역 ：' + location + ' 온도　：' + tempr + "도입니다. "+'\n');
 				// 아이콘 취득 
              var imgURL = "http://openweathermap.org/img/w/" + data.weather[0].icon + ".png";
              // 아이콘 표시
              $('#img').attr("src", imgURL);
            }
          });     
	
	
	</script>

	<body>
	  <div>
      <textarea id="chatLog" class="chat_log" readonly>
      </textarea>
   	 </div>
  		 <img src="" id="img"></img>
	
	
		<div align="center" id="map" style="width:100%; height:400px;"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1b5ecc9c7338c5ac5e6289af4a3977b2&libraries=drawing"></script>
		<script>
			var mapContainer = document.getElementById('map'),
				mapOptions = { center: new kakao.maps.LatLng(37.52738, 126.91646),
				level: 5
			};
			
			var map = new kakao.maps.Map(mapContainer, mapOptions);
			
			var polyline = new kakao.maps.Polyline({
				map: map, 			// 선을 표시할 지도 객체
				path:[			// 선을 구성하는 좌표 배열
					new kakao.maps.LatLng(37.52594, 126.91755),
					new kakao.maps.LatLng(37.52333, 126.91249),
					new kakao.maps.LatLng(37.52233, 126.91249),
					new kakao.maps.LatLng(37.52109, 126.91249)
				],
				strokeWeight: 5,		 // 선의 두께
				strokeColor: '#FF0000',  // 선 색
				strokeOpacity: 0.9, 	 // 선 투명도
				strokeStyle: 'shortdash' // 선 스타일
			});
			
		</script>
	</body>
</html>
		
<!--  
Drawing Manager
					var options = { // Drawing Manager를 생성할 때 사용할 옵션입니다
						    map: map, // Drawing Manager로 그리기 요소를 그릴 map 객체입니다
						    drawingMode: [ // drawing manager로 제공할 그리기 요소 모드입니다
						        kakao.maps.drawing.OverlayType.POLYLINE
						    ],
						    // 사용자에게 제공할 그리기 가이드 툴팁입니다
						    // 사용자에게 도형을 그릴때, 드래그할때, 수정할때 가이드 툴팁을 표시하도록 설정합니다
						    polylineOptions: { // 선 옵션입니다
						        draggable: true, // 그린 후 드래그가 가능하도록 설정합니다
						        removable: true, // 그린 후 삭제 할 수 있도록 x 버튼이 표시됩니다
						        editable: true, // 그린 후 수정할 수 있도록 설정합니다 
						        strokeColor: '#39f', // 선 색
						        hintStrokeStyle: 'dash', // 그리중 마우스를 따라다니는 보조선의 선 스타일
						        hintStrokeOpacity: 0.5  // 그리중 마우스를 따라다니는 보조선의 투명도
						    }
						   
						};
		
						// 위에 작성한 옵션으로 Drawing Manager를 생성합니다
						var manager = new kakao.maps.drawing.DrawingManager(options);
		
						// 버튼 클릭 시 호출되는 핸들러 입니다
						function selectOverlay(type) {
						    // 그리기 중이면 그리기를 취소합니다
						    manager.cancel();
		
						    // 클릭한 그리기 요소 타입을 선택합니다
						    manager.select(kakao.maps.drawing.OverlayType[type]);
						}
-->