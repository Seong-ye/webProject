<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Zen+Antique&display=swap" rel="stylesheet">
	<%
	//세션값 가져오기
	String id = (String) session.getAttribute("id");
	if (id == null) {
		//세션값 없음 로그인이 안된 상태
	%>
	<div id="login">
		<a href="../member/login.jsp">login</a> | <a href="../member/join.jsp">join</a>
	</div>
	<%
	} else {
	//세션값 있음 로그인이 된 상태
	%>
	<div id="login"><%=id%>님 | <a href="../member/logout.jsp">logout</a>
		| <a href="../member/update.jsp">update</a>
	</div>
	<%
	}
	%>

	<div class="clear"></div>
	<!-- 로고들어가는 곳 -->
	<div id="logo">
		<a href="main.jsp">withourcoat</a>
	</div>
	<!-- 로고들어가는 곳 -->
	<nav id="top_menu">
		<ul>
			<li><a href="../main/main.jsp">Notice</a></li>
			<li><a href="../company/welcome.jsp">Login</a></li>
			<li><a href="#">Order</a></li>
			<li><a href="../center/notice.jsp">My Account</a></li>
			<li><a href="#">Cart</a></li>
		</ul>
	</nav>
</header>