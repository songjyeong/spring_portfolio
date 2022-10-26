<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.shgroup .sub_top_bg {
	background-image:
		url('${pageContext.request.contextPath }/img/sub_banner/sub_top_img1526025270.jpg')
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
					<p class="sub_top_title">예약하기</p>
				</div>
			</div>
		</div>
	</div>

	<div class="contents_wrap">
		<p class="sub_location">
			<span class="loc_home">Home</span> <span class="loc_arrow">&gt;</span>
			<span class="loc_text">예약하기</span> <span class="loc_arrow">&gt;</span>
			<span class="loc_text">실시간예약</span>
		</p>

		<div class="sub_page_title_wrap">
			<h1 class="sub_page_title">실시간예약</h1>
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
										<section class="glores-A-step3">
											<div class="glores-A-reserve-step">
												<span>날짜선택</span><span class="glores-A-arrow">▶</span><span>객실선택</span><span
													class="glores-A-arrow">▶</span><em>정보입력</em><span
													class="glores-A-arrow">▶</span><span>예약완료</span>
											</div>

											<form name='app_form' method='post' enctype='multipart/form-data' style='margin: 0'>
												<input type='hidden' name='rCheckOut' value=${checkOut }>
												<input type='hidden' name='rCheckIn' value=${checkIn }>
												<input type='hidden' name='rRoomName' value=${roomName }>
												<input type='hidden' name='rPrice' value=${price }>
												<input type='hidden' name='rHeadCount' value=${hC1+hC2+hC3+hC4 }>
												<input type='hidden' name='rStatue' value="대기">
												<input type='hidden' name='rPhone' id='phone'>
												
												<fieldset>
													<legend class="glores-A-title">선택한 객실</legend>
													<table class="glores-A-form glores-A-row"
														style="margin-top: 15px">
														<colgroup>
															<col style="width: 25%" class="glores-A-tablet-pc">
															<col style="width: 75%" class="glores-A-tablet-pc">
														</colgroup>

														<tfoot>
															<tr class="glores-A-total-price">
																<td colspan="2">합계 : <strong class="glores-A-total">${price} 원</strong></td>
															</tr>
														</tfoot>

														<tbody>
															<tr>
																<th>객실명</th>
																<td>
																	<strong style="color: #000000; vertical-align: top">
																		${roomName }
																	</strong>
																</td>
															</tr>
															<tr>
																<th>예약 인원</th>
																<td>${hC1+hC2+hC3+hC4 }명</td>
															</tr>
															<tr>
																<th>숙박 요금</th>
																<td>
																	<ul>
																		<li>${dayLength }박${dayLength+1 }일 = <strong
																			style="vertical-align: top">${price} 원</strong>
																		</li>
																	</ul>
																</td>
															</tr>
														</tbody>
													</table>
												</fieldset>

												<fieldset>
													<legend class="glores-A-title">총 요금 안내</legend>

													<table class="glores-A-form">
														<colgroup>
															<col style="width: 25%" class="glores-A-tablet-pc">
															<col style="width: 75%" class="glores-A-tablet-pc">
														</colgroup>

														<tbody>
															<tr>
																<th>객실 수</th>
																<td>1실</td>
															</tr>
															<tr>
																<th>숙박 기간</th>
																<td>${checkIn } ~ ${checkOut }</td>
															</tr>
															<tr>
																<th>총 인원</th>
																<td>${hC1+hC2+hC3+hC4 }<span>명</span></td>
															</tr>
															<tr>
																<th>총 금액</th>
																<td><strong>${price }원</strong></td>
															</tr>
														</tbody>
													</table>
												</fieldset>

												<fieldset>
													<legend class="glores-A-title">고객 정보 입력</legend>

													<table class="glores-A-form">
														<colgroup>
															<col style="width: 25%" class="glores-A-tablet-pc">
															<col style="width: 75%" class="glores-A-tablet-pc">
														</colgroup>

														<tbody>
															<tr>
																<th>예약자명</th>
																<td><input type="text" name="rName" size="12"
																	maxlength="20" class="glores-A-input-txt"></td>
															</tr>
															<tr>
																<th>연락처</th>
																<td><select name="hp1" id="hp1" class="glores-A-select">
																		<option value="010" selected>010</option>
																		<option value="011">011</option>
																		<option value="016">016</option>
																		<option value="017">017</option>
																		<option value="019">019</option>
																</select> - <input type="text" name="hp2" id="hp2" size="4" maxlength="4"
																	class="glores-A-input-txt glores-A-auto"> - <input
																	type="text" name="hp3" id="hp3" size="4" maxlength="4"
																	class="glores-A-input-txt glores-A-auto"></td>
															</tr>
															<tr>
																<th>E-mail</th>
																<td><input type="text" name="rEmail" size="20"
																	maxlength="50" class="glores-A-input-txt"></td>
															</tr>
															<tr>
																<th>기타 사항</th>
																<td><textarea name="rQuestions" rows="5"
																		class="glores-A-textarea"></textarea></td>
															</tr>
															<!-- // 추가 입력 항목 -->
														</tbody>
													</table>
												</fieldset>

												<!-- 개인정보처리방침 -->
												<div class="glores-A-agree-wrap glores-A-mgt">
													<div class="glores-A-agree">
														<h4 class="glores-A-title">개인정보처리방침</h4>
														<div class="glores-A-agree-box">
															<h5>수집하는 개인정보의 항목</h5>
															<p>회사는 회원가입, 상담, 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고
																있습니다.</p>
															<ul>
																<li><strong>- 수집항목</strong> : <span>성명,
																		연락처, E-mail</span></li>
																<li><strong>- 개인정보 수집방법</strong> : <span>홈페이지</span>(<span>회원가입과
																		펜션예약</span>)</li>
															</ul>

															<h5>개인정보의 수집 및 이용목적</h5>
															<p>회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.</p>
															<ul>
																<li><strong>- 서비스 제공에 관한 계약 이행 및 서비스 제공에
																		따른 요금정산</strong>
																	<p>구매 및 요금 결제, 물품배송 또는 청구지 등 발송</p></li>
																<li><strong>- 회원 관리</strong>
																	<p>회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가
																		사용 방지, 가입 의사 확인, 연령확인</p></li>
															</ul>

															<h5>개인정보의 보유 및 이용기간</h5>
															<p>회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이
																파기합니다.</p>
														</div>

														<div class="agree-check-box">
															<input type="checkbox" name="pension_privacy_chk"
																id="pension_privacy_chk" value="1"> <label
																for="pension_privacy_chk">위 개인정보처리방침에 동의합니다.</label>
														</div>
													</div>
												</div>
												<!-- //개인정보처리방침 -->

												<fieldset>
													<legend class="glores-A-title">결제 정보 입력</legend>

													<table class="glores-A-form">
														<colgroup>
															<col style="width: 25%" class="glores-A-tablet-pc">
															<col style="width: 75%" class="glores-A-tablet-pc">
														</colgroup>

														<tbody>
															<tr>
																<th>결제 금액</th>
																<td><span id="span_total_price">${checkIn }~${checkOut } / [${dayLength }박${dayLength+1 }일] ${price }원</span></td>
															</tr>
															<tr>
																<th>결제 방법</th>
																<td><input type='radio' name='approval_type'
																	id='approval_online' value='online'
																	onclick='app_chk();' checked><label
																	STYLE='cursor: hand;' for='approval_online'
																	onclick='app_chk();'>무통장입금</label><br></td>
															</tr>
														</tbody>
													</table>

													<div id="online_span">
														<table class="glores-A-form">
															<colgroup>
																<col style="width: 25%" class="glores-A-tablet-pc">
																<col style="width: 75%" class="glores-A-tablet-pc">
															</colgroup>

															<tbody>
																<tr>
																	<th>결제 은행</th>
																	<td><select name="admin_bank"
																		class="glores-A-select"><option value=39525>sample
																				: 000-00-000000, 예금주:my name</option></select></td>
																</tr>
																<tr>
																	<th>입금자명</th>
																	<td><input type="text" name="bankName" size="16"
																		class="glores-A-input-txt"></td>
																</tr>
																<tr>
																	<th>입금 시간 안내</th>
																	<td><strong>2</strong>시간 이내에 입금하셔야 정상적으로 예약됩니다.</td>
																</tr>
															</tbody>
														</table>
													</div>
												</fieldset>

												<div class="glores-A-btn-wrap">
													<span class="glores-A-half">
														<button type="button" onclick="history.back()"
															class="glores-A-btn-type1 glores-A-big">이전으로</button>
														<button type="button" onclick="app_form_chk()"
															class="glores-A-btn-type1 glores-A-big glores-A-highlight">결제하기</button>
													</span>
												</div>
											</form>
										</section>
									</div>
									<script type="text/javascript">
									function app_form_chk(){
										var emoney_exists = 0;
										var form = document.app_form;
										
										if(!form.rName.value){
											alert("예약자 이름을 입력해주세요.");
											form.rName.focus();
											return ;
										};
										
										if(!form.hp2.value){
											alert("전화번호를 입력해주세요.");
											form.hp2.focus();
											return ;
										}else if(!form.hp3.value){
											alert("전화번호를 입력해주세요.");
											form.hp3.focus();
											return ;
										};
										
										if(!form.rEmail.value){
											alert("이메일을 입력해주세요.");
											form.rEmail.focus();
											return ;
										};

										if(!form.bankName.value){
											alert("입금자명을 입력해주세요.");
											form.bankName.focus();
											return ;
										} else if(form.bankName.value !== form.rName.value){
											alert("예약자명과 입금자명을 확인해 주세요.");
											form.bankName.focus();
											return ;
										};
										
										if(document.getElementById('pension_privacy_chk')){
											if(form.pension_privacy_chk.checked == false){
												alert("개인정보 취급 방침에 동의 하셔야 합니다.");
												form.pension_privacy_chk.focus();
												return;
											}
										};
										
										var phone1 = $("#hp1").val();
										var phone2 = $("#hp2").val();
										var phone3 = $("#hp3").val();
										var phone = phone1+ "-" +phone2+ "-" +phone3;
										$("#phone").val(phone);
										
										form.action = "${pageContext.request.contextPath}/reservation/complete"
										form.target='';
										form.method='post'
										form.submit();
									}
									</script>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>