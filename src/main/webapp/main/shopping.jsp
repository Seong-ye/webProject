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
		<!-- 헤더파일들어가는 곳 -->
		<jsp:include page="../inc/top.jsp"></jsp:include>
		<!-- 헤더파일들어가는 곳 -->
	
		<!-- 왼쪽메뉴 -->
		<nav id="sub_menu">
			<ul>
				<li><a href="../main/main.jsp">withourcoat</a></li>
				<li><a href="../main/shopping.jsp">market</a></li>
				<li><a href="../main/shopping.jsp">sale</a></li>
			</ul>
		</nav>
		<!-- 왼쪽메뉴 -->
		<!-- 메인이미지 들어가는곳 -->

		<article id ="shopArticle">
			<table id="shopping">
				<tr><td><a href="detail.jsp"><img src="../images/shopping/1.jpg" alt="image" ></a></td>
				<td><img src="../images/shopping/16.jpg" alt="image"></td>
				<td><img src="../images/shopping/17.jpg" alt="image"></td>
				</tr>
				<tr><td><img src="../images/shopping/4.jpg" alt="image"></td>
				<td><img src="../images/shopping/5.jpg" alt="image"></td>
				<td><img src="../images/shopping/6.jpg" alt="image"></td>
				</tr>
				<tr><td><img src="../images/shopping/7.jpg" alt="image"></td>
				<td><img src="../images/shopping/8.jpg" alt="image"></td>
				<td><img src="../images/shopping/9.jpg" alt="image"></td>
				</tr>
				<tr><td><img src="../images/shopping/10.jpg" alt="image"></td>
				<td><img src="../images/shopping/11.jpg" alt="image"></td>
				<td><img src="../images/shopping/12.jpg" alt="image"></td>
				</tr>
				</tr>
				<tr><td><img src="../images/shopping/13.jpg" alt="image"></td>
				<td><img src="../images/shopping/14.jpg" alt="image"></td>
				<td><img src="../images/shopping/15.jpg" alt="image"></td>
				</tr>
			</table>
		</article>
		<!-- 메인이미지 들어가는곳 -->


		<!-- 푸터 들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
		<!-- 푸터 들어가는 곳 -->
	</div>
</body>
</html>