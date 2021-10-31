<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/joinIdCheck.jsp</title>

<link href="../css/subpage.css" rel="stylesheet" type="text/css">
</head>
<body>
	
	<h2>Duplicate ID check</h2>
	<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("userid");

	MemberDAO memberDAO = new MemberDAO();

	int result = memberDAO.joinIdCheck(id);
	if (result == 1) {
	%>
		<label id="useLabel">사용 가능한 아이디 입니다.</label>
	<%
	%>
	<input type="button" value="사용하기" id = "idUse" onclick="result();">
	<%
	} else if (result == 0) {
	out.print("중복된 아이디입니다.");
	} else {
	out.print("오류발생");
	}
	%>

	<fieldset id="IdCheck">
		<form action="joinIdCheck.jsp" method="post" name="wfr">
			<label id="idLabel">아이디 :</label> <input type="text" name="userid" value="<%=id%>" /> 
			<input type="submit" value="중복확인" id="checkButton"/>
		</form>
	</fieldset>

	<script type="text/javascript">
		function result() {
			opener.document.form.id.value = document.wfr.userid.value;
			opener.document.form.id.readOnly = true;
			window.close();
		}
	</script>
</body>
</html>