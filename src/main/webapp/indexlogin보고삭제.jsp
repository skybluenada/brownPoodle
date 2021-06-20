<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 하기 : 갈색푸들</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/login.css" type="text/css">
<link href="resources/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

 

</head>
<body>
 

 
 
<!-- 로그인 --> 
<form name="loginForm" id="loginForm">
			<table class="login" style="float:left;">
				<tr><td><h5 align="center"><img class="loginlogo" src="resources/img/mainimg/로그인로고.png" alt="로그인로고"></h5></td></tr>
				<tr align="center">
					<td class="id">
						<input type="text" class="form-control" name="m_id" id="m_id" placeholder="아이디" style="width: 327px; height: 25px;">
					</td>
				</tr>
				
				
				<tr align="center">
					<td class="password">
						<input type="password" class="form-control" name="m_pw" id="m_pw" placeholder="비밀번호" style="width: 327px; height: 25px;">
					</td>
				</tr>
			
			
			

				<tr align="center">
					<td>
						<input type="button" class="btn btn-primary btn-block" id="btn" style="width: 327px; height: 43px; font-size: 14px; border-radius: 25px; font-weight: bold;" value="로그인">
					</td>
				</tr>
				
				
				
				
				<tr align="center">
					<td class="findIdPw">
						<a href="idFind.bp">아이디찾기</a> | 
						<a href="idFindPw.bp">비밀번호찾기<br><br></a>
						<img src="resources/img/mainimg/로그인선.png" alt="line">
					</td>
				</tr>
				
				
				<!-- ???? -->
				
				<tr align="center">
					<td>
						<input type="button" class="btn btn-primary btn-block" id="btn" value="네이버 로그인" style="width: 329px; height: 45px; background-color:#1EC800; border: solid #1EC800 1px; margin-top: 22px;  margin-bottom: 8px; font-size: 14px;
						        font-weight: bold;  padding-left: 54px; border-radius: 8px; background: url(resources/img/mainimg/naverBack.png);">
					</td>
				</tr>
				
				
				
				
				
				<tr align="center"> 
					<td>
						<input type="button" class="btn btn-primary btn-block" id="btn" value="카카오 로그인" style="width: 329px; height: 45px; background-color:#ffeb00;; border: solid #ffeb00 1px; font-size: 14px; font-weight: bold; padding-left: 54px; border-radius: 8px; color: #47292b; background: url(resources/img/mainimg//kakaoBack.png);">
					</td>
				</tr>
				
				
		
				
				<tr align="center">
					<td class="joinMember">
						<input type="button" class="btn btn-primary btn-block" id="btn" style="width: 327px; height: 43px; font-size: 14px; font-weight: bold;" img="src:" value="회원가입 하러 GO!"
						>
					</td>
				</tr>
			</table>
		</form>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>

</body>
</html>