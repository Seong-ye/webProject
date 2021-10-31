<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Zen+Antique&display=swap" rel="stylesheet">

<script type="text/javascript">
	function check() {

		var form = document.form;

		if (!form.id.value) {
			alert("아이디를 입력해주세요.");
			history.back();
			form.id.focus();
			return false;
		}
		if (!form.pass.value) {
			alert("비밀번호를 입력해주세요.");
			history.back();
			form.pass.focus();
			return false;
		}
		if (!form.pass2.value) {
			alert("비밀번호를 다시 확인해주세요.");
			history.back();
			form.pass.focus();
			return false;
		}
		if (form.pass.value != form.pass2.value) {
			alrert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
		if (!form.name.value) {
			alert("이름을 입력해주세요");
			history.back();
			form.name.focus();
			return false;
		}
		if (!form.phone.value) {
			alert("전화번호를 입력해주세요.");
			history.back();
			form.phone.focus();
			return false;
		}
		if (!form.email.value) {
			alert("이메일을 입력하세요");
			history.back();
			form.email.focus();
			return false;
		}
	}

	function winopen() {
		var form = document.form;

		if (!form.id.value) {
			alert("아이디를 입력하세요.");
			form.id.focus();
		} else {
			window.open("joinIdCheck.jsp?userid=" + form.id.value, "",
					"width=500,height=300");
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

		<!-- 본문내용 -->
		
			<form action="joinPro.jsp" id="join" method="post" name="form"
				onsubmit="return check()">
				<fieldset>
					<label>아이디</label> <br>
					<input type="text" name="id" class="id"> <input
						type="button" value="Check Id" class="dup" onclick="winopen()"><br>
					<label>비밀번호</label><br> <input type="password" name="pass"><br>
					<label>비밀번호 확인</label><br> <input type="password" name="pass2"><br>
					<label>이름</label><br> <input type="text" name="name"><br>
					<label>휴대 전화</label><br> <input type="tel" name="phone"><br>
					<label>이메일</label><br> <input type="email" name="email"><br>
				</fieldset>
				<input type="submit" value="Join" class="submit">
			
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