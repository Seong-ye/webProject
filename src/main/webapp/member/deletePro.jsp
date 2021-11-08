<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String id = (String) session.getAttribute("id");
	String pass = request.getParameter("pass");

	MemberDAO memberDAO = new MemberDAO();
	boolean result = memberDAO.deleteMember(id, pass);

	if (result) {
		session.invalidate();
	%>
	<script type="text/javascript">
		alert("회원정보가 삭제되었습니다. 감사합니다.");
		location.href = "../main/main.jsp";
	</script>
	<%
	} else {
	%>
	<script type="text/javascript">
		alert("비밀번호를 다시 확인해주세요.");
		history.back();
	</script>
	<%
	}
	%>
</body>
</html>