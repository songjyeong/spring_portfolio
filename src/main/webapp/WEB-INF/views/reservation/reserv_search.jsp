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
					<p class="sub_top_title">GUIDE</p>
				</div>
			</div>
		</div>
		</div>

		<div class="contents_wrap">
			<p class="sub_location">
				<span class="loc_home">Home</span> <span class="loc_arrow">&gt;</span>
				<span class="loc_text">GUEST</span> <span class="loc_arrow">&gt;</span>
				<span class="loc_text">예약 조회</span>
			</p>

			<div class="sub_page_title_wrap">
				<h1 class="sub_page_title">예약 조회</h1>
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
											<section class="glores-A-reserve-auth">
												<form name='pension_s_form' method='post' style='margin: 0'>
													<fieldset>
														<legend class="glores-A-title">예약조회</legend>
														<input type="hidden" name="rCheckIn" id="rCheckIn">
														<input type="hidden" name="rPhone" id="rPhone">
														<table class="glores-A-form">
															<tbody>
																<tr>
																	<th><label for="room_subject">예약 객실</label></th>
																		<td><select name="rRoomName" id="room_subject"
																		class="glores-A-select">
																			<option value="">선택하세요</option>
																			<option value="에메랄드룸">에메랄드룸</option>
																			<option value="사파이어룸">사파이어룸</option>
																			<option value="루비룸">루비룸</option>
																			<option value="오팔룸">오팔룸</option>
																	</select></td>
																</tr>
																<tr>
																	<th><label for="sel_y">예약일</label></th>
																	<td><select name="sel_y" id="sel_y"
																		class="glores-A-select">
																			<option value="2022" selected>2022</option>
																			<option value="2023">2023</option>
																		</select> <label for="sel_y">년</label> 
																		<select name="sel_m" id="sel_m" class="glores-A-select">
																			<option value="1" selected>1</option>
																			<option value="2">2</option>
																			<option value="3">3</option>
																			<option value="4">4</option>
																			<option value="5">5</option>
																			<option value="6">6</option>
																			<option value="7">7</option>
																			<option value="8">8</option>
																			<option value="9">9</option>
																			<option value="10">10</option>
																			<option value="11">11</option>
																			<option value="12">12</option>
																		</select> <label for="sel_m">월</label> 
																		<select name="sel_d" id="sel_d" class="glores-A-select">
																			<option value="1" selected>1</option>
																			<option value="2">2</option>
																			<option value="3">3</option>
																			<option value="4">4</option>
																			<option value="5">5</option>
																			<option value="6">6</option>
																			<option value="7">7</option>
																			<option value="8">8</option>
																			<option value="9">9</option>
																			<option value="10">10</option>
																			<option value="11">11</option>
																			<option value="12">12</option>
																			<option value="13">13</option>
																			<option value="14">14</option>
																			<option value="15">15</option>
																			<option value="16">16</option>
																			<option value="17">17</option>
																			<option value="18">18</option>
																			<option value="19">19</option>
																			<option value="20">20</option>
																			<option value="21">21</option>
																			<option value="22">22</option>
																			<option value="23">23</option>
																			<option value="24">24</option>
																			<option value="25">25</option>
																			<option value="26">26</option>
																			<option value="27">27</option>
																			<option value="28">28</option>
																			<option value="29">29</option>
																			<option value="30">30</option>
																			<option value="31">31</option>
																		</select> <label for="sel_d" data-lan-false="phpx can not be used"> 일 </label>
																	</td>
																</tr>
																<tr>
																	<th><label for="mem_name">이름</label></th>
																	<td><input type="text" name="rName" id="mem_name" maxlength="20" 
																	class="glores-A-input-txt"></td>
																</tr>
																<tr>
																	<th><label for="hp">연락처</label></th>
																	<td><input type="text" name="hp1" id="hp1" size="4"
																		maxlength="4" class="glores-A-input-txt glores-A-auto">
																		- <input type="text" name="hp2" id="hp2" size="4" maxlength="4"
																		class="glores-A-input-txt glores-A-auto"> - <input
																		type="text" name="hp3" id="hp3" size="4" maxlength="4"
																		class="glores-A-input-txt glores-A-auto"></td>
																</tr>
															</tbody>
														</table>
													</fieldset>

													<div class="glores-A-btn-wrap">
														<button type="button" onclick="room_search_chk()"
															class="glores-A-btn-type1 glores-A-big glores-A-highlight">조회하기</button>
													</div>
												</form>
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
	<script type="text/javascript">

function room_search_chk(){
	var form = document.pension_s_form;

	if(!form.sel_y.value){
		alert("예약일을 선택해주세요.");
		form.sel_y.focus();
		return
	}
	if(!form.sel_m.value){
		alert("예약일을 선택해주세요.");
		form.sel_m.focus();
		return
	}
	if(!form.sel_d.value){
		alert("예약일을 선택해주세요.");
		form.sel_d.focus();
		return
	}
	if(!form.mem_name.value){
		alert("예약자 성함을 입력해주세요.");
		form.mem_name.focus();
		return
	}

	if(!form.hp1.value){
		alert("연락처를 입력해주세요.");
		form.hp1.focus();
		return
	}
	if(!form.hp2.value){
		alert("연락처를 입력해주세요.");
		form.hp2.focus();
		return
	}
	if(!form.hp3.value){
		alert("연락처를 입력해주세요.");
		form.hp3.focus();
		return
	}
	
	var phone1 = $("#hp1").val();
	var phone2 = $("#hp2").val();
	var phone3 = $("#hp3").val();
	var phone = phone1+ "-" +phone2+ "-" +phone3;
	$("#rPhone").val(phone);

	var sely = $("#sel_y").val();
	var selm = $("#sel_m").val();
	var seld = $("#sel_d").val();
	var checkIn = sely+ "/" +selm+ "/" +seld;
	$("#rCheckIn").val(checkIn);
	
	form.method='post';
	form.action='${pageContext.request.contextPath}/reservation/reserv_result';
	form.target='';
	form.submit();

}


</script>
</body>
</html>