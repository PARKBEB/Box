<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,model.*" %>
<%
	request.setCharacterEncoding("utf-8");

	int bookno = Integer.parseInt(request.getParameter("bookno"));
	String bookname = request.getParameter("bookname");
	int amount = Integer.parseInt(request.getParameter("amount"));
	
	VO vo = new VO();
	vo.setBookno(bookno);
	vo.setBookname(bookname);
	vo.setAmount(amount);
		
	DAO dao =  DAO.getInstance();
	int row = dao.insertBook(vo);
	
	if(row == 1){
%>
	<script>
		alert("도서대출 정보를 등록합니다");
		location.href = "/book_list.jsp";
	</script>
<%
	}
%>