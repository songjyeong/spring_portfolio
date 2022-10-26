<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<div>

<img src="${pageContext.request.contextPath }/img/preview/${product.pImage }" width="400" id="imgId">

  <form id="uploadForm">
	<table>
		<tr>
			<td>이름</td>
			<td><input type="hidden" id="productNum" name="productNum" value="${product.pNum }"></td>
		</tr>
		<tr>
			<td>파일</td>
			<td><input type="file" id="uploadFile" name="uploadFile"></td>
		</tr>
		<tr>
			<td colspan="2"><button type="button" id="btnSubmit" onclick="upload()">업로드</button></td>
		</tr>
	</table>
</form>


<script type="text/javascript">

function upload() {
	alert("sdafsafd");
	var num="";
	var image="";
	
	var formData = new FormData($('#uploadForm')[0]);

	$.ajax({
		type: "post",          
        enctype: 'multipart/form-data',  
        url: "${pageContext.request.contextPath }/admin/admin_product/product_image_upload",        
        data:  formData,          
        processData: false,    
        contentType: false, 
        cache : false,
        success: function (data) { 
        	alert("complete");           


			num = $("#productNum").val();
			image= data;

			$.ajax({
				type: "post",
				url: "${pageContext.request.contextPath }/admin/admin_product/product_image_modify",        
				contentType: "application/json",
				data: JSON.stringify({"pNum":num, "pImage":image}),
				dataType: "text",
				success : function(text) {
		        	alert("complete_modify");  
		        	$("#imgId").attr("src","${pageContext.request.contextPath }/img/preview/"+image);
				},
				error : function(xhr) {
					alert(xhr.status);
				}
			});

			alert("sdfsdfasdf");
        },          
        error: function (e) {  
        	alert("fail");
//         	$("#btnSubmit").prop("disabled", false);      
		}  
	});

	
}

</script>


</div>