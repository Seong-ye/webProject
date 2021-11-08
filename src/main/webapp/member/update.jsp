<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
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

		<!-- 본문들어가는 곳 -->

		<!-- 본문내용 -->
			<%
			// 세션값 가져오기
			String id = (String) session.getAttribute("id");
			// MemberDAO 객체생성
			MemberDAO memberDAO = new MemberDAO();
			// id정보를 조회 MemberDTO getMember(id) 메서드 정의
			// MemberDTO  memberDTO = getMember(id) 메서드 호출
			MemberDTO memberDTO = memberDAO.getMember(id);
			%>
			<form action="updatePro.jsp" id="join" method="post">
				<fieldset>
					<label>아이디</label> 
					<input type="text" name="id" value="<%=id%>" readonly><br> 
					<label>비밀번호</label>
					<input type="password" name="pass"><br>
					<label>회원 이름</label>
					<input type="text" name="name" value="<%=memberDTO.getName()%>"><br>
					<label>전화번호</label> 
					<input type="text" name="phone" value="<%=memberDTO.getPhone()%>"><br>
					<label>배송지 정보</label>
					<input type="text" name="address" value="<%=memberDTO.getAddress()%>"><br>
					<label>이메일</label>
					<input type="email" name="email" value="<%=memberDTO.getEmail()%>"><br>
				</fieldset>
				<div id="buttons">
					<input type="submit" value="정보수정" class="submit"> 
					<input type="reset" value="뒤로가기" class="cancel">
				</div>
			</form>
		<!-- 본문내용 -->
		<!-- 본문들어가는 곳 -->

		<div class="clear"></div>
		<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
		<!-- 푸터들어가는 곳 -->
	</div>
</body>
</html>