<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,model.*" %>
<%
	request.setCharacterEncoding("utf-8");

	VO vo = new VO();
	vo.setIndate(request.getParameter("indate"));
	vo.setUserno(Integer.parseInt(request.getParameter("userno")));
	vo.setBookno(Integer.parseInt(request.getParameter("bookno")));
	
	DAO dao =  DAO.getInstance();
	int row = dao.In(vo);
	
	if(row == 1){
%>
	<script>
		alert("반납됐습니다.");
		location.href = "/book_list.jsp";
	</script>
<%
	}else{
%>
	<script>
		alert("일치하는 정보가 없습니다.");
		location.href = "/return.jsp";
	</script>
<%
	}
%>