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
<title>Insert title here</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div id="wrap">
		<!-- 헤더들어가는 곳 -->
		<jsp:include page="../inc/top.jsp"></jsp:include>
		<!-- 헤더들어가는 곳 -->
		<!-- 게시판 -->
		<%
		String id = (String) session.getAttribute("id");
		//세션값이 없으면 login.jsp 이동
		if (id == null) {
			response.sendRedirect("login.jsp");
		}
		%>
	<article>
		<form action="writePro.jsp" method="post">
			<input type="hidden" name="pass" value="1234">
			<table id="writeForm">
				<tr>
					<td>작성자</td>
					<td><input type="text" name="name" value="<%=id%>" readonly></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="subject"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="content" rows="10" cols="100"></textarea></td>
				</tr>
			<tr><td colspan="2">
			<div id="table_search">
				<input type="submit" value="글쓰기" class="btn"> <input
					type="button" value="글목록" class="btn"
					onclick="location.href='notice.jsp'">
			</div>
			</td>
			</tr>
		</form>
		</table>
		</article>
		<!-- 본문들어가는 곳 -->
		<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
		<!-- 푸터들어가는 곳 -->
	</div>
</body>
</html>