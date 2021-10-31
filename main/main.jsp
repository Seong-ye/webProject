<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/front.css" rel="stylesheet" type="text/css">


</head>
<body>
	<div id="wrap">
		<!-- 헤더파일들어가는 곳 -->
		<jsp:include page="../inc/top.jsp"></jsp:include>
		<!-- 헤더파일들어가는 곳 -->
		
		<!-- 메인이미지 들어가는곳 -->
		
		<article id="main">
			<div class="twoBox">
				<div class="box1">
					<a href=""><img src="../images/member/main1.jpg" width="420" height="565" id = "main1" alt="main1"></a><br>
					<label>withourcoat</label>
				</div>
				<div class="box2">
					<a href=""><img src="../images/member/main2.jpg" width="420" height="565" id = "main2"alt="main1"></a><br>
					<label>market</label>
				</div>
			</div>
				<div class="box3">
					<a href=""><img src="../images/member/main3.jpg" width="420" height="565" id = "main3" alt="main1"></a><br>
					<label>notice</label>
				</div>
		</article>
		<!-- 메인이미지 들어가는곳 -->
		
		
		<!-- 푸터 들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
		<!-- 푸터 들어가는 곳 -->
	</div>
</body>
</html>