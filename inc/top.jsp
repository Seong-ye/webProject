<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Zen+Antique&display=swap" rel="stylesheet">
	
	
	<!-- 로고들어가는 곳 -->
	<div id="logo">
		<a href="../main/main.jsp">withourcoat</a>
	</div>
	<!-- 로고들어가는 곳 -->
	<div id="top_menu">
			<a href="../company/welcome.jsp">About us</a>
			<a href="../company/welcome.jsp">Shop</a>
			<a href="../center/notice.jsp">Commuity</a>
	</div>
	
	<%
	//세션값 가져오기
	String id = (String) session.getAttribute("id");
	if (id == null) {
		//세션값 없음 로그인이 안된 상태
	%>
	<div id="login">
		<a href="../center/notice.jsp">Notice</a>
		<a href="../member/login.jsp">login</a>
		<a href="../member/logout.jsp">Order</a>
		<a href="../member/logout.jsp">My Accout</a>
		<a href="../member/logout.jsp">Cart</a>
	</div>

	</div>
	<%
	} else {
	//세션값 있음 로그인이 된 상태
	%>
	<div id="login">
		<a href="../member/logout.jsp">Notice</a>
		<a href="../member/logout.jsp">logout</a>
		<a href="../member/logout.jsp">Order</a>
		<a href="../member/logout.jsp">My Accout</a>
		<a href="../member/logout.jsp">Cart</a>
	</div>
	<%
	}
	%>


</header>