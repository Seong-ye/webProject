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
<!-- 헤더가 들어가는 곳 -->
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- 헤더가 들어가는 곳 -->

<!-- 본문 들어가는 곳 -->
<!-- 내용 -->
<article>

<figure class="ceo"><img src="" width="196" height="226" 
alt="CEO"><figcaption>Fun Web CEO Michael</figcaption>
</figure>

<label>About this site</label>
<p>
Join Page<br>
- 회원들이 회원가입이 가능하도록 구현하였고, 특히 ID 입력 시 중복확인 창이 뜨도록 구현<br>
- 다음 API를 이용하여 우편번호 검색 구현<br>
Login Page<br>
- 폼에 입력된 ID, Password와 DB에 저장된 ID, Password를 SELECT 구문으로 가져와서 비교한 뒤 로그인
되도록 구현<br>
My Account Page<br>
- 가입 시 입력한 본인 정보를 조회할 수 있도록 구성<br>
- 본인 정보를 수정하고자 할 시 수정할 수 있도록 구성<br>
- 본인 정보를 삭제하고자 할 시 삭제할 수 있도록 구성<br>
Board Page<br>
- 게시 글 리스트를 최신 순으로 웹페이지에 디스플레이<br>
- 게시 글 조회수 자동 업데이트 되도록 구현<br>
- 글쓰기는 로그인 시 가능, 로그인하지 않으면 버튼 자체를 보이지 않도록 구성<br>
- 글삭제, 글수정 시 본인만 수정할 수 있도록 제어<br>
- 게시판에 파일을 첨부하고 다운로드 할 수 있도록 구현<br>
</p>



</article>
<!-- 내용 -->
<!-- 본문 들어가는 곳 -->
<div class="clear"></div>
<!-- 푸터 들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- 푸터 들어가는 곳 -->
</div>
</body>
</html>



