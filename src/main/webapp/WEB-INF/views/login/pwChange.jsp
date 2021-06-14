<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경 : 갈색푸들</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	
	$(function(){ 
		$("#right").hide(); 
		$("#wrong").hide(); 
		$("#m_pw_r").keyup(function(){ 
			var pwd1=$("#m_pw").val(); 
			var pwd2=$("#m_pw_r").val(); 
			if(pwd1 != "" && pwd2 != ""){ 
				if(pwd1 == pwd2){ 
					$("#right").show();
					$("#wrong").hide();
					
				}else{ 
					$("#right").hide();
					$("#wrong").show(); 
					
				} 
			} 
		}); 
	});

	$(document).ready(function(){
		//alert("ready >>> 클릭 이벤트 ");		
			$("#btn").click(function(){
				//alert("btn >>> 클릭 이벤트");
				console.log("btn >>> 클릭 이벤트");
				
				let midVal = $("#m_id").val();
				let mpwVal = $("#m_pw").val();
				let mpw_rVal = $("#m_pw_r").val();
				let url = "pwFindOK.bp";
				console.log("midVal >>> " + midVal);
				
				$.ajax({
					"url" : url 
				   ,"type" : "GET" 
				   ,"data" : {"m_id" : midVal, "m_pw" : mpwVal, "m_pw_r" : mpw_rVal} 
				   ,"success" : function(data){
					   			//alert(data);
								//alert("통신 성공");
								var msg = $(data).find("result").text();
								alert(msg);
								location.href="login.bp";
				   } 
				   ,"error":function(request,status,error){
					        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				   } 
				});
			});
	});
</script>
</head>
<body>
<h5  align="center">새 비밀번호 입력</h5>
<form name="pwChangeForm" id="pwChangeForm">
	<table align="center">
		<tr>
			<td ><input type="password" name="m_pw" id="m_pw" placeholder="새비밀번호" style="height:25px; width:200px;"></td>
		</tr>
		<tr>
			<td><input type="password" name="m_pw_r" id="m_pw_r" placeholder="새비밀번호 확인" style="height:25px; width:200px;"></td>
		</tr>
		<tr style="height:25px;">	
			<td>
				<div class="right" id="right" style="font-size:12px; color:blue">비밀번호가 일치합니다.</div> 
				<div class="wrong" id="wrong" style="font-size:12px; color:red">비밀번호가 일치하지 않습니다.</div>
			</td>
		</tr>
		<tr>
			<td  colspan="2" align="center" style="height:120px;">
				<button type="button" id="btn">다음</button><br>
				<input type="hidden" name="m_id" id="m_id" value=${memberVO.m_id}>
			</td>
		</tr>
	</table> 
</form>
</body>
</html>