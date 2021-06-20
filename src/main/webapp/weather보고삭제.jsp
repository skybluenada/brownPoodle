
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갈색푸들</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/weather.css" type="text/css">
		<style type="text/css">

		#tempc,#temp1,#temp2,#temp3,#temp4,#temp5{

			font-style: oblique;
		}
		</style>


</head>
<body>

<!-- 상단 -->
<table class="logot">
	<tr class="logotr">
		<td class="logotd">
			<div class="logotdh">
			<img alt="logo" src="resources/img/mainimg/로고집.png">
			</div>
		</td>
		<td class="logotd">
			<div class="logotdtext">
			<img alt="logoname" src="resources/img/mainimg/로고네임.png">
			</div>
		</td>
		
		<!-- 상단 아이콘 -->
		<td class="logotd">
			<div class="logotdicon1">
			<img alt="icon1" src="resources/img/mainimg/상단1.png">
			</div>
		</td>
		<td class="logotd">
			<div class="logotdicon2">
			<img alt="icon2" src="resources/img/mainimg/상단2.png">
			</div>
		</td>
		<td class="logotd">
			<div class="logotdicon3">
			<img alt="icon3" src="resources/img/mainimg/상단3.png">
			</div>
		</td>
		
		<!-- 로그인 -->
		
		<td class="logotd"><div class="logotdlogin">로그인 하기</div></td>
		<td class="logotd">
		<div class="logotdloginp"><img alt="login" src="resources/img/mainimg/상단로그인.png"></div>
		</td>
	</tr>
</table>

<!-- 왼쪽사이드 -->
<table class="leftside" style="float:left;">
	<tr>
		<td class="leftsidetd"><img class="write" alt="write" src="resources/img/mainimg/글쓰기.png"></td><td class="leftsidetext">글쓰기</td>
	</tr>
	<tr>
		<td class="leftsidetd"><img alt="diary" src="resources/img/mainimg/다이어리.png"></td><td class="leftsidetext">펫 다이어리</td>
	</tr>
	<tr>
		<td class="leftsidetd"><img alt="walk" src="resources/img/mainimg/산책.png"></td><td class="leftsidetext">산책 하기</td>
	</tr>
	<tr>
		<td class="leftsidetd"><img alt="info" src="resources/img/mainimg/업체정보.png"></td><td class="leftsidetext">업체 정보</td>
	</tr>
	<tr>
		<td colspan="2" class="leftsidetd"><img alt="line" src="resources/img/mainimg/사이드줄.png"></td>
	</tr>
</table>


