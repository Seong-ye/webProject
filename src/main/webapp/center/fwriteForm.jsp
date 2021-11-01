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

		<article>
			<form action="fwritePro.jsp" method="post"
				enctype="multipart/form-data">
				<table id="writeForm">
					<tr>
						<td>작성자</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="pass"></td>
					</tr>
					<tr>
						<td>제목</td>
						<td><input type="text" name="subject"></td>
					</tr>
					<tr>
						<td>파일첨부</td>
						<td><input type="file" name="file" id ="input-file"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea name="content" rows="10" cols="100"></textarea></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="글쓰기" class = "btn"></td>
					</tr>
				</table>
			</form>
		</article>
		<!-- 본문들어가는 곳 -->
		<div class="clear"></div>
		<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
		<!-- 푸터들어가는 곳 -->
	</div>
</body>
</html>