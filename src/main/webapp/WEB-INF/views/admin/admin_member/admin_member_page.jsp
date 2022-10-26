<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    


<h1>회원 페이지</h1>


<div>

<table border="1">
	<tr>
		<th>아이디</th>
		<th>이름</th>
		<th>전화번호</th>
		<th>email</th>
		<th>권한</th>
		<th>변경</th>
		<th>수정</th>
	</tr>
	<c:choose>
		<c:when test="${empty(memberList) }">
			<tr align="center">
				<td colspan="7">검색된 회원정보가 없습니다.</td>				
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach var="member" items="${memberList }">
				<tr align="center">
					<td width="100">${member.id }</td>				
					<td width="100">${member.name }</td>				
					<td width="150">${member.phone }</td>				
					<td width="250">${member.email }</td>				
					<td width="100">${member.status }</td>
					<td><button type="button" onclick="modifyMember()">변경</button></td>
					<td><button type="button" onclick="removeMember()">삭제</button></td>	
				</tr>	
			</c:forEach>
		</c:otherwise>
	</c:choose>

</table>


<script type="text/javascript">

function modifyMember() {
	alert("변경");
}

function removeMember() {
	alert("정말 삭제하시겠습니까?");
}

</script>

</div>