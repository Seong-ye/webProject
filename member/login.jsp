<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/login.jsp</title>
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
			<form action="loginPro.jsp" id="join" method="post">
				<fieldset>
					<label>아이디</label> <input type="text" name="id"><br>
					<label>비밀번호</label> <input type="password" name="pass"><br>
				</fieldset>
				<div id="buttons">
					<input type="submit" value="Sign In" class="submit1" />
					<input type="button" value = "Join" class = "join" onClick="location.href='join.jsp'""/>
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