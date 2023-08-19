<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,model.*" %>
<%
	request.setCharacterEncoding("utf-8");

	int userno = Integer.parseInt(request.getParameter("userno"));
	String name = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
	String birthday =request.getParameter("birthday");
	String regdate = request.getParameter("regdate");
	
	VO vo = new VO();

	vo.setUserno(userno);
	vo.setName(name);
	vo.setPhone1(phone1);
	vo.setPhone2(phone2);
	vo.setPhone3(phone3);
	vo.setGender(gender);
	vo.setBirthday(birthday);
	vo.setRegdate(regdate);
	
	
	DAO dao =  DAO.getInstance();
	int row = dao.modifyUpdate(vo);
	
	if(row == 1){
%>
	<script>
		alert("회원정보를 수정합니다");
		location.href = "/list.jsp";
	</script>
<%
	}
%>