<!-- 게시판 --> 


	<!-- 출력 테이블 form(1*5) -->
		<table class="weather" border="1" width="100%">
			<tr>
				<td colspan="5"><b>오늘의 날씨</b></td>
			</tr>
			
			
			<tr>
				
				<td colspan="3" align="center">
				<div class="weatherNow">
					<span id="iconc"></span><br>
					<span id="tempc" class="tempc"></span><br>
					<span id="descc" style="color: #a2a2a2;"></span><br>
		
				</div>
				</td>
				<td colspan="2" align="center">
				<div>
					<b><span id="timec"></span></b><br>
					<span class="fill"><b>체감 : </b></span><span id="fill_tempc"></span><br>
					<span class="fill"><b>습도 : </b></span><span id="humidity"></span><br>
					<span class="uv"><b>UV지수 : </b></span><span id="uvic"></span><br>
					<span id="description"></span>
				</div>
				</td>
			
			</tr>
			
			<tr>
				<td colspan="5" style="padding-left: 13px;"><span><img src="resources/img/mainimg/댓글선.png" alt="line"></span></td>
			</tr>
			
			<tr>
	
				<td width="20%" align="center" class="mainWeather">
				<div class="weatherSurv">
					<span id="icon1"></span><br>
					<b><span id="temp1"></b></span><br>
					<span id="desc1" class="desc"></span><br>
					<b><span class="uv">UV지수 : </span></b><span id="uvi1"></span><br>
					<b><span class="fill">체감 : </span></b><span id="fill_temp1"></span><br>
					<span id="time1"></span>
				</div>
				</td>
	
				<td width="20%" align="center" class="mainWeather">
				<div class="weatherSurv">
					<span id="icon2"></span><br>
					<b><span id="temp2"></b></span><br>
					<span id="desc2" class="desc"></span><br>
					<b><span class="uv">UV지수 : </span></b><span id="uvi2"></span><br>
					<b><span class="fill">체감 : </span></b><span id="fill_temp2"></span><br>
					<span id="time2"></span>
				</div>
				</td>
	
				<td width="20%" align="center" class="mainWeather">
				<div class="weatherSurv">
					<span id="icon3"></span><br>
					<b><span id="temp3"></b></span><br>
					<span id="desc3" class="desc"></span><br>
					<b><span class="uv">UV지수 : </span></b><span id="uvi3"></span><br>
					<b><span class="fill">체감 : </span></b><span id="fill_temp3"></span><br>
					<span id="time3"></span>
				</div>
				</td>
	
				<td width="20%" align="center" class="mainWeather">
				<div class="weatherSurv">
					<span id="icon4"></span><br>
					<b><span id="temp4"></b></span><br>
					<span id="desc4" class="desc"></span><br>
					<b><span class="uv">UV지수 : </span></b><span id="uvi4"></span><br>
					<b><span class="fill">체감 : </span></b><span id="fill_temp4"></span><br>
					<span id="time4"></span>
				</div>
				</td>
	
				<td width="20%" align="center" class="mainWeather">
				<div class="weatherSurv">
					<span id="icon5"></span><br>
					<b><span id="temp5"></b></span><br>
					<span id="desc5" class="desc"></span><br>
					<b><span class="uv">UV지수 : </span></b><span id="uvi5"></span><br>
					<b><span class="fill">체감 : </span></b><span id="fill_temp5"></span><br>
					<span id="time5"></span>
				</div>
				</td>
	
			</tr>
		</table>





<!-- 오른쪽 사이드(위젯) --> 
<table class="rightside" style="float:left;">
	<tr><td>검색</td></tr>
	<tr><td>캘린더</td></tr>
</table>

