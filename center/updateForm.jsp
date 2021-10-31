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
	// http://localhost:8181/JspStudy/jsp5/updateForm.jsp?num=2
	//  request내장객체에서 num 가져오기
	int num = Integer.parseInt(request.getParameter("num"));
	//BoardDAO 객체생성
	BoardDAO boardDAO = new BoardDAO();
	//getBoard(num) 메서드 호출
	BoardDTO boardDTO = boardDAO.getBoard(num);
	%>
	<article>
	<form action="updatePro.jsp" method="post" >
		<input type="hidden" name="num" value="<%=boardDTO.getNum()%>">
		<table id="upForm">
			<tr>
				<td>작성자</td>
				<td><input type="text" name="name"
					value="<%=boardDTO.getName()%>"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pass" ></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="subject" 
					value="<%=boardDTO.getSubject()%>" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" rows="10" cols="100" ><%=boardDTO.getContent()%></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정 완료" class="btn"></td>
			</tr>
		</table>
	</form>
	</article>
		<div class="clear"></div>
		<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
		<!-- 푸터들어가는 곳 -->
	</div>
</body>
</html>