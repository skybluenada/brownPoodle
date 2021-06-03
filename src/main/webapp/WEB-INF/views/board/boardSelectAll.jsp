<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.brownpoodle.board.vo.BoardVO" %>
<%@ page import="com.brownpoodle.common.CommonUtil" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	Object obj = request.getAttribute("listAll");
	if (obj == null) return;
	
	//paging 관련 변수 선언 및 초기화
	List<BoardVO> list = (List<BoardVO>)obj;		
	String totalCount = list.get(0).getTotalcount();
	int pagesize = Integer.parseInt(CommonUtil.B_PAGE_SIZE);		// 한 페이지당 보여줄 게시글 수
	int curpage = Integer.parseInt(CommonUtil.B_CUR_PAGE);			// 현재 페이지
	int totalcount = Integer.parseInt(totalCount);					// 전체 게시글 수
	
	int maxPage = (int)Math.ceil(totalcount / (pagesize + 0.0));	// 전체 페이지 수

	Object sobj = request.getAttribute("search");
	BoardVO _bvo = (BoardVO) sobj;
	
	// search 관련 변수 선언 및 초기화 
	String keyFilter = _bvo.getKeyfilter();		// 검색 조건
	if (keyFilter == null) keyFilter = "";
	
	String keyword = _bvo.getKeyword();			// 검색어 
	if (keyword == null) keyword = "";
	
	String startdate = _bvo.getStartdate();		// 시작일 
	if (startdate == null) startdate = "";
	
	String enddate = _bvo.getEnddate();			// 종료일 
	if (enddate == null) enddate = "";
	
	System.out.println("jsp page ---------------");
	System.out.println("keyFilter : " + keyFilter);
	System.out.println("keyword : " + keyword);
	System.out.println("startdate : " + startdate);
	System.out.println("enddate : " + enddate);
%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>brownpoodle main</title>
	<style>
		table{
			border-collapse: collapse;
			border: 1px solid black;
			width: 500px;
			margin: auto;
		}
		
		tr td {
			border: 1px solid black;
		}

		.content {
			padding: 50px;
		}

		.content_img {
			width: 500px;
			object-fit: contain;
		}
		
		.profile_img {
			width: 20px;
		}
		
		.report {
			float: right;
		}

	</style>

	<link rel="stylesheet" href="/resources/common/datepiker/jquery-ui-1.12.1/jquery-ui.min.css">
	<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/resources/common/datepiker/jquery-ui-1.12.1/jquery-ui.min.js"></script>
	<script src="/resources/common/datepiker/jquery-ui-1.12.1/datepicker-ko.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			/* 달력 표시 (datepicker)*/
			// 시작일
			$("#startdate").datepicker({
				showOn: "button",
				buttonImage: "/resources/img/defaultimg/cal_0.gif",
				dateFormat: 'yy-mm-dd',
				buttonImageOnly: true,
				buttonText: "Select date",
				changeMonth: true,
				changeYear: true,
				onClose: function (sDate) {
					$('#enddate').datepicker('option', 'minDate', sDate);
				}
			});
			$("#enddate").datepicker({
				showOn: "button",
				buttonImage: "/resources/img/defaultimg/cal_0.gif",
				dateFormat: 'yy-mm-dd',
				buttonImageOnly: true,
				buttonText: "Select date",
				changeMonth: true,
				changeYear: true,
				onClose: function (sDate) {
					$('#startdate').datepicker('option', 'maxDate', sDate);
				}
			});

			// 검색 버튼 이벤트
			$(document).on('click', '#searchBtn', function () {
				alert('검색 버튼 이벤트 진입!');

				$('#boradForm').attr({
					'method': 'GET',
					'action': 'boardSelectAll.bp'
				}).submit();
			});

			// infinite scroll
			let index = 1;
			$(window).scroll(function () {
				let $window = $(this);
				let scrollTop = $window.scrollTop();
				let windowHeight = $window.height();
				let documentHeight = $(document).height();

				console.log('scrollTop: ' + scrollTop);
				console.log('windowHeight: ' + windowHeight);
				console.log('documentHeight: ' + documentHeight);
				console.log('scrollTop + windowHeight: ' + (scrollTop + windowHeight));

				console.log('scrollTop >= documentHeight - windowHeight : ' + scrollTop + windowHeight + 1 >= documentHeight)
				if (scrollTop >= documentHeight - windowHeight) {
					setTimeout(fetchlist, 200);
				}

			});

			// 다음 페이지 게시글 불러오기 (json 데이터를 불러오기)
		function fetchlist() {
			// $('.test').append('<div>오오오로로로로로</div>');
			let maxPage = <%= maxPage%>;
			if (index <= maxPage) {
				index++;
			} else {
				return;
			}
			console.log('maxPage: ' + maxPage);
			console.log('불러올 페이지: ' + index);
			
			// 검색했을 때
			// keyfilter=key1&keyword=고양이&startdate=&enddate=
			// /boardSelectPaging.bp?curPage=2&keyfilter=&keyword=+&startdate=+&enddate=+
			let kfilter = '';
			let kword = '';
			let sdate = '';
			let edate = '';

			// console.log('type(keyfilter) : ' + typeof(kfilter));
			kfilter = '<%=keyFilter %>';
			// if (kfilter == '0') kfilter = '';
			kword = '<%=keyword %>';
			// if (kword == '0') kword = '';
			sdate = '<%=startdate %>';
			// if (sdate == '0') sdate = '';
			edate = '<%=enddate %>';
			// if (edate == '0') edate = '';
			
			console.log('kfilter: ' + kfilter);
			console.log('kword: ' + kword);
			console.log('sdate: ' + sdate);
			console.log('edate: ' + edate);
			
			let dataParams = {
				keyfilter: kfilter,
				keyword: kword,
				startdate: sdate,
				enddate: edate
			};

			$.ajax({
				type: 'GET',
				url: '/boardSelectPaging.bp?curPage='+ index,
				data: dataParams,
				dataType: 'json',
				success: function (data) {
					let str = '';

					if (data != null && data != '') {
						$(data).each(function(){
							console.log(this);
							str += '<div class="content"><table><tbody>'
								+ '<tr><td><img class="profile_img" src="/resources/img/memberimg/default_profile.jpg" alt="profile">' + this.b_name
								+ '<span class="report">신고</span></td></tr>'
								+ '<tr><td>' + this.b_insertdate + '</td></tr>'
								+ '<tr><td>' + this.b_subject + '</td></tr>';
						 // (bvo.getB_file() != null) && !"-".equals(bvo.getB_file()) && !"".equals(bvo.getB_file())
						 if (this.b_file != null && this.b_file != '-' && this.b_file != '') {
							 str += '<tr><td> <img class="content_img" src="/resources/img/boardimg/' + this.b_file + '"> </td></tr>';
						 }
						 	str += '<tr><td>' + this.b_content + '</td></tr>'
								+ '<tr><td><input type="button" value="좋아요">' + this.b_like + '</td></tr>'
								+ '<tr><td><a href="boardSelect.bp?b_num=' + this.b_num + '">댓글작성</a></td></tr></tbody></table></div>';
						});
						
						$('.test').append(str);
					} else {
						console.log('불러올 데이터가 없음!');
					}

				}
			});
		} // function fetchlist() end

		}); // jQuery end
		
		
	</script>