<script type="text/javascript">
		    $(document).ready(function(){
		    	
		    	let weater_icon = {
		    		'01' : 'https://static.xx.fbcdn.net/rsrc.php/v3/yv/r/m5H9uv-AZuI.png',	//맑음    			
		    		'02' : 'https://static.xx.fbcdn.net/rsrc.php/v3/y8/r/xOhmdPeSdi3.png',  //구름조금
		    		'03' : 'https://static.xx.fbcdn.net/rsrc.php/v3/y8/r/xOhmdPeSdi3.png',  //구름
		    		'04' : 'https://static.xx.fbcdn.net/rsrc.php/v3/y8/r/xOhmdPeSdi3.png',  //구름
		    		'09' : 'https://static.xx.fbcdn.net/rsrc.php/v3/y-/r/u7vM4YYwbHw.png',	//비조금
		    		'10' : 'https://static.xx.fbcdn.net/rsrc.php/v3/y-/r/u7vM4YYwbHw.png',	//비
		    		'11' : 'http://www.weather.go.kr/images/icon/NW/NB14.png',	//뇌우
		    		'13' : 'http://www.weather.go.kr/images/icon/NW/NB11.png',	//눈
		    		'50' : 'http://www.weather.go.kr/images/icon/NW/NB15.png' 	//안개
		    	};
		    	
		    	
			    $.ajax({
			    	url:"https://api.openweathermap.org/data/2.5/onecall?lat=37.48348&lon=126.87509&exclude=daily&lang=kr&units=metric&appid=98cd05d2b75d3fddaf2dab718820d6fb",
			    	type:"GET",
			    	dataType:"json",
			    	success:function(data){
			    		//오늘 날씨
			    		//시간
		    			let timec = document.querySelector('#timec');
		    			let udtc = data.current.dt;
		    			timec.innerText = unix_timestamp_curr(udtc);
			    		
		    			let tempc = document.querySelector('#tempc');
		    			tempc.innerText = (data.current.temp).toFixed(1) + "°C";
		    			
		    			let fill_tempc = document.querySelector('#fill_tempc');
		    			fill_tempc.innerText = (data.current.feels_like).toFixed(1) + "°C";
		    			
		    			let descc = document.querySelector('#descc');
		    			descc.innerText = data.current.weather[0].main;
		    			
		    			let iconc = document.querySelector('#iconc');
		    			let iconselect = (data.current.weather[0].icon).substr(0,2);
		    			iconc.innerHTML = '<img src='+ weater_icon[iconselect] +' width="50px" height="50px">';
		    			
		    			let humidity = document.querySelector('#humidity');
		    			humidity.innerText = data.current.humidity + "%";
		    			
		    			let description = document.querySelector('#description');
		    			description.innerText = data.current.weather[0].description;
		    			
		    			let uvic = document.querySelector('#uvic');
		    			let uvindexc = data.current.uvi;
		    			if(uvindexc <= 2){
			    			uvic.innerText = "낮음"; 
		    			}else if(uvindexc <= 5){
			    			uvic.innerText = "보통"; 
		    			}else if(uvindexc <= 7){
			    			uvic.innerText = "높음"; 
		    			}else if(uvindexc <= 10){
			    			uvic.innerText = "매우높음"; 
		    			}else if(uvindexc > 10){
			    			uvic.innerText = "위험"; 
		    			}
		    			
			    		//시간별 날씨
			    		for(var i = 1; i < 6; i++){
			    			//기온
			    			let temp = document.querySelector('#temp'+i+'');
			    			temp.innerText = (data.hourly[i].temp).toFixed(1) + "°C";
			    			
			    			//체감
			    			let fill_temp = document.querySelector('#fill_temp'+i+'');
			    			fill_temp.innerText = (data.hourly[i].feels_like).toFixed(1) + "°C"; 
			    			
			    			//아이콘
			    			let icon = document.querySelector('#icon'+i+'');
			    			let iconselect = (data.hourly[i].weather[0].icon).substr(0,2);
			    			icon.innerHTML = '<img src='+ weater_icon[iconselect] +' width="50px" height="50px">';
			    			
			    			//날씨설명
			    			let desc = document.querySelector('#desc'+i+'');
			    			desc.innerText = data.hourly[i].weather[0].main; 
			    			
			    			//UV지수
			    			let uvi = document.querySelector('#uvi'+i+'');
			    			let uvindex = data.hourly[i].uvi;
			    			if(uvindex < 3){
				    			uvi.innerText = "낮음"; 
			    			}else if(uvindex < 6){
				    			uvi.innerText = "보통"; 
			    			}else if(uvindex < 8){
				    			uvi.innerText = "높음"; 
			    			}else if(uvindex < 11){
				    			uvi.innerText = "매우높음"; 
			    			}else if(uvindex > 10){
				    			uvi.innerText = "위험"; 
			    			}
			    			
			    			//시간
			    			let time = document.querySelector('#time'+i+'');
			    			let udt = data.hourly[i].dt;
			    			time.innerText = unix_timestamp(udt);
			    		}//for문 end
			    	}// success end
			    	
			    }); //ajax end
		    });	//jquery end
		    
		    //unix 시간 변경 - 현재시간
			function unix_timestamp_curr(t){
				var date = new Date(t*1000);
				//var year = date.getFullYear()
				var month = date.getMonth()+1;
				var day = date.getDate()
				var hour = date.getHours();
				//var minute = "0" + date.getMinutes();
				//var second = "0" + date.getSeconds();
				return month + "월 " + day + "일 " + hour + "시";
			}
		    
		    //unix 시간 변경
			function unix_timestamp(t){
				var date = new Date(t*1000);
				//var year = date.getFullYear()
				//var month = date.getMonth()+1;
				//var day = date.getDate()
				var hour = date.getHours();
				//var minute = "0" + date.getMinutes();
				//var second = "0" + date.getSeconds();
				return hour + "시";
			}
	    </script>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>

</body>
</html>