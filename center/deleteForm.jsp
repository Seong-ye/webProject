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

		<%
		//http://localhost:8181/JspStudy/jsp5/deleteForm.jsp?num=2
		//request내장객체에서 num 가져오기
		int num = Integer.parseInt(request.getParameter("num"));
		%>
		<article>
		<form action="deletePro.jsp" method="post" >
			<input type="hidden" name="num" value="<%=num%>">
			<table id="delForm">
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="pass" placeholder="비밀번호를 입력해주세요."></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="글삭제" class="btn"></td>
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