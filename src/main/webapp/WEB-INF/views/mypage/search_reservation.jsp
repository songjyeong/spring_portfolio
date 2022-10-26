<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.shgroup .sub_top_bg {
	background-image:
		url('${pageContext.request.contextPath }/img/sub_banner/sub_top_img1526025270.jpg')
}
</style>

<div id="container">

	<div id="shgroup" class="shgroup">

		<div class="sub_top_bg">

			<img
				src="${pageContext.request.contextPath }/img/sub_banner/sub_top_img1526025270.jpg"
				alt="">


		</div>

		<div class="sub_top_text_wrap">

			<div class="top_text_inner">

				<div class="top_text_cont">

					<p class="sub_top_title">마이페이지</p>

				</div>

			</div>

		</div>

	</div>

	<div class="contents_wrap">


		<p class="sub_location">

			<span class="loc_home">Home</span> <span class="loc_arrow">&gt;</span>

			<span class="loc_text">MyPage</span> <span class="loc_arrow">&gt;</span>

			<span class="loc_text">home</span>

		</p>

		<div class="sub_page_title_wrap">

			<h1 class="sub_page_title">회원정보변경</h1>

			<p class="sub_top_text">당신의 여행을 더욱 즐겁고 행복하게 만들어 드립니다.</p>

		</div>

		<div class="snb_wrap">
			<div class="snb">
				<div>
					<ul class="dep1">
						<li ><a href="${pageContext.request.contextPath }/view"><span>회원정보</span></a></li>
						<li ><a href="${pageContext.request.contextPath }/reserv"><span>예약 내역</span></a></li>
						<li ><a href="${pageContext.request.contextPath }/modify"><span>회원정보변경</span></a></li>
						<li ><a href="${pageContext.request.contextPath }/remove"><span>회원탈퇴</span></a></li>
					</ul>
				</div>
				<i class="prev"></i> <i class="next"></i>
			</div>
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

									<!-- 예약이 없을 경우 -->
									<c:choose>
										<c:when test="${empty(reservationList)}">		
											<div class="glores-A-pen-reserve">
												<section class="glores-A-reserve-list">
													<p class="glores-A-page">총 0건, 1/0 페이지</p>
		
													<table class="glores-A-table">
														<caption>펜션 예약현황</caption>
		
														<thead>
															<th class="glores-A-tablet-pc">No</th>
															<th>숙박 기간</th>
															
															<th>결제 상태</th>
															<th class="glores-A-tablet-pc">인원</th>
															<th>결제 금액</th>
															<th class="glores-A-tablet-pc">주문일</th>
														</thead>
		
														<tbody>
															<tr>
																<td colspan="7" class="glores-A-empty">예약 내역이 없습니다.</td>
															</tr>
														</tbody>
													</table>
		
													<div class="glores-A-paginate">
														<div class='ui-pagenate'></div>
													</div>
												</section>
											</div>
										</c:when>
										<c:otherwise>
											<!-- 예약이 있을 경우 -->
											<div class="glores-A-pen-reserve">
												<section class="glores-A-reserve-list">
													<p class="glores-A-page">총 1건, 1/1 페이지</p>

													<table class="glores-A-table">
														<caption>펜션 예약현황</caption>

														<thead>
															<th class="glores-A-tablet-pc">No</th>
															<th>숙박 기간</th>
															<th class="glores-A-tablet-pc">결제 방식</th>
															<th>결제 상태</th>
															<th class="glores-A-tablet-pc">인원</th>
															<th>결제 금액</th>
															<th class="glores-A-tablet-pc">주문일</th>
														</thead>
														<tbody>
														<c:forEach var="reservList" items="${reservationList}">
															<tr>
																<td class="glores-A-tablet-pc">1</td>
																<td><a
																	href="pension_app_view.htm?info_idx=613044">20220830
																		~ 20220831</a></td>
																
																<td>입금대기</td>
																<td class="glores-A-tablet-pc"><span>${reservList.rHeadCount }</span></td>
																<td>${reservList.rPrice }</td>
																<td class="glores-A-tablet-pc">2022-08-29</td>
															</tr>
														</c:forEach>
														</tbody>
													</table>

													<div class="glores-A-paginate">
														<div class='ui-pagenate'>
															<strong>1</strong>
														</div>
													</div>
												</section>
											</div>
										</c:otherwise>
									</c:choose>



															
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
</div>



</div>

</div>


</div>
</div>
</div>
</div>
