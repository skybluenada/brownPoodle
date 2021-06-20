<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 쓰기 : 갈색푸들</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/boardInsertForm.css" type="text/css">

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script  src="resources/js/boardInsertForm.js"></script>


 
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


<!-- 게시판 : 글쓰기 --> 

<form name="boardWrite" id="boardWrite"> 
<table class="board" style="float:left;" > 
	<tr>  
		<td class="boardtdprofil"><img alt="profil" src="resources/img/mainimg/작성자사진.png"></td>
		<td class="boardtdprofilname">이름</td> 
		 
		 
		<!--  <td  align="center">WRITER</td>
		 (이름은 session으로 가져와서 값 넣기(
		<td>
			<input type="text" name="b_name" id="b_name" size="53">
		</td> -->

		
		<!-- *시간* <br><div class="boardprofiltime">6월3일 오후 02:29</div></td> -->
		
	</tr>
	<tr>
	<td colspan="2">
			<textarea name="b_content" id="b_content" cols="60" rows="10" placeholder="어떤 이야기를 나누고 싶으세요?" style="height: 203px;"></textarea>
		</td>
	</tr>
  
  
  
	<tr>
		<td class="boardtd" colspan="6"><div class="boardtdline"><img alt="line" src="resources/img/mainimg/댓글선.png"></div></td>
	</tr>



	<tr>
		<td colspan="2">  
		<span class="filebox">
 		<label for="b_file"><img class="photoChoice" alt="photo" src="resources/img/mainimg/photo1.png"> 사진 선택</label>
  		<input type="file" name="b_file" id="b_file">
		</span>
		
		
		<span class="okbutton">
  		<input class="okbuttonInput" type="button" id="ok_btn" value="게시하기" >
		</span>
		</td> 
		
	</tr>
</table>
</form>
</a></div>


<!-- 오른쪽 사이드(위젯) --> 
<table class="rightside" style="float:left;">
	<tr><td>검색</td></tr>
	<tr><td>캘린더</td></tr>
</table>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>

</body>
</html>