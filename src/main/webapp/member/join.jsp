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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
	function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
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
					<input type="text" name="id" class="id"> 
					<input type="button" value="Check Id" class="dup" onclick="winopen()"><br>
					<label>비밀번호</label><br> <input type="password" name="pass"><br>
					<label>비밀번호 확인</label><br> <input type="password" name="pass2"><br>
					<label>이름</label><br> <input type="text" name="name"><br>
					<label>휴대 전화</label><br> <input type="tel" name="phone"><br>
					<label>주소</label>
					<input type="text" id="sample4_postcode" placeholder="우편번호" >
					<input type="button" onclick="sample4_execDaumPostcode()" class ="addressBtn" value="우편번호 찾기"><br>
					<input type="text" id="sample4_roadAddress" placeholder="도로명주소" name="address">
					<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
					<span id="guide" style="color:#999;display:none"></span>
					<input type="text" id="sample4_detailAddress" placeholder="상세주소" >
					<input type="text" id="sample4_extraAddress" placeholder="참고항목" >
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