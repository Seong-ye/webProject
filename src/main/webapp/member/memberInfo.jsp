<%@page import="java.text.SimpleDateFormat"%>
<%@page import="member.MemberDTO"%>
<%@page import="java.util.List"%>
<%@page import="member.MemberDAO"%>
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


		<!-- 회원정보 조회 -->
		<%
		String id = (String) session.getAttribute("id");

		if (id == null) {
			response.sendRedirect("login.jsp");
		}

		MemberDAO memberDAO = new MemberDAO();
		MemberDTO memberDTO = memberDAO.getMember(id);

		if (memberDTO != null) {
		%>
		<article>
			<table id="memberInfo">
				<tr>
					<td>아이디</td>
					<td><%=memberDTO.getId()%></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><%=memberDTO.getPass()%></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><%=memberDTO.getName()%></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><%=memberDTO.getAddress()%></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><%=memberDTO.getEmail()%></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" value="뒤로가기"
						onclick="location.href='../main/main.jsp'" class="btn">
						<input type="button" value="회원정보 수정"
						onclick="location.href='update.jsp'" class="btn">
						<input type="button" value="회원탈퇴"
						onclick="location.href='delete.jsp'" class="btn">
					</td>

				</tr>
			</table>
		</article>

		<%
		}
		%>
		<div class="clear"></div>
		<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
		<!-- 푸터들어가는 곳 -->
	</div>
</body>
</html>