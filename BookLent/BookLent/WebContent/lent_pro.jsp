<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,model.*" %>
<%
	request.setCharacterEncoding("utf-8");

	int lentno = Integer.parseInt(request.getParameter("lentno"));
	int userno = Integer.parseInt(request.getParameter("userno"));
	int bookno = Integer.parseInt(request.getParameter("bookno"));
	String outdate = request.getParameter("outdate");
	
	VO vo = new VO();
	vo.setLentno(lentno);
	vo.setUserno(userno);
	vo.setBookno(bookno);
	vo.setOutdate(outdate);
	
	

	
	DAO dao =  DAO.getInstance();
	int row = dao.insertLent(vo);
	
	if(row == 1){
%>
	<script>
		alert("도서대출 정보를 등록합니다");
		location.href = "/lent_list.jsp";
	</script>
<%
	}
%>