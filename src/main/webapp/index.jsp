<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>brown poodle</title>
<link rel="stylesheet" href="resources/css/main.css" type="text/css">
</head>
<body>
<a href="hello.bp">aaa</a>
<a href="login.bp">login</a>

<br><br>
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
		<td class="leftsidetd"><img alt="write" src="resources/img/mainimg/글쓰기.png"></td><td class="leftsidetext">글쓰기</td>
	</tr>

	<tr>
		<td class="leftsidetd"><img alt="write" src="resources/img/mainimg/다이어리.png"></td><td class="leftsidetext">펫 다이어리</td>
	</tr>
	<tr>
		<td class="leftsidetd"><img alt="write" src="resources/img/mainimg/산책.png"></td><td class="leftsidetext">산책 하기</td>
	</tr>
	<tr>
		<td class="leftsidetd"><img alt="write" src="resources/img/mainimg/업체정보.png"></td><td class="leftsidetext">업체 정보</td>
	</tr>
	<tr>
		<td colspan="2" class="leftsidetd"><img alt="write" src="resources/img/mainimg/사이드줄.png"></td>
	</tr>
</table>


<!-- 게시판 -->
<table class="board" style="float:left;" >
	<tr>
		<td class="boardprofil"><img alt="profil" src="resources/img/mainimg/작성자사진.png"></td>
		<td colspan="4">이름<br>6월3일 오후 02:29</td>
	</tr>
	<tr>
		<td class="boardtdphoto" colspan="5"><img alt="photo" src="resources/img/mainimg/강아지.png"></td>
	</tr>
	<tr>
		<td class="boardtd" colspan="5">텍스트</td>
	</tr>
	<tr>
		<td class="boardtd" colspan="5"><img alt="line" src="resources/img/mainimg/댓글선.png"></td>
	</tr>
	<tr>
		<td class="boardtdlike"><img alt="like" src="resources/img/mainimg/좋아요댓글.png"></td>
		<td class="boardtdlikere">좋아요</td>
		<td><img alt="photo" src="resources/img/mainimg/댓글.png"></td>
		<td>댓글</td>
		<td>신고</td>
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

</body>
</html>