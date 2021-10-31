<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Board.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>content.jsp</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div id="wrap">
		<!-- 헤더들어가는 곳 -->
		<jsp:include page="../inc/top.jsp"></jsp:include>
		<!-- 헤더들어가는 곳 -->

		<!-- 본문들어가는 곳 -->


		<!-- 게시판 -->
		<%
		//BoardDAO 객체생성
		BoardDAO boardDAO = new BoardDAO();
		int num = Integer.parseInt(request.getParameter("num"));
		boardDAO.updateReadcount(num);
		
		BoardDTO boardDTO = boardDAO.getBoard(num);
		
		%>
		<article>
			<table id="notice1">
					<tr>
						<td>글번호</td>
						<td><%=boardDTO.getNum() %></td>
						<td>작성일</td>
						<td><%=boardDTO.getDate() %></td>
					</tr>
					<tr>
						<td>글쓴이</td>
						<td><%=boardDTO.getName() %></td>
						<td>조회수</td>
						<td><%=boardDTO.getReadcount() %></td>
					</tr>
					<tr>
						<td>글제목</td>
						<td colspan="3"><%=boardDTO.getSubject()%></td>
					</tr>
					<tr>
						<td>글내용</td>
						<td colspan="3"><%=boardDTO.getContent() %></td>
					</tr>
				</table>
			</table>
			<div id="table_search">
				<input type="button" value="글수정" class="btn"
					onClick="location.href='updateForm.jsp?num=<%=boardDTO.getNum()%>'">
				<input type="button" value="글삭제" class="btn"
				onClick="location.href='deleteForm.jsp?num=<%=boardDTO.getNum()%>'">
				<input type="button" value="글목록" class="btn"
				onClick="location.href='notice.jsp'">
			</div>
			<div class="clear"></div>
			<div id="page_control"></div>
		</article>
		<!-- 게시판 -->
		<!-- 본문들어가는 곳 -->
		<div class="clear"></div>
		<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
		<!-- 푸터들어가는 곳 -->
	</div>
</body>
</html>