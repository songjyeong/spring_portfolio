<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP</title>


<link href="${pageContext.request.contextPath }/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="${pageContext.request.contextPath }/admin/css/sb-admin-2.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

</head>


<body id="page-top">
<div id="wrapper">
<%-- 	<jsp:include page="admin_menu.jsp"/> --%>
	
<!-- 	<div id="content-wrapper" class="d-flex flex-column"> -->
<!-- 		<div id="content"> -->
<%-- 			<jsp:include page="admin_topbar.jsp"/> --%>
<%-- 			<jsp:include page="<%=contentPath %>"/>	 --%>
<!-- 		</div> -->
<!--    		<footer class="sticky-footer bg-white"> -->
<%-- 			<jsp:include page="admin_footer.jsp"/> --%>
<!-- 		</footer> -->
<!-- 	</div> -->



	<tiles:insertAttribute name="header"/>

	<div id="content-wrapper" class="d-flex flex-column">
		<div id="contents">
 			<tiles:insertAttribute name="topbar"/>
 			<tiles:insertAttribute name="content"/>
		</div>
		<footer class="sticky-footer bg-white">
			<tiles:insertAttribute name="footer"/>
		</footer>
	</div>
	
	
<!-- 	<p>hello admin</p> -->
	
</div>

<script src="${pageContext.request.contextPath }/admin/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="${pageContext.request.contextPath }/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="${pageContext.request.contextPath }/admin/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="${pageContext.request.contextPath }/admin/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="${pageContext.request.contextPath }/admin/js/demo/chart-area-demo.js"></script>
<script src="${pageContext.request.contextPath }/admin/js/demo/chart-pie-demo.js"></script>

<script src="${pageContext.request.contextPath }/admin/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath }/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="${pageContext.request.contextPath }/admin/js/demo/datatables-demo.js"></script>


</body>
</html>