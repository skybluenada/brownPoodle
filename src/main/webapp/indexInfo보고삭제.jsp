<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업체 정보 : 갈색푸들</title>
<link rel="stylesheet" href="resources/css/info.css" type="text/css">
<link rel="stylesheet" href="resources/css/bootstrapinfo.css">
</head>
<body style="background-color:#EEEEEE;">

<!-- 상단 -->
<table class="logot">
	<tr class="logotr">
		<td class="logotd">
			<div class="logotdh">
			<img alt="logo" src="resources/img/mainimg/로고집.png" link="">
			</div>
		</td>
		
		<td class="logotd">
			<div class="logotdtext">
			<a href="index.jsp">
			<img alt="logoname" src="resources/img/mainimg/로고네임.png">
			</a>
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
		<td class="leftsidetd"><img alt="write" src="resources/img/mainimg/글쓰기.png"></td><td class="leftsidetext">글쓰기</td>
	</tr>

	<tr>
		<td class="leftsidetd"><img alt="write" src="resources/img/mainimg/다이어리.png"></td><td class="leftsidetext">펫 다이어리</td>
	</tr>
	<tr>
		<td class="leftsidetd"><img alt="write" src="resources/img/mainimg/산책.png"></td><td class="leftsidetext">산책 하기</td>
	</tr>
	<tr>
		<td class="leftsidetd"><img alt="write" src="resources/img/mainimg/업체정보.png"></td><td class="leftsidetext"><a href="info.bp">업체 정보</a></td>
	</tr>
	<tr>
		<td colspan="2" class="leftsidetd"><img alt="write" src="resources/img/mainimg/사이드줄.png"></td>
	</tr>
</table>
 

<!-- 업체 정보 -->
<table class="info">
	<tr>
		<td class="shelterimg"><img class="shelter" src="resources/img/mainimg/shelter.png" alt="shelter"></td>
		<td colspan="4"><span class="infotitle">업체정보</span><br><span class="infotitlesurv">우리동네의 다양한 애견업체들을 확인해보세요!</span></td>
	</tr>
	<tr>
		<td class="maptd" colspan="5"> <div class="map" id="map" style="width: 710px; height: 412px;"></div></td>
	</tr>
	<tr>
		<td colspan="5" class="button1" style="width: 0;"><input type="button" class="btn btn-warning" id="button1" onclick="button1_click('애견카페');"value="애견카페" style="margin-right: 12px;" />
		<input type="button" class="btn btn-danger" id="button2" onclick="button1_click('애견미용');"value="미용업체" style="margin-right: 12px;" />
		<input type="button" class="btn btn-primary" id="button2" onclick="button1_click('동물병원');"value="동물병원" style="margin-right: 12px;" />
		<input type="button" class="btn btn-info" id="button2" onclick="button1_click('동물약국');"value="동물약국" style="margin-right: 12px;" />
		<input type="button" class="btn btn-success" id="button2" onclick="button1_click('애견용품');"value="애견용품" style="margin-right: 12px;" /></td>
	</tr>


</table>



<!-- 오른쪽 사이드(위젯) -->
<table class="rightside" style="float:left;">
	<tr>
		<td class="searchtd">
		검색
		</td>
	</tr>
</table>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
 <script type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35dc1ea9dbe217002c536d1dfbd58cf0&libraries=services"></script>
	
	<!-- 자바스크립트 -->
	<script src=../resources/js/info.js></script>
</body>
</html>