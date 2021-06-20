<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 하기 : 갈색푸들</title>
<link rel="stylesheet" href="resources/css/bootstrap2.css">
<link rel="stylesheet" href="resources/css/member_form.css" type="text/css">
<link href="resources/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">



</head>
<body>
  



<!-- 로그인 --> 
<form name="memberForm" id="memberForm">
			<table class="login" style="float:left;">
				<tr><td><h5 align="center"><img class="loginlogo" src="resources/img/mainimg/로그인로고.png" alt="로그인로고"></h5></td></tr>
				
				 <tr align="center">
					<td class="member">
						<div class="m_id_padding"><b>　동물번호</b><br></div>
						<input type="text" class="form-control" name="p_num" id="p_num" placeholder="자동으로 부여되요!" style="width: 326px; height: 25px; float:left; margin-left: 116px; ">
					</td>
				</tr>
				
				
				 
				<tr align="center">
					<td class="member">
						<div class="m_id_padding"><b>　동물 이름</b><br></div>
						<input type="text" class="form-control" name="p_name" id="p_name"  style="width: 326px; height: 25px; float:left; margin-left: 116px; ">
					</td>
				</tr>
				
				<tr align="center">
					<td class="member">
						<div class="m_id_padding"><b>　동물 나이</b><br></div>
						<input type="text" class="form-control" name="p_age" id="p_age"  style="width: 326px; height: 25px; float:left; margin-left: 116px; ">
					</td>
				</tr>
				
				<tr align="center">
					<td class="member">
						<div class="m_id_padding"><b> 　　 동물 성별　</b><br></div>
						<select name="p_gender" id="p_gender" style="padding-left: 9px; margin-left: 2px; width:326px;">
	        			<option value="F" selected>여자</option>
	        			<option value="M" >남자</option>
	         			</select>
					</td>
				</tr>
				
				<tr align="center">
					<td class="member">
						<div class="m_id_padding"><b> 　　 동물 종류　</b><br></div>
						<select name="p_type" id="p_type" style="padding-left: 9px; margin-left: 2px; width:326px;">
	        			<option value="dog" selected>강아지</option>
	        			<option value=cat" >고양이</option>
	        			<option value=else" >기타</option>
	         			</select>
					</td>
				</tr>			
							
				<tr align="center">
					<td class="member">
						<div class="m_id_padding"><b>　 동물 품종</b><br></div>
						<input type="text" class="form-control" name="p_variety" id="p_variety"  style="width: 326px; height: 25px; float:left; margin-left: 116px; ">
					</td>
				</tr>
				
				<tr align="center">
					<td class="member">
						<div class="m_id_padding"><b>　　      프로필 사진</b><br></div>
						
						<span class="filebox">
 						<label for="p_photo">사진 선택</label>
  						<input type="file" name="p_photo" id="p_photo">
						</span>
					</td>
				</tr>
				
				
				<tr align="center">
					<td class="member">
						<div class="m_id_padding"><b>　　　동물 등록번호</b><br></div>
						<input type="text" class="form-control" name="p_variety" id="p_variety"  style="width: 326px; height: 25px; float:left; margin-left: 116px; ">
					</td>
				</tr>
	
				
				<tr align="center">
					<td>
						<input type="button" class="btn btn-primary btn-block" id="btn" style="width: 327px; height: 43px; font-size: 16px; margin-top: 20px; margin-bottom: 43px; padding-top: 12px; padding-bottom: 38px;" value="등록하기">
					</td>
				</tr>
				

			</table>
		</form>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>

</body>
</html>