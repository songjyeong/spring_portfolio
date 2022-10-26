<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    


<h1>제품 페이지</h1>

<div>
<table border="1">
	<tr>
		<th>no</th>
		<th>이미지</th>
		<th>객실이름</th>
		<th>수용인원</th>
		<th>관리</th>
	</tr>
	<c:choose>
		<c:when test="${empty(productList) }">
			<tr align="center">
				<td colspan="7">검색된 제품정보가 없습니다.</td>				
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach var="product" items="${productList }">
			
				
			
				<tr align="center">
					<td width="100">${product.pNum }</td>				
					<td width="200">
						<img src="${pageContext.request.contextPath }/img/preview/${product.pImage }" width="100%">
						
					</td>
					<td width="100">${product.pName }</td>				
					<td width="150"> ${product.pMincount } ~ ${product.pMaxcount }</td>				
					<td>
						<button onclick="modifyProduct()">객실정보변경</button>
						<button onclick="modifyProductImage('${product.pNum}')">객실사진변경</button>
						<button onclick="removeMember()">삭제</button>
					</td>	
				</tr>	
			</c:forEach>
		</c:otherwise>
	</c:choose>

</table>



<script type="text/javascript">

function modifyProductImage(num) {
	window.open(
			"${pageContext.request.contextPath }/admin/admin_product/image_view/"+num, 
			"modifyProductImage", 
			"width=500, height=400, left=100, top=50"
			);
}

</script>


</div>