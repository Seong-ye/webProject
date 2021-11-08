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
<script>

	function check(){
		if(!document.delForm.pass.value){
			alert("비밀번호를 입력해주세요.");
			return false;
		}
		
	}
</script>
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
		<form action="deletePro.jsp" id="join" method="post" name="delForm"
				onsubmit="return check()">
				<fieldset>
					<label>비밀번호</label><br> 
					<input type="password" name="pass"><br>
				</fieldset>
				<div id="buttons">
					<input type="submit" value="탈퇴하기" class="submit"> 
					<input type="button" value="뒤로가기" class="cancel" onclick="location.href='memberInfo.jsp'">
				</div>
			</form>

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