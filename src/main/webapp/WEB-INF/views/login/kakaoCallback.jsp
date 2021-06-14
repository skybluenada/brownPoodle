<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.net.URL"%>
<%@ page import="java.net.HttpURLConnection"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.io.InputStreamReader"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>카카오로그인 : 갈색푸들</title>
</head>
<body>
	<%
	System.out.println("kakao CallBack >>> : ");
	String clientId = "841ade6e36787e3a3c173468f82bbc4e";	//애플리케이션 클라이언트 아이디값";
	String clientSecret = "Z6TaFRfdzZ6LJxtgvwSYi0yvMNrDH8a8";//애플리케이션 클라이언트 시크릿값";
	String code = request.getParameter("code");
	String state = request.getParameter("state");
	String redirectURI = URLEncoder.encode("http://localhost:8088/kakaoCallback.bp", "UTF-8");
	String apiURL;
	apiURL = "https://kauth.kakao.com/oauth/token?grant_type=authorization_code&";
	apiURL += "client_id=" + clientId;
	apiURL += "&client_secret=" + clientSecret;
	apiURL += "&redirect_uri=" + redirectURI;
	apiURL += "&code=" + code;
	apiURL += "&state=" + state;
	String access_token = "";
	String refresh_token = "";
	System.out.println("apiURL >>> : " + apiURL);
	// apiURL=https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&
	// client_id=auFKWzgp26tOU_2jRrOj&
	// client_secret=Yiap4L4YfJ&
	// redirect_uri=http%3A%2F%2Flocalhost%3A8088%2Fcallback.bp
	// &code=UPYYmjNL5vpK0OYxb1&
	// state=1058045290659480432999321704382591806946
	// 1058045290659480432999321704382591806946
	try {
		if (session.getAttribute("state") != null && session.getAttribute("state").equals(state)) {
			System.out.println(session.getAttribute("state"));
			URL url = new URL(apiURL);
			System.out.println("url >>> : " + url);
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();
			System.out.println("conn >>> : " + conn);
			conn.setRequestMethod("GET");

			int responseCode = conn.getResponseCode();
			BufferedReader br;
			System.out.print("responseCode >>> : " + responseCode);

			if (responseCode == 200) { // 정상 호출
				br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			} else { // 에러 발생
				br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			}
				String inputLine;
				StringBuffer res = new StringBuffer();

			while ((inputLine = br.readLine()) != null) {
				res.append(inputLine);
			}
			br.close();
			if (responseCode == 200) {

				out.println("res.toString() >>> : " + res.toString());
				
				JSONParser jsonParser = new JSONParser();
				JSONObject jsonObject  =(JSONObject) jsonParser.parse(res.toString());
				access_token = (String)jsonObject.get("access_token");
				System.out.println("access_token >>> : " + access_token);
				request.setAttribute("access_token", access_token);
				
				RequestDispatcher rd = request.getRequestDispatcher("/kakaologin.bp");
				rd.forward(request, response);
				
			} //end
		} //end of session.getAttribute("state")
	} catch (Exception e) {
		System.out.println(e);
	}
	%>
</body>
</html>