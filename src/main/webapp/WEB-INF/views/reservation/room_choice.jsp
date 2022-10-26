<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.shgroup .sub_top_bg {
	background-image:
		url('${pageContext.request.contextPath }/img/sub_banner/sub_top_img1526025270.jpg')
}

$(document).ready(function() {
 $('input[type="checkbox"][name="sel_room_idx_arr"]').click(function(){
 
  if($(this).prop('checked')){
 
     $('input[type="checkbox"][name="sel_room_idx_arr"]').prop('checked',false);
 
 
     $(this).prop('checked',true);
 
    }
  
   });
  
 });
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
										<section class="glores-A-step2">
											<div class="glores-A-reserve-step">
												<span>날짜선택</span><span class="glores-A-arrow">▶</span><em>객실선택</em><span
													class="glores-A-arrow">▶</span><span>정보입력</span><span
													class="glores-A-arrow">▶</span><span>예약완료</span>
											</div>

											<form name="room_sel_form">
												<fieldset>
													<legend class="glores-A-title">기본 항목 선택</legend>
													<table class="glores-A-form">
														<tbody>
															<tr>
																<th>숙박일</th>
																<td>
																	<span id="checkInTd"></span>
																	<input type="hidden" name="rCheckIn" value=${checkIn }>
																	<input type="hidden" name="rPrice" value=${price }>
																</td>
															</tr>
															<tr>
																<th>숙박 기간</th>
																<td>
																<select name="day_length" id="selectDay" class="glores-A-select">
																	<option></option>
																	<option value="1">1박2일</option>
																	<option value="2">2박3일</option>
																	<option value="3">3박4일</option>
																	<option value="4">4박5일</option>
																</select>
																</td>
															</tr>
														</tbody>
													</table>
												</fieldset>

												<fieldset>
													<legend class="glores-A-title">객실 선택</legend>
													<table class="glores-A-table" id="glores-A-room-list-table">
														<colgroup>
															<col>
															<col class="glores-A-tablet-pc">
															<col class="glores-A-tablet-pc">
															<col>
															<col style="width: 110px">
														</colgroup>

														<thead>
															<tr>
																<th>객실 선택</th>
																<th class="glores-A-tablet-pc">수용 인원</th>
																<th>예약 인원</th>
																<th>요금표</th>
															</tr>
														</thead>
														
														

														<tbody>
															<tr>
																<td>
																	<label>
																		<input type="checkbox" name="rRoomName" id="rRoomName" onclick="checkOnlyOne(this)" value="에메랄드룸"> 에메랄드룸
																	</label>
																</td>
																<td class="glores-A-tablet-pc">3<span>명</span> ~ 6<span>명</span></td>
																<td>
																	<select name="sel_in_cnt1" class="glores-A-select">
																		<option></option>
																		<option value="3">3</option>
																		<option value="4">4</option>
																		<option value="5">5</option>
																		<option value="6">6</option>
																	</select>
																</td>
																<td><button type="button" class="glores-A-toggle-price glores-A-btn-type1 glores-A-small">요금보기</button></td>
															</tr>
															<tr class="glores-A-price-list">
																<td colspan="5">
																	<table class="glores-A-price-table">
																		<thead>
																			<tr>
																				<th></th>
																				<th>비수기</th>
																				<th>성수기</th>
																				<!-- <th>극성수기</th> -->
																			</tr>
																		</thead>

																		<tbody>
																			<tr>
																				<th>주중</th>
																				<td>60,000</td>
																				<td>90,000</td>
																				<!-- <td>110,000</td> -->
																			</tr>
																			<tr>
																				<th>주말</th>
																				<td>80,000</td>
																				<td>120,000</td>
																				<!-- <td>150,000</td> -->
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td>
																	<label> 
																		<input type="checkbox" name="rRoomName" id="rRoomName" onclick="checkOnlyOne(this)" value="사파이어룸"> 사파이어룸
																	</label>
																</td>
																<td class="glores-A-tablet-pc">
																	5<span>명</span> ~ 10<span>명</span></td>
																<td><select name="sel_in_cnt2"
																	class="glores-A-select" >
																		<option></option>
																		<option value="5">5</option>
																		<option value="6">6</option>
																		<option value="7">7</option>
																		<option value="8">8</option>
																		<option value="9">9</option>
																		<option value="10">10</option>
																</select></td>
																<td><button type="button"
																		class="glores-A-toggle-price glores-A-btn-type1 glores-A-small">요금보기</button></td>
															</tr>
															<tr class="glores-A-price-list">
																<td colspan="5">
																	<table class="glores-A-price-table">
																		<thead>
																			<tr>
																				<th></th>
																				<th>비수기</th>
																				<th>성수기</th>
																				<!-- <th>극성수기</th> -->
																			</tr>
																		</thead>

																		<tbody>
																			<tr>
																				<th>주중</th>
																				<td>100,000</td>
																				<td>150,000</td>
																				<!-- <td>150,000</td> -->
																			</tr>
																			<tr>
																				<th>주말</th>
																				<td>120,000</td>
																				<td>180,000</td>
																				<!-- <td>180,000</td> -->
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td><label> <input type="checkbox" name="rRoomName" id="rRoomName" onclick="checkOnlyOne(this)" value="루비룸"> 루비룸
																</label></td>
																<td class="glores-A-tablet-pc">2<span>명</span> ~ 4<span>명</span></td>
																<td><select name="sel_in_cnt3"
																	class="glores-A-select">
																		<option></option>
																		<option value="2">2</option>
																		<option value="3">3</option>
																		<option value="4">4</option>
																</select></td>
																<td><button type="button"
																		class="glores-A-toggle-price glores-A-btn-type1 glores-A-small">요금보기</button></td>
															</tr>
															<tr class="glores-A-price-list">
																<td colspan="5">
																	<table class="glores-A-price-table">
																		<thead>
																			<tr>
																				<th></th>
																				<th>비수기</th>
																				<th>성수기</th>
																				<!-- <th>극성수기</th> -->
																			</tr>
																		</thead>

																		<tbody>
																			<tr>
																				<th>주중</th>
																				<td>40,000</td>
																				<td>60,000</td>
																				<!-- <td>60,000</td> -->
																			</tr>
																			<tr>
																				<th>주말</th>
																				<td>50,000</td>
																				<td>75,000</td>
																				<!-- <td>75,000</td> -->
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td>
																	<label> 
																		<input type="checkbox" name="rRoomName" id="rRoomName" onclick="checkOnlyOne(this)" value="오팔룸"> 오팔룸
																	</label>
																</td>
																<td class="glores-A-tablet-pc">1<span>명</span> ~ 5<span>명</span></td>
																<td>
																	<select name="sel_in_cnt4" class="glores-A-select"> 
																		<option></option>
																		<option value="1">1</option>
																		<option value="2">2</option>
																		<option value="3">3</option>
																		<option value="4">4</option>
																		<option value="5">5</option>
																	</select>
																</td>
																<td><button type="button"
																		class="glores-A-toggle-price glores-A-btn-type1 glores-A-small">요금보기</button></td>
															</tr>
															<tr class="glores-A-price-list">
																<td colspan="5">
																	<table class="glores-A-price-table">
																		<thead>
																			<tr>
																				<th></th>
																				<th>비수기</th>
																				<th>성수기</th>
																				<!-- <th>극성수기</th> -->
																			</tr>
																		</thead>

																		<tbody>
																			<tr>
																				<th>주중</th>
																				<td>50,000</td>
																				<td>75,000</td>
																				<!-- <td>75,000</td> -->
																			</tr>
																			<tr>
																				<th>주말</th>
																				<td>60,000</td>
																				<td>90,000</td>
																				<!-- <td>90,000</td> -->
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
														</tbody>
													</table>
												</fieldset>

												<div class="glores-A-btn-wrap">
													<button type="button" onclick="room_sel_form_chk()"
														class="glores-A-btn-type1 glores-A-big glores-A-highlight">객실
														예약하기</button>
												</div>
											</form>
										</section>
									</div>

								<script>
								
								if($("#checkInTd").val() =="") {
									$("#checkInTd").text(${checkInY}+"년 "+${checkInM}+"월 "+${checkInD}+"일 ");	
								};
								
								jQuery(function($) {
									$('#glores-A-room-list-table button.glores-A-toggle-price').on('click', function() {
										$(this).toggleClass('glores-A-on');
										$(this).closest('tr').next().toggleClass('glores-A-on');
									});
								});

								</script>
								<script type="text/javascript">
									function room_sel_form_chk(){
										var form = document.room_sel_form;
										if(!form.day_length.value){
											alert("숙박 기간을 지정해주세요.");
											day_length.focus();
											return;
										}
										if(!form.sel_in_cnt1.value&&!form.sel_in_cnt2.value&&!form.sel_in_cnt3.value&&!form.sel_in_cnt4.value){
											alert("인원을 입력해주세요.");
											return;
										}
										
										form.action='${pageContext.request.contextPath}/reservation/put_information'
										form.target='';
										form.method='get'
										form.submit();

									};
									
									function checkOnlyOne(element) {
										const checkboxes=document.getElementsByName("rRoomName");
										if(element.value=="에메랄드룸"){
											$('select[name=sel_in_cnt1]').attr('disabled', false);
											$('select[name=sel_in_cnt2]').attr('disabled', true);
											$('select[name=sel_in_cnt2]').val("");
											$('select[name=sel_in_cnt3]').attr('disabled', true);
											$('select[name=sel_in_cnt3]').val("");
											$('select[name=sel_in_cnt4]').attr('disabled', true);
											$('select[name=sel_in_cnt4]').val("");
										}else if(element.value=="사파이어룸"){
											$('select[name=sel_in_cnt1]').attr('disabled', true);
											$('select[name=sel_in_cnt1]').val("");
											$('select[name=sel_in_cnt2]').attr('disabled', false);
											$('select[name=sel_in_cnt3]').attr('disabled', true);
											$('select[name=sel_in_cnt3]').val("");
											$('select[name=sel_in_cnt4]').attr('disabled', true);
											$('select[name=sel_in_cnt4]').val("");
										}else if(element.value=="루비룸"){
											$('select[name=sel_in_cnt1]').attr('disabled', true);
											$('select[name=sel_in_cnt1]').val("");
											$('select[name=sel_in_cnt2]').attr('disabled', true);
											$('select[name=sel_in_cnt2]').val("");
											$('select[name=sel_in_cnt3]').attr('disabled', false);
											$('select[name=sel_in_cnt4]').attr('disabled', true);
											$('select[name=sel_in_cnt4]').val("");
										}else if(element.value=="오팔룸"){
											$('select[name=sel_in_cnt1]').attr('disabled', true);
											$('select[name=sel_in_cnt1]').val("");
											$('select[name=sel_in_cnt2]').attr('disabled', true);
											$('select[name=sel_in_cnt2]').val("");
											$('select[name=sel_in_cnt3]').attr('disabled', true);
											$('select[name=sel_in_cnt3]').val("");
											$('select[name=sel_in_cnt4]').attr('disabled', false);
										};
										checkboxes.forEach((cb) => {
											cb.checked = false;
										})
										element.checked = true;
									};
									
									$('input:checkbox[name="rRoomName"]').each(function(index) {
										if(this.value == "${roomName }"){ //값 비교 
											if(this.value == "에메랄드룸"){
												$('select[name=sel_in_cnt2]').attr('disabled', true);
												$('select[name=sel_in_cnt3]').attr('disabled', true);
												$('select[name=sel_in_cnt4]').attr('disabled', true);
											} else if(this.value == "사파이어룸"){
												$('select[name=sel_in_cnt1]').attr('disabled', true);
												$('select[name=sel_in_cnt3]').attr('disabled', true);
												$('select[name=sel_in_cnt4]').attr('disabled', true);
											} else if(this.value == "루비룸"){
												$('select[name=sel_in_cnt1]').attr('disabled', true);
												$('select[name=sel_in_cnt2]').attr('disabled', true);
												$('select[name=sel_in_cnt4]').attr('disabled', true);
											} else if(this.value == "오팔룸"){
												$('select[name=sel_in_cnt1]').attr('disabled', true);
												$('select[name=sel_in_cnt2]').attr('disabled', true);
												$('select[name=sel_in_cnt3]').attr('disabled', true);
											};
											this.checked = true; //checked 처리      
										}
									});
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