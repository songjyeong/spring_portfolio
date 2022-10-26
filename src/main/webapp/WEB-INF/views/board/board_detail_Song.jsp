<%@page import="java.util.Properties"%>
<%@page import="xyz.itwill.whitehouse.dto.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.shgroup .sub_top_bg {
	background-image: url('${pageContext.request.contextPath }/img/sub_banner/sub_top_img1526025270.jpg')
}
</style>
<div id="container">
	<div id="shgroup" class="shgroup">
		<div class="sub_top_bg">
			<img src="${pageContext.request.contextPath }/img/sub_banner/sub_top_img1526025270.jpg" alt="">
		</div>
		<div class="sub_top_text_wrap">
			<div class="top_text_inner">
				<div class="top_text_cont">
					<p class="sub_top_title">커뮤니티</p>
				</div>
			</div>
		</div>
	</div>
	<div class="contents_wrap">
		<p class="sub_location">
			<span class="loc_home">Home</span> <span class="loc_arrow">&gt;</span>
			<span class="loc_text">커뮤니티</span> <span class="loc_arrow">&gt;</span>
			<span class="loc_text">공지사항</span>
		</p>

		<div class="sub_page_title_wrap">
			<h1 class="sub_page_title">공지사항</h1>
			<p class="sub_top_text">당신의 여행을 더욱 즐겁고 행복하게 만들어 드립니다.</p>
		</div>


		<div class="contents">

			<div class="row"
				style="margin-left: auto; margin-right: auto; margin-bottom: 0px; background-color: transparent;">
				<div style="margin: 0 auto; padding: 0px 0; max-width: 1000px;"
					class="white-space">
					<div style="margin-top: -0px; margin-left: -0px;">
						<div class="col d_col_6 t_col_6 m_col_6"
							style="padding-top: 0px; padding-left: 0px;">
							<div style="background-color: transparent;">
								<div style="word-break: break-all; margin: 0 0px 0px 0px;">
									<div class="scbd co-default">

										<!-- head -->
										
										<div class="head">
											
										</div>
										
										<!-- // head -->

										<!-- detail -->
										<div class="detail">
											<!-- detail head -->
											<div class="hgroup">
												<h1>${getboard.bTitle }</h1>
												<ul>
													<li>${getboard.bDate }</li>
													<li>조회수 : ${getboard.bCount }</li>
												</ul>
											</div>
											<!-- // detail head -->


											<!-- contents body -->
											<div class="conbody">${getboard.bContent }</div>
											<!-- // contents body -->
											<hr>
											
											<c:choose>
												<c:when test="${loginMember.status eq '9'}">
													<div class="sbtns">
														<a href="${pageContext.request.contextPath}/board_modify/bnum=${getboard.bNum}"> 
														<i class="sp-ico modify"></i>수정
														</a> 
														<a href="${pageContext.request.contextPath}/board_remove/${getboard.bNum}"> 
														<i class="sp-ico delete"></i>삭제
														</a>
													</div>
												</c:when>
											</c:choose>
											

											<%--여기 부분 history.back()사용 --%>
											<!-- buttons -->
											<div class="btngroup">
<%-- 												<a href="${pageContext.request.contextPath}/board" c class="ui-button"lass="ui-button">목록</a> --%>
													<a href="javascript:history.back();" class="ui-button">목록</a>
											</div>

											<!-- // buttons -->
										</div>
										<!-- // detail -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
