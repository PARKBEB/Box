<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../../../../../css/board.css">
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="../../../../../js/board.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board list</title>
</head>
<body>
<div class="wrapper">
    <h1>List</h1>
    <form name="searchForm" action="search" autocomplete="off" class="searchF">
    	<select name="type">
    		<option selected value="">---</option>
    		<option value="all">all</option>
    		<option value="id">id</option>
    		<option value="name">name</option>
    		<option value="rank">rank</option>
    		<option value="title">title</option>
    	</select>
    	<input type="text" name="keyword"></input>
    	<button class="btn">search</button>
    	<a href="<c:url value="insert" />" role="button" class="btn">write</a>
    	<input type="button" value="delete" onClick="deleteValue();" class="btn" />
    </form>
	<form name="userForm" class="userF">
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
	    			<td><input name="RowCheck" type="checkbox" value="${list.no}"</td>
	    			<td>${list.rownum}&nbsp;</td>
	    			<td>${list.id}&nbsp;</td>
	    			<td><a href= "${path}/detail?no=${list.no}">${list.name}&nbsp;</a></td>
	    			<td>${list.rank}&nbsp;</td>
	    			<td>${list.title}&nbsp;</td>
	    			<td>${list.hit}&nbsp;</td>
	    			<td><fmt:formatDate value="${list.date}" type="date" pattern="yyyy/MM/dd" /></td>
	    			<td><fmt:formatDate value="${list.time}" type="time" pattern="HH:mm:ss" /></td>						
	    		</tr>
	    		</c:forEach>
	    	</tbody>
	    </table>
    </form>
      <ul class="paging">
	    	<c:if test="${paging.prev}">
	    		<span><a href='<c:url value="/board?page=${paging.startPage-1}"/>'>pre</a></span>
	    	</c:if>
	    	<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
	    		<span><a href='<c:url value="/board?page=${num}"/>'>${num}</a></span>
	    	</c:forEach>
	    	<c:if test="${paging.next && paging.endPage>0}">
	    		<span><a href='<c:url value="/board?page=${paging.endPage+1}"/>'>next</a></span>
	    	</c:if>
	    </ul>
</div>
</body>
</html>
