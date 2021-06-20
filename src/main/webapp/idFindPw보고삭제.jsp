<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 : 갈색푸들</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		$("#mid").attr('placeholder', '아이디');		
		
		$("#idFindPwbtn").click(function(){
			console.log("idFindPwbtn >>> 클릭 이벤트 진입");
			
			$('#idFindForm').attr({
				'action':'pwFind.bp',
				'method':'GET',
				'enctype':'application/x-www-form-urlencoded'
			}).submit();
		});
	});
</script>
</head>
<body>
<h5  align="center">비밀번호 찾기</h5>

<div align="center" style="font-size:12px;">비밀번호를 찾고자 하는 아이디를 입력해 주세요.</div>
<br>
<form name="idFindForm" id="idFindForm">
	<table align="center">
		<tr>
			<td><input type="text" name="m_id" id="m_id" style="width:200px; height:25px"></td>
		</tr>
		<tr style="height:50px">
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="button" id="idFindPwbtn">다음</button>
			</td>
		</tr>
	</table> 
	<br>
	<br>
	<div align="center" style="font-size:12px;">아이디가 기억나지 않으세요?
	<a href="idFind.bp">아이디찾기 </div></a>
</form>
</body>
</html>