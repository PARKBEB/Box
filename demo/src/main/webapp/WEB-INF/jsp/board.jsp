<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
		$(function(){
			var chkObj = document.getElementsByName("RowCheck");
			var rowCnt = chkObj.length;
			
			$("input[name='allCheck']").click(function(){
				var chk_listArr = $("input[name='RowCheck']");
				for(var i=0; i < chk_listArr.length; i++){
					chk_listArr[i].checked = this.checked;
				}
			});
			$("input[name='RowCheck']").click(function(){
				if($("input[name='RowCheck']:checked").length == rowCnt){
					$("input[name='allCheck']")[0].checked = true;
				}
				else{
					$("input[name='allCheck']")[0].checked = false;
				}
			});
		});
		function deleteValue(){
			var url ="delete";
			var valueArr = new Array();
			var list = $("input[name='RowCheck']");
			for(var i = 0; i < list.length; i++){
				if(list[i].checked){
					valueArr.push(list[i].value);
				}
			}
			if(valueArr.length == 0){
				alert("선택된 글이 없습니다");
			}
			else{
				var chk = confirm("정말 삭제하시겠습니까?");
				$.ajax({
					url : url,
					type : 'POST',
					traditional : true,
					data : {
						valueArr : valueArr
					},
					success : function(jdata){
						if(jdata = 1){
							alert("삭제성공");
							location.replace("board");
						}
						else{
							alert("삭제실패");
						}
					}
				});
			}
		}
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board list</title>
</head>
<body>
    <h1>List page</h1>
    <form name="searchForm" action="search" autocomplete="off">
    	<select name="type">
    		<option selected value="">---</option>
    		<option value="all">all</option>
    		<option value="id">id</option>
    		<option value="name">name</option>
    		<option value="rank">rank</option>
    	</select>
    	<input type="text" name="keyword"></input>
    	<button>search</button>
    </form>
	<form name="userForm">
	    <table>
	    	<thead>
	    		<tr>
	    			<th scope="col"><input id="allCheck" type="checkbox" name="allCheck" /></th>
	    			<th scope="col">NO</th>
	    			<th scope="col">ID</th>
	    			<th scope="col">NAME</th>
	    			<th scope="col">RANK</th>
	    			<th scope="col">HIT</th>
	    			<th scope="col">INDATE</th>
	    			<th scope="col">INTIME</th>
	    		</tr>
	    	</thead>
	    	<tbody>
	    		<c:forEach items="${list}" var="list">
	    		<tr>
	    			<td class="text_ct"><input name="RowCheck" type="checkbox" value="${list.no}"</td>
	    			<td class="text_ct">${list.rownum}&nbsp;</td>
	    			<td class="text_ct">${list.id}&nbsp;</td>
	    			<td class="text_ct"><a href= "${path}/detail?no=${list.no}">${list.name}&nbsp;</a></td>
	    			<td class="text_ct">${list.rank}&nbsp;</td>
	    			<td class="text_ct">${list.hit}&nbsp;</td>
	    			<td class="text_ct"><fmt:formatDate value="${list.date}" type="date" pattern="yyyy/MM/dd" /></td>
	    			<td class="text_ct"><fmt:formatDate value="${list.time}" type="time" pattern="HH:mm:ss" /></td>						
	    		</tr>
	    		</c:forEach>
	    	</tbody>
	    </table>
    	<a href="<c:url value="insert" />" role="button" class="btn btn-outline-info">write</a>
    	<input type="button" value="Del" onClick="deleteValue();">
    </form>
</body>
</html>
