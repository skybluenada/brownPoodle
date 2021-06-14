<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 : 갈색푸들</title>
<style type="text/css">

</style>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		//alert("ready >>> 클릭 이벤트 ");
		
			$("#emailbtn").click(function(){
				//alert("emailbtn >>> 클릭 이벤트");
				console.log("emailbtn >>> 클릭 이벤트");
				
				let midVal = $("#m_id").val();
				let memailVal = $("#m_email").val();
				let url = "pwEmailCheck.bp";
				console.log("midVal >>> " + midVal);
				console.log("memailVal >>> " + memailVal);
				
				if(midVal == ""){
					alert("아이디를 입력하세요");	
				}else if(memailVal == ""){
					alert("이메일을 입력하세요");
				}else{
					
					$.ajax({
						"url" : url 
					   ,"type" : "GET" 
					   ,"data" : {"m_id" : midVal, "m_email" : memailVal} 
					   ,"success" : function(data){
						   			//alert(data);
									//alert("통신 성공");
									var msg = $(data).find("result").text();
									alert(msg);
					   } 
					   ,"error":function(request,status,error){
						        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					   } 
					});
				}//if else end
			});
			
			
			$("#pwbtn").click(function(){
				alert("pwbtn >>>  함수진입");
				console.log("pwbtn >>>  함수진입");
				
				let pw_auth_num = $("#pw_auth_num").val();
				if(pw_auth_num == ""){
					alert("인증번호를 입력하세요");
				}else{
					$("#pwForm").attr({
						'action' : 'pwAuthSelect.bp',
						'method' : 'GET',
						'enctype':'application/x-www-form-urlencoded'
					}).submit();
				}
			});
	});
</script>
</head>
<h5  align="center">비밀번호 찾기</h5>
<br>
	<form name="pwForm" id="pwForm">
		<table align="center">
			<tr>
				<td style="height:25px"></td>
				<td><input type="text" name="m_id" id="m_id" value="${memberVO.m_id}" style="width:200px; height:25px;" readonly></td>
			</tr>
			<tr>
				<td style="height:25px"></td>
				<td>
					<input type="text" name="m_email" id="m_email" placeholder="이메일 주소" style="width:200px; height:25px;">
					<button type="button" id="emailbtn">인증번호 받기</button>
				</td>
			</tr>
			<tr>
				<td style="height:25px"></td>
				<td><input type="text" name="pw_auth_num" id="pw_auth_num" 
				           placeholder="인증번호" style="width:200px; height:25px;"></td>
			</tr>
			<tr>
				<td colspan="2" style="font-size:small; height:25px; color:grey;" align="center">
				인증번호가 오지 않나요<div title="스팸함을 확인해 보세요."><img src="resources/img/loginimg/question-mark.png" width="15" height="15"></div></td>
			</tr>
			<tr>
			</tr style="height:50px">
			<tr>
				<td colspan="2" align="center">
				<br><br>
					<button type="button" id="pwbtn">다음</button>
				</td>
			</tr>
		</table> 
	</form>
</body>
</html>