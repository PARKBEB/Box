<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board list</title>
</head>
<body>
    <form name="userForm">
    	<h1>List page</h1>
    <table>
    	<thead>
    		<tr>
    			<th scope="col">NO</th>
    			<th scope="col">ID</th>
    			<th scope="col">NAME</th>
    			<th scope="col">RANK</th>
    			<th scope="col">INDATE</th>
    			<th scope="col">INTIME</th>
    		</tr>
    	</thead>
    	<tbody>
    		<c:forEach items="${list}" var="list">
    		<tr>
    			<td class="text_ct">${list.no}&nbsp;</td>
    			<td class="text_ct">${list.id}&nbsp;</td>
    			<td class="text_ct">${list.name}&nbsp;</td>
    			<td class="text_ct">${list.rank}&nbsp;</td>
    			<td class="text_ct"><fmt:formatDate value="${list.date}" type="date" pattern="yyyy/MM/dd" /></td>
    			<td class="text_ct"><fmt:formatDate value="${list.time}" type="time" pattern="HH:mm:ss" /></td>						
    		</tr>
    		</c:forEach>
    	</tbody>
    </table>
    </form>
</body>
</html>