</head>

<body>
	<% request.setCharacterEncoding("UTF-8");%>
<%
	
	int nCnt = list.size();
	out.println(" * 현재 페이지의 게시글 수 (nCnt) : " + nCnt);
	if (nCnt > 0) {
%>
	<form name="boradForm" id='boradForm'>
		<table class="fix" border="1" align="center">
			<thead>
				<tr>
					<td colspan="10" align="center">
						<h2>게시판</h2>
					</td>
				</tr>
				<!-- 검색 영역 -->
				<tr>
					<td colspan="10" align="left">
						<select name="keyfilter" id="keyfilter">
							<option value="key1">제목</option>
							<option value="key2">내용</option>
							<option value="key3">제목+내용</option>
							<option value="key4">작성자</option>
							<option value="key5">글번호</option>
						</select>
						<input type="text" name="keyword" id="keyword" placeholder="검색어 입력"><br>
						<input type="text" name="startdate" id="startdate" size="12" placeholder="시작일">
						~
						<input type="text" name="enddate" id="enddate" size="12" placeholder="종료일">
						<button type="button" id="searchBtn">검색!</button>
					</td>
				</tr>
			</thead>
			
<%

		for (int i = 0; i < nCnt; i++) {		
			BoardVO bvo = list.get(i);
			
%>
			<div class="content">
				<table>
					<tbody>
						<tr>
							<td>
								<img class="profile_img" src="/resources/img/memberimg/default_profile.jpg" alt="profile"><%= bvo.getB_name() %>
								<span class="report">신고</span>
							</td>
						</tr>
						<tr>
							<td><%= bvo.getB_insertdate() %></td>
						</tr>
						<tr>
							<td><%= bvo.getB_subject() %></td>
						</tr>
						<%
							if ((bvo.getB_file() != null) && !"-".equals(bvo.getB_file()) && !"".equals(bvo.getB_file())) {
								
						%>
						<tr>
							<td><img class="content_img" src="/resources/img/boardimg/<%= bvo.getB_file() %>"></td>
						</tr>
						<%
							}
						%>
						<tr>
							<td><%= bvo.getB_content() %></td>
						</tr>
						<tr>
							<td><input type="button" value="좋아요"><%= bvo.getB_like() %></td>
						</tr>
						<tr>
							<td><a href="boardSelect.bp?b_num=<%= bvo.getB_num() %>">댓글작성</a></td>
						</tr>

					</tbody>
				</table>
			</div>
<%
		}//end of for
	} // if end
%>
		<div class="test"></div>
	</form>
</body>

</html>