<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

	<a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath }/admin">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">ADMIN</div>
    </a>

	<hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Addons
    </div>
    
    <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/admin/admin_member">
            <i class="fas fa-fw fa-table"></i>
            <span>회원관리</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/admin/admin_product">
            <i class="fas fa-fw fa-table"></i>
            <span>제품관리</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/admin/admin_reserv">
            <i class="fas fa-fw fa-table"></i>
            <span>예약관리</span></a>
    </li>
<!--     <li class="nav-item"> -->
<!--         <a class="nav-link" href="admin.jsp?workgroup=admin_notice&work=admin_notice_page"> -->
<!--             <i class="fas fa-fw fa-table"></i> -->
<!--             <span>공지사항 관리</span></a> -->
<!--     </li> -->
<!-- 	<li class="nav-item"> -->
<!--         <a class="nav-link" href="admin.jsp?workgroup=admin_qna&work=admin_qna_page"> -->
<!--             <i class="fas fa-fw fa-table"></i> -->
<!--             <span>Q&amp;A 관리</span></a> -->
<!--     </li> -->
<!--     <li class="nav-item"> -->
<%--         <a class="nav-link" href="${pageContext.request.contextPath }/admin/admin_review"> --%>
<!--             <i class="fas fa-fw fa-table"></i> -->
<!--             <span>리뷰관리</span></a> -->
<!--     </li> -->
    
    

    <hr class="sidebar-divider d-none d-md-block">

    <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }"  style="text-align: center; ">
            <span style="font-size:large;">메인 페이지</span>
		</a>
    </li>

    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>
