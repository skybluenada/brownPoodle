<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.brownpoodle.board.vo.BoardVO" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>게시글 상세보기 - 게시글 제목 넣기</title>
	<style>
		table {
			border-collapse: collapse;
			border: 1px solid black;
			width: 500px;
			margin: auto;
		}
		
		tr td {
			border: 1px solid black;
		}

		article {
			width: 500px;
			border: 1px solid black;
		}

		img {
			width: 500px;
			object-fit: contain;
		}

		.profile_img {
			width: 20px;
		}

		.report {
			float: right;
		}

		.edit {
			float: right;
		}
	</style>
</head>

<body>
	<% request.setCharacterEncoding("UTF-8");%>
	<h1>게시글 수정/삭제하기</h1>
	<hr>
	<%
	//aListAll 속성의 객체 가져오기 - 전체 조회 결과 담은 list
	Object obj = request.getAttribute("listS");
	if (obj == null) {
		out.println("<script>alert('게시글이 존재하지 않습니다.');</script>");	
	}

	List<BoardVO> listS = (List<BoardVO>)obj;

	int nCnt = listS.size();
	out.println(" * 선택한 게시글 수 (nCnt) : " + nCnt);
	
	// 수정할 게시글의 데이터 담을 변수 선언 및 초기화
	String num = "";
	String subject = "";	
	String name = "";
	String content = "";
	String file = "";
	String hate = "";
	String like = "";
	String deleteyn = "";
	String insertdate = "";
	String updatedate = "";
	
	
	/*
	인터페이스에서 데이터를 받을 때는 
		1.데이터가 있는지 없는지 판단 
			테이터 타입 : 숫자, 문자(문자열), 바이너리 경우
			테이터 유형을 변경할 수 있다 : 언제 할 것인가 
		2. 데이터가 유형 : 똥골뱅인지, 사각형인지, 삼각형 인지 체크 
		3. 몇개가 있는지 체크 
		4. 내가 필요한 데이터를 어떻게 사용해야 하는지 
		--> 순차적으로 잘 올 때
		--> 비동기인 경우일 때는 어떻게 할 것인가. 
		    ajax 비동기 : 동기
		    ajax 동기 : async, await 
	*/    
	// 선택한 게시글 하나일 때
	// 선언한 변수에 넘어온 DB 컬럼 데이터 하나씩 대입
	
	/*
	if (nCnt == 1){
		
	} else{
		nCnt = 0 || nCnt > 1
	}
	*/
	
	if (nCnt == 1) {
		BoardVO bvo = listS.get(0);
		
		num = bvo.getB_num();
		subject = bvo.getB_subject();
		name = bvo.getB_name();
		content = bvo.getB_content();
		file = bvo.getB_file();
		hate = bvo.getB_hate();
		like = bvo.getB_like();
		deleteyn = bvo.getB_deleteyn();
		insertdate = bvo.getB_insertdate();
		updatedate = bvo.getB_updatedate();
	}
%>

	<!--

	name을 not null 처리한다면 id 컬럼 추가없이 name으로 세션확인 후 수정/삭제 가능
	https://doublesprogramming.tistory.com/211
 -->
	<h1>table 사용한 경우</h1>
	<table>
		<tr>
			<td>
				<img class="profile_img" src="/resources/img/memberimg/default_profile.jpg" alt="profile"><%= name %>
				<span class="report">신고</span>
			</td>
		</tr>
		<tr>
			<td><%= insertdate %></td>
		</tr>
		<tr>
			<td><%= subject %></td>
		</tr>
<%
		if ((file != null) && !"-".equals(file) && !"".equals(file)) {		
%>
		<tr>
			<td><img src="/resources/img/boardimg/<%= file %>"></td>
		</tr>
<%
		}
%>
		<tr>
			<td><%= content %></td>
		</tr>
		<tr>
			<td>
				<input type="button" value="좋아요"><%= like %>
				<span class="edit"><input type="button" value="수정"><input type="button" value="삭제"></span>
			</td>
		</tr>
	</table>

	<h1>article 사용한 경우</h1>
	<article>
		<header>
			<div>
				<img class="profile_img" src="/resources/img/memberimg/default_profile.jpg" alt="profile">
				<span><%= name %></span><br>
				<span><%= insertdate %></span>
				<span>신고</span>
			</div>
			<div><%= subject %></div>
		</header>
		<section>
			<div><img src="/resources/img/boardimg/<%= file %>"></div>
			<div><%= content %></div>
		</section>
		<footer>
			<span><input type="button" value="좋아요"><%= like %></span>
			<span>댓글 입력</span>
		</footer>
	</article>

</body>

</html>