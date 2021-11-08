<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="Board.BoardDAO"%>
<%@page import="Board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/updatePro.jsp</title>
</head>
<body>
	<%
	// request 한글처리
	request.setCharacterEncoding("utf-8");
	
	//업로드
	String uploadPath = request.getRealPath("/upload");
	int maxSize = 10*1024*1024;
	MultipartRequest multi = new MultipartRequest(request, uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());
	
	// multi num name pass subject content 파라미터 가져오기
	int num = Integer.parseInt(multi.getParameter("num"));
	String name = multi.getParameter("name");
	String pass = multi.getParameter("pass");
	String subject = multi.getParameter("subject");
	String content = multi.getParameter("content");
	String file = multi.getFilesystemName("file");
	//첨부파일이 없으면
	if(file==null){
		//기존파일이름 가져오기
		file = multi.getParameter("oldfile");
	}
	// 수정할 정보를 바구니(BoardDTO) 저장
	BoardDTO boardDTO = new BoardDTO();
	boardDTO.setNum(num);
	boardDTO.setName(name);
	boardDTO.setPass(pass);
	boardDTO.setSubject(subject);
	boardDTO.setContent(content);
	//file 추가
	boardDTO.setFile(file);
	// 디비 객체생성
	BoardDAO boardDAO = new BoardDAO();
	
	boardDAO.fupdateBoard(boardDTO);
	//메서드 정의 BoardDTO numCheck(int num,String pass)
	// 메서드 호출 BoardDTO boardDTO2= numCheck(num,pass)
	BoardDTO boardDTO2 = boardDAO.numCheck(num, pass);
	// 일치하면 boardDTO2 주소값 , 틀리면 boardDTO2 null 값 
	
		response.sendRedirect("../fcenter/fnotice.jsp");
	
	%>
</body>
</html>