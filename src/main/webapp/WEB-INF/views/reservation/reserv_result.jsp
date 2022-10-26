<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.shgroup .sub_top_bg {
	background-image:
		url('${pageContext.request.contextPath }/img/sub_banner/sub_top_img1526025270.jpg')
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<div id="shgroup" class="shgroup">
		<div class="sub_top_bg">
			<img src="${pageContext.request.contextPath }/img/sub_banner/sub_top_img1526025270.jpg" alt="">
		</div>
		<div class="sub_top_text_wrap">
			<div class="top_text_inner">
				<div class="top_text_cont">
					<p class="sub_top_title">예약 조회 결과</p>
				</div>
			</div>
		</div>
		</div>
		

		<div class="contents_wrap">
			<p class="sub_location">
				<span class="loc_home">Home</span> <span class="loc_arrow">&gt;</span>
				<span class="loc_text">예약 조회 결과</span>
			</p>

			<div class="sub_page_title_wrap">
				<h1 class="sub_page_title">예약 조회 결과</h1>
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





										<div class="glores-A-pen-reserve">
											<section class="glores-A-step4">
												<section>
													<h4 class="glores-A-title">예약한 객실</h4>
													<table class="glores-A-table">
														<caption>예약 객실 목록</caption>

														<thead>
															<tr>
																<th>예약일자</th>
																<th class="glores-A-tablet-pc">퇴실일자</th>
																<th>객실명</th>
																<th>인원</th>
																<th>합계</th>
															</tr>
														</thead>

														<tfoot>
															<tr>
																<th>합계</th>
																<td class="glores-A-tablet-pc">&nbsp;</td>
																<td>&nbsp;</td>
																<td>${hC}<span>명</span></td>
																<td><strong>${price}</strong></td>
															</tr>
														</tfoot>
														<tbody>
															<tr>
																<td>${checkIn }</td>
																<td class="glores-A-tablet-pc">${checkOut}</td>
																<td>${room}</td>
																<td>${hC}<span>명</span></td>
																<td class="glores-A-tablet-pc">${price}</td>
															</tr>
														</tbody>
													</table>
												</section>


												<section>
													<h4 class="glores-A-title">총 요금 안내</h4>
													<table class="glores-A-table glores-A-row">
														<tbody>
															<tr>
																<th>숙박 기간</th>
																<td>${checkIn} ~ ${checkOut}</td>
															</tr>
															<tr>
																<th>숙박 요금</th>
																<td>${price }</td>
															</tr>
															<tr>
																<th>총 금액</th>
																<td><strong class="glores-A-color-red">${price}</strong></td>
															</tr>
														</tbody>
													</table>
												</section>

												<section>
													<h4 class="glores-A-title">예약자 정보</h4>
													<table class="glores-A-table glores-A-row">
														<tbody>
															<tr>
																<th>예약자명</th>
																<td>${name}</td>
															</tr>
															<tr>
																<th>연락처</th>
																<td>${phone}</td>
															</tr>
															<tr>
																<th>이메일</th>
																<td>${email}</td>
															</tr>
															<tr>
																<th>결제 방법</th>
																<td>온라인 결제 <br>입금계좌 : sample : 000-00-000000
																	my name<br>입금자 명 : ${name}
																</td>
															</tr>
															<tr>
																<th>결제 상태</th>
																<td><font color='#0066FF'><b>${statue}</b></font></td>
															</tr>
														</tbody>
													</table>
												</section>

												<div class="glores-A-btn-wrap">
													<button type="button"
														class="glores-A-btn-type1 glores-A-big glores-A-highlight">프린트</button>
												</div>
											</section>
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
</body>
</html>