<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<content tag="local_script1">
	<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="resources/css/datatables.min.css">
	<script src = "resources/js/jquery-1.12.3.js"></script>
	<script src = "resources/js/jquery.dataTables.min.js"></script>
</content>

</head>
<content tag="local_script2">
<script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
		$("#allchk").click(function(){
			if($(this).is(':checked')){
				$("input[name=unitchk]").prop("checked",true);
			}else{
				$("input[name=unitchk]").prop("checked",false);
			}
		});
	   $("#example_filter").append("<button id='writeboard' align='right'>글쓰기</button>");
	   $("#example_filter").append("<button id='selectdel' >선택삭제</button>");
	   $('#selectdel').click(function(){
		   var checked = $("input[name=unitchk]:checked").length;
		   var saveids = new Array();
		   if(checked ==0){
			   alert("삭제할 할목을 체크하세요!");
			   return;
		   }else{
			   var returnValue = confirm("삭제 하시겠습니까?");
			   if(returnValue){
			   $('#unitchk:checked').each(function(index){
				   saveids[index] = $(this).val();
			   });
			   var url = "memberSelectDelete?saveids="+saveids;
			   $(location).attr('href',url);
		       }else{
		    	   return;
		       }
		   }
	   });
	} );
</script>
</content>
<body>
	<br><br><br><br><br><br><br>
	<div class="container" style="bgcolor:#fff">
	<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
            <tr>
            	<th>No.</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>조회</th>
                <th style="text-align:center !important"><input type="checkbox" id="allchk"/></th>
            </tr>
        </thead>
        <tfoot>
            <tr>
            	<th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
        </tfoot>
         <tbody>
	            <tr>
	            	<td>123</td>
	               	<td> 456</td>
	                <td>789</td>
	                <td>qweaszxc</td>
	                <td>qweaszxc</td>
	                <td style="text-align:center !important"><input type="checkbox" name="unitchk" id="unitchk" value="${member.id}"/></td>
	            </tr>
        </tbody>
<!--         <tbody> -->
<%--         	<c:forEach var="member" items="${members}"> --%>
<!-- 	            <tr> -->
<%-- 	            	<td>${member.photo}</td> --%>
<%-- 	               	<td> <a href="memberUpdateForm?id=${member.id}">${member.id}</a></td> --%>
<%-- 	                <td>${member.name}</td> --%>
<%-- 	                <td>${member.password}</td> --%>
<%-- 	                <td>${member.phone1}-${member.phone2}-${member.phone3}</td> --%>
<%-- 	                <td>${member.addr1}</td> --%>
<%-- 	                <td style="text-align:center !important"><input type="checkbox" name="unitchk" id="unitchk" value="${member.id}"/></td> --%>
<!-- 	            </tr> -->
<%--             </c:forEach> --%>
<!--         </tbody> -->
    </table>
    </div>
    <br><br><br><br><br><br><br>
</body>
</html>