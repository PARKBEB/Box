<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet" type="text/css" href="../../../../../css/board.css">
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="../../../../../js/board.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board list</title>
</head>
<body>
<div class="wrapper">
    <h1>List page</h1>
    <form name="searchForm" action="search" autocomplete="off">
    	<select name="type">
    		<option selected value="">---</option>
    		<option value="all">all</option>
    		<option value="id">id</option>
    		<option value="name">name</option>
    		<option value="rank">rank</option>
    		<option value="title">title</option>
    	</select>
    	<input type="text" name="keyword"></input>
    	<button>search</button>
    </form>
    <a href="<c:url value="insert" />" role="button" class="btn btn-outline-info">write</a>
    <input type="button" value="Del" onClick="deleteValue();">
	<form name="userForm">
	    <table>
	    	<thead>
	    		<tr>
	    			<th scope="col"><input id="allCheck" type="checkbox" name="allCheck" /></th>
	    			<th scope="col">NO</th>
	    			<th scope="col">ID</th>
	    			<th scope="col">NAME</th>
	    			<th scope="col">RANK</th>
	    			<th scope="col">TITLE</th>
	    			<th scope="col">HIT</th>
	    			<th scope="col">INDATE</th>
	    			<th scope="col">INTIME</th>
	    		</tr>
	    	</thead>
	    	<tbody>
	    		<c:forEach items="${list}" var="list">
	    		<tr class="trT">
	    			<td class="text_ct"><input name="RowCheck" type="checkbox" value="${list.no}"</td>
	    			<td class="text_ct">${list.rownum}&nbsp;</td>
	    			<td class="text_ct">${list.id}&nbsp;</td>
	    			<td class="text_ct"><a href= "${path}/detail?no=${list.no}">${list.name}&nbsp;</a></td>
	    			<td class="text_ct">${list.rank}&nbsp;</td>
	    			<td class="text_ct">${list.title}&nbsp;</td>
	    			<td class="text_ct">${list.hit}&nbsp;</td>
	    			<td class="text_ct"><fmt:formatDate value="${list.date}" type="date" pattern="yyyy/MM/dd" /></td>
	    			<td class="text_ct"><fmt:formatDate value="${list.time}" type="time" pattern="HH:mm:ss" /></td>						
	    		</tr>
	    		</c:forEach>
	    	</tbody>
	    </table>
    </form>
</div>
</body>
</html>
