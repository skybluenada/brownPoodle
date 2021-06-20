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
						<div class="m_id_padding"><b>　회원번호</b><br></div>
						<input type="text" class="form-control" name="m_num" id="m_num" placeholder="자동으로 부여되요!" style="width: 326px; height: 25px; float:left; margin-left: 116px; ">
					</td>
				</tr>
				
				
				<tr align="center">
					<td class="id">
						<div class="m_id_padding"><b>아이디</b><br></div>
						<input type="text" class="form-control" name="m_id" id="m_id"  style="width: 236px; height: 25px; float:left; margin-left: 116px; ">
						<input type="button" class="btn btn-primary btn-block" name="m_idBtn" id="m_idBtn" style="width:82px; height: 43px; margin-right:110px" value="중복체크">
					</td>
				</tr>
				 
				 
				<tr align="center">
					<td class="member">
						<div class="m_id_padding"><b>　비밀번호</b><br></div>
						<input type="text" class="form-control" name="m_pw" id="m_pw"  style="width: 326px; height: 25px; float:left; margin-left: 116px; ">
					</td>
				</tr>
				
				<tr align="center">
					<td class="member">
						<div class="m_id_padding"><b>이메일</b><br></div>
						<input type="text" class="form-control" name="m_email" id="m_email"  style="width: 326px; height: 25px; float:left; margin-left: 116px; ">
					</td>
				</tr>
				
				<tr align="center">
					<td class="member">
						<div class="m_id_padding"><b> 이름　</b><br></div>
						<input type="text" class="form-control" name="m_name" id="m_name"  style="width: 326px; height: 25px; float:left; margin-left: 116px; ">
					</td>
				</tr>
				
				<tr align="center">
					<td class="member">
						<div class="m_id_padding"><b>닉네임</b><br></div>
						<input type="text" class="form-control" name="m_nick" id="m_nick"  style="width: 326px; height: 25px; float:left; margin-left: 116px; ">
					</td>
				</tr>
				
				<tr align="center">
					<td class="member">
						<div class="m_id_padding"><b>　　      프로필 사진</b><br></div>
						
						<span class="filebox">
 						<label for="m_photo">사진 선택</label>
  						<input type="file" name="m_photo" id="m_photo">
						</span>
					</td>
				</tr>
				
				<tr align="center">
					<td class="member">
						<div class="m_id_padding"><b>핸드폰</b><br></div>
						
						<select name="m_phone1" id="m_phone1" style="padding-left: 7px; margin-left: 100px;">
	        			<option value="010" selected>010</option>
	         			</select>
	         			
	         			 
						 <input type="text" class="form-control" name="m_phone3" id="m_phone3" style="width: 100px; height: 25px; float: right; margin-right: 114px;">
						 <input type="text" class="form-control" name="m_phone2" id="m_phone2" style="width: 100px; height: 25px; float: right; margin-right: 14px;">
					</td>
				</tr>
				
				<tr align="center">
					<td class="member">
						<div class="m_id_padding"><b>주소　</b><br></div>
						
						<select name="m_addr1" id="m_addr1" style="width: 210px; padding-left: 7px; margin-left: -2px;">
	        			<option value="서울특별시" selected>서울특별시</option>
	         			</select>
	         			
	         			<select name="m_addr2" id="m_addr2" style="width:105px; padding-left: 8px; margin-left: 7px;">
	        			<option value="구로구">구로구</option>
	        	 		<option value="금천구">금천구</option>
	        	 		<option value="강남구">강남구</option>
	         			</select>		 
						
					</td>
				</tr>
			
			
			
			
				
				
				<tr align="center">
					<td>
						<input type="button" class="btn btn-primary btn-block" id="btn" style="width: 327px; height: 43px; font-size: 16px; margin-top: 20px; margin-bottom: 43px; padding-top: 12px; padding-bottom: 38px;" value="가입하기">
					</td>
				</tr>
				

			</table>
		</form>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>

</body>
</html>