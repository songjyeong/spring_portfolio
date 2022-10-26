<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<div>
<br>
<br>
<br>
<br>
	<h1>test_search</h1>
	<hr>
	
	
	<table border="1">
		<tr>
			<th>id</th>
			<th>name</th>
			<th>phone</th>
			<th>email</th>
			<th>status</th>
		</tr>
		<c:choose>
			<c:when test="${empty(testList) }">
				<tr align="center">
					<td colspan="7">검색된 회원정보가 없습니다.</td>				
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="test" items="${testList }">
					<tr align="center">
						<td width="100">${test.id }</td>				
						<td width="100">${test.name }</td>				
						<td width="150">${test.phone }</td>				
						<td width="250">${test.email }</td>				
						<td width="100">${test.status }</td>				
					</tr>	
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
	
	<br>
	이름<input type="text" id="name">
	아이디<input type="text" id="id">
	<button type="button" id="search">검색</button>
	<br>

	<div id="result">
		<p>아이디 : </p>
		<p>이름 : </p>
		<p>전화번호 : </p>
		<p>이메일 : </p>
		<p>상태코드 : </p>
	</div>
<!-- 	<p>아이디 : <span id="result_id"></span></p> -->
<!-- 	<p>이름 : <span id="result_name"></span></p> -->
<!-- 	<p>전화번호 : <span id="result_phone"></span></p> -->
<!-- 	<p>이메일 : <span id="result_email"></span></p> -->
<!-- 	<p>상태코드 : <span id="result_status"></span></p> -->
	

<br>
<br>
<br>
<br>
<br>
<br>
<br>
</div>


<script type="text/javascript">


$('#search').click(function() {
	var id=$("#id").val();
	var name=$("#name").val();
	var html="";

	if(id=="") {
		alert("insert id");
	}
	if(name=="") {
		alert("insert name");
	}
	alert("search");
	$.ajax({
		type: "post",
		url: "${pageContext.request.contextPath}/test/search_select",
		contentType: "application/json",
		data: JSON.stringify({"id":id, "name":name }),
		dataType: "json",
		success: function(data) {
			$('#result').html("");
			html+="<p>아이디 : "+data.id+"</p>";
			html+="<p>이름 : "+data.name+"</p>";
			html+="<p>전화번호 : "+data.email+"</p>";
			html+="<p>이메일 : "+data.phone+"</p>";
			html+="<p>상태코드 : "+data.status+"</p>";
			$('#result').html(html);
		},
			
		error: function(xhr) {
			alert("에러코드(search) = "+xhr.status);
		}
	});
});

</script>

 