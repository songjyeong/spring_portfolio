<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<%-- <link rel="stylesheet" href="<c:url value="/css/head_basic.css"/>" type="text/css" media="all" > --%>
<%-- <link rel="stylesheet" href="<c:url value="/css/head_logout.css"/>" type="text/css" media="all" > --%>


<%-- <link rel="stylesheet" type="text/css" href="<c:url value="/css/pc_skin_873_619.css"/>" > --%>
<%-- <link rel="stylesheet" type="text/css" href="<c:url value="/css/grid.css"/>" > --%>
<%-- <link rel="stylesheet" type="text/css" href="<c:url value="/css/pc_2819.css"/>" > --%>
<%-- <link rel="stylesheet" type="text/css" href="<c:url value="/css/carousel.css"/>" > --%>
<%-- <link rel="stylesheet" type="text/css" href="<c:url value="/css/reset_1.2.css"/>" > --%>
<%-- <link rel="stylesheet" type="text/css" href="<c:url value="/css/notosans.css"/>" > --%>

<!-- 공지사항 게시판 검색, 글작성 버튼 CSS -->
<%-- <link rel="stylesheet" type="text/css" href="<c:url value="/css/rwdclear_pc.css"/>" > --%>
<%-- <link rel="stylesheet" type="text/css" href="<c:url value="/css/rwdclear.css"/>" > --%>


<%-- <script type="text/javascript" src="<c:url value="/js/all_default5059.js?v=20"/>"></script> --%>
<%-- <script type="text/javascript" src="<c:url value="/js/goods_category_all.js"/>"></script> --%>
<%-- <script type="text/javascript" src="<c:url value="/js/board_list.js"/>"></script> --%>
<%-- <script type="text/javascript" src="<c:url value="/js/all_default2.js"/>"></script> --%>
<%-- <script type="text/javascript" src="<c:url value="/js/google_map5055.js?ver=8"/>"></script> --%>
<%-- <script type="text/javascript" src="<c:url value="/js/load_frame.js"/>"></script> --%>
<%-- <script type="text/javascript" src="<c:url value="/js/head_logout.js"/>"></script> --%>

<%-- <script type="text/javascript" src="<c:url value="/js/jquery/1.11.3/jquery.min.js"/>"></script> --%>
<%-- <script type="text/javascript" src="<c:url value="/js/pc_skin_top_873_619.js"/>"></script> --%>
<%-- <script type="text/javascript" src="<c:url value="/js/modernizr.custom.media.query.js"/>"></script> --%>
<%-- <script type="text/javascript" src="<c:url value="/js//pc_2819_top.js"/>"></script> --%>
<%-- <script type="text/javascript" src="<c:url value="/js/owl.carousel.min.js"/>"></script> --%>






<link rel="stylesheet" href="${pageContext.request.contextPath }/css/head_basic.css" type="text/css" media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/head_logout.css" type="text/css" media="all" />

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/pc_skin_873_619.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/grid.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/pc_2819.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/owl.carousel.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/reset_1.2.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/notosans.css" />

<!-- 공지사항 게시판 검색, 글작성 버튼 CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/rwdclear_pc.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/rwdclear.css" />

<!-- 예약하기 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/pc_2828.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/reset_1.2.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/global_responsive_a_home_mobile.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/global_responsive_a_home_pc.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/global_responsive_a_home_tablet.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/global_responsive_a_pension_mobile.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/global_responsive_a_pension_pc.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/global_responsive_a_pension_tablet.css" />

<!-- 캘린더 -->
<link href="${pageContext.request.contextPath }/css/calender.css" rel='stylesheet' />
<script src="${pageContext.request.contextPath }/js/calender.js"></script>
<script src="${pageContext.request.contextPath }/js/ko.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/all_default5059.js?v=20"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/goods_category_all.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/board_list.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/all_default2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/google_map5055.js?ver=8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/load_frame.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/head_logout.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/pc_skin_top_873_619.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/modernizr.custom.media.query.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/pc_2819_top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/owl.carousel.min.js"></script>





<!-- <link rel="stylesheet" href="css/head_basic.css" type="text/css" media="all" /> -->
<!-- <link rel="stylesheet" href="css/head_logout.css" type="text/css" media="all" /> -->

<!-- <link rel="stylesheet" type="text/css" href="css/pc_skin_873_619.css" /> -->
<!-- <link rel="stylesheet" type="text/css" href="css/grid.css" /> -->
<!-- <link rel="stylesheet" type="text/css" href="css/pc_2819.css" /> -->
<!-- <link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css" /> -->
<!-- <link rel="stylesheet" type="text/css" href="css/reset_1.2.css" /> -->
<!-- <link rel="stylesheet" type="text/css" href="css/notosans.css" /> -->

<!-- 공지사항 게시판 검색, 글작성 버튼 CSS -->
<!-- <link rel="stylesheet" type="text/css" href="css/rwdclear_pc.css" /> -->
<!-- <link rel="stylesheet" type="text/css" href="css/rwdclear.css" /> -->


<!-- <script type="text/javascript" src="js/all_default5059.js?v=20"></script> -->
<!-- <script type="text/javascript" src="js/goods_category_all.js"></script> -->
<!-- <script type="text/javascript" src="js/board_list.js"></script> -->
<!-- <script type="text/javascript" src="js/all_default2.js"></script> -->
<!-- <script type="text/javascript" src="js/google_map5055.js?ver=8"></script> -->
<!-- <script type="text/javascript" src="js/load_frame.js"></script> -->
<!-- <script type="text/javascript" src="js/head_logout.js"></script> -->

<!-- <script type="text/javascript" src="js/jquery/1.11.3/jquery.min.js"></script> -->
<!-- <script type="text/javascript" src="js/pc_skin_top_873_619.js"></script> -->
<!-- <script type="text/javascript" src="js/modernizr.custom.media.query.js"></script> -->
<!-- <script type="text/javascript" src="js/pc_2819_top.js"></script> -->
<!-- <script type="text/javascript" src="js/owl.carousel.min.js"></script> -->




<%-- <link rel=stylesheet href="<c:url value="/css/**"/>" type="text/css"> --%>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 	<div id="viewport"> -->
<%-- 	<% if(workgroup.equals("main") && work.equals("main_content")) { %> --%>
<!-- 		<div id="main_view"> -->
<%-- 	<% } else { %> --%>
<!-- 		<div id="sub_view"> -->
<%-- 	<% } %> --%>
<%-- 			<jsp:include page="header.jsp"></jsp:include> --%>
<%-- 			<jsp:include page="<%=contentPath %>"></jsp:include> --%>
<%-- 			<jsp:include page="footer.jsp"></jsp:include> --%>
<!-- 		</div> -->
<!-- 	</div> -->

<div id="viewport">
<%-- 	<p>a ${pageContext.request.contextPath }</p> --%>
<%-- 	<p>a ${requestScope['javax.servlet.forward.servlet_path'] }</p> --%>
<%-- 	<p>a ${requestScope['javax.servlet.forward.request_uri'] }</p> --%>

<c:choose>
	<c:when test="${requestScope['javax.servlet.forward.servlet_path'] eq '/' }">
		<div id="main_view">
	</c:when>
	<c:otherwise>
		<div id="sub_view">
	</c:otherwise>
</c:choose>
			<tiles:insertAttribute name="header"/>
			<tiles:insertAttribute name="content"/>
			<tiles:insertAttribute name="footer"/>
		</div>
</div>


</body>
</html>