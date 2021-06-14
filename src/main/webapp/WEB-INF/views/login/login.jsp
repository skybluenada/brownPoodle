<%@page import="com.brownpoodle.member.vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	SecureRandom random = new SecureRandom();
	String state = new BigInteger(130, random).toString();

	// 네이버 로그인 API 사용
	String clientId = "auFKWzgp26tOU_2jRrOj";//애플리케이션 클라이언트 아이디값";
	String redirectURI = URLEncoder.encode("http://localhost:8088/naverCallback.bp", "UTF-8");// 네이버에 등록한 값 콜백화면으로 가야된다.
	String naverApiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
	naverApiURL += "&client_id=" + clientId;
	naverApiURL += "&redirect_uri=" + redirectURI;
	naverApiURL += "&state=" + state;
	System.out.println("naverApiURL >>> : " + naverApiURL);

	
	// 카카오 로그인 API 사용
	String kakaoAppKey = "841ade6e36787e3a3c173468f82bbc4e"; // 카카오 아이디값.
	String kakaoRedirectURI =   "http://localhost:8088/kakaoCallback.bp";
	SecureRandom kakaoRandom = new SecureRandom();
	String kakaoApiURL = "https://kauth.kakao.com/oauth/authorize?response_type=code";
	kakaoApiURL += "&client_id="+ kakaoAppKey; 
	kakaoApiURL	+= "&redirect_uri=" +  kakaoRedirectURI + "&";
	kakaoApiURL += "&state=" + state;
	System.out.println("kakaoApiURL >>> : " + kakaoApiURL);
	
	session.setAttribute("state", state);
	
	//session.setAttribute("kakaoState", kakaoState);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 : 갈색푸들</title>
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$("#btn").click(function(){
					var m_id = $("#m_id").val();
					var m_pw = $("#m_pw").val();
					
					if(m_id == ""){
						alert("아이디를 입력하세요");
					}else if(m_pw == ""){
						alert("비밀번호를 입력하세요");
					}else{
						$('#loginForm').attr({
							'action':'loginTry.bp',
							'method':'POST',
							'enctype':'application/x-www-form-urlencoded'
						}).submit();
					}
				});
			});
		</script>
	</head>
	<body>
		<h5 align="center">Login</h5>
		<form name="loginForm" id="loginForm">
			<table align="center">
				<tr align="center">
					<td></td>
					<td>
						<input type="text" name="m_id" id="m_id" placeholder="아이디" style="width: 200px; height: 25px;">
					</td>
					<td></td>
				</tr>
				<tr></tr>
				<tr align="center">
					<td></td>
					<td>
						<input type="password" name="m_pw" id="m_pw" placeholder="비밀번호" style="width: 200px; height: 25px;">
					</td>
					<td></td>
				</tr>
				<tr></tr>
				<tr align="center">
					<td></td>
					<td>
						<input type="button" id="btn" style="width: 200px; height: 25px;" value="로그인">
					</td>
					<td>
						
					</td>
				</tr>
				<tr align="center">
					<td></td>
					<td>
					<a href="<%=kakaoApiURL%>">
						<img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" width="222"/>
					</a>
					<p id="token-result"></p>
					</td>
					<td></td>
				</tr>
				<tr align="center">
					<td></td>
					<td>
						<a href="<%=naverApiURL %>">
							<img height="50" width="222" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQAo74Slh5I2MVx1c4IWfV14MFOtAWyD3LFg&usqp=CAU" />
						</a>	
				
					</td>
					<td></td>
				</tr>
				<tr align="center">
					<td colspan="3">
						<a href="idFind.bp"><font size="1">아이디찾기</font></a> |
						<a href="idFindPw.bp"><font size="1">비밀번호찾기</font></a>
					</td>
				</tr>
			</table>
		</form>
	<!-- 	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
		<script>
	        // SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
	        Kakao.init('1433179c9949a6df24709974fab3536e');
			
	        // SDK 초기화 여부를 판단합니다.
	        console.log("Kakao.isInitialized() >>> : " + Kakao.isInitialized());
	        function loginWithKakao() {
	            Kakao.Auth.login({
	              success: function(authObj) {
	                alert(JSON.stringify(authObj))
	              },
	              fail: function(err) {
	                alert(JSON.stringify(err))
	              },
	            })
	          }
    	</script> -->
		
	</body>
</html>