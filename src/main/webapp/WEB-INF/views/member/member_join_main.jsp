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
					<p class="sub_top_title">로그인</p>
				</div>
			</div>
		</div>
	</div>

	<div class="contents_wrap">
		<p class="sub_location">
			<span class="loc_home">Home</span>
			<span class="loc_arrow">&gt;</span>
			<span class="loc_text">GUEST</span>
			<span class="loc_arrow">&gt;</span>
			<span class="loc_text">Join</span>
		</p>

		<div class="sub_page_title_wrap">
			<h1 class="sub_page_title">Join</h1>
			<p class="sub_top_text">당신의 여행을 더욱 즐겁고 행복하게 만들어 드립니다.</p>
		</div>

		<div class="contents">
			<div class="row" style="margin-left: auto; margin-right: auto; margin-bottom: 0px; background-color: transparent;">
				<div style="margin: 0 auto; padding: 0px 0; max-width: 1000px;" class="white-space">
					<div style="margin-top: -0px; margin-left: -0px;">
						<div class="col d_col_6 t_col_6 m_col_6" style="padding-top: 0px; padding-left: 0px;">
							<div style="background-color: transparent;">
								<div style="word-break: break-all; margin: 0 0px 0px 0px;">
									<div class="glores-A-join-wrap kr">



										<form name='member_reg_form' method='post' >


											<h4 class="glores-A-title">필수 입력 항목</h4>
											<ul class="glores-A-join">
												<li>
													<label for="id"><span>아이디 <i>*</i></span></label>
													<div class="glores-A-value">
														<div class='reg_memberID'>
															<input type='text' name='id' id='id' maxlength='12' value="${member.id }" />
															<button type='button' onclick='id_chk_popup()'>아이디 중복체크</button>
														</div>
													</div>
													<span class="id_ok" style="color: red;">사용 가능한 아이디입니다.</span>
													<span class="id_already" style="color: red;">누군가 이 아이디를 사용하고 있어요.</span>
													<div class="glores-A-info">아이디는 영문+숫자만 입력 가능 합니다.</div>
												</li>
												<li>
													<label for="pwd"><span>패스워드 <i>*</i></span></label>
													<div class="glores-A-value">
														<div class='reg_password'>
															<input type='password' name='pwd' id='pwd' size='12' maxlength='16' autocomplete='new-password' value="${member.password }" />
															<label for='pwd_re'>확인</label>
															<input type='password' name='pwd_re' id='pwd_re' size='12' maxlength='16' />
														</div>
													</div>
													<div class="glores-A-info">
														패스워드는 영문+숫자+특수문자를 조합하여 8자 이상 입력해주세요.
													</div>
												</li>
												<li>
													<label for="name"><span>성명 <i>*</i></span></label>
													<div class="glores-A-value">
														<div class='reg_name'>
															<input type='text' name='name' id='name' size='20' value= "${member.name }" maxlength='20' />
														</div>
													</div>
													<div class="glores-A-info"></div>
												</li>
												<li>
													<label for="email"><span>e-mail <i>*</i></span></label>
													<div class="glores-A-value">
														<div class='reg_email'>
															<input type='text' name='email' id='email' value= "${member.email }">
														</div>
													</div>
													<div class="glores-A-info"></div>
												</li>
												<li>
													<label for="hp"><span>휴대전화 <i>*</i></span></label>
													<div class="glores-A-value">
														<div class='reg_mobileNumber'>
															<select name='hp1' id='hp1' style='width: 55px' title='휴대전화 첫번째'>
																<option >선택</option>
																<option value='010'>010</option>
																<option value='011'>011</option>
																<option value='016'>016</option>
																<option value='017'>017</option>
																<option value='018'>018</option>
																<option value='019'>019</option>
															</select>
															 - <input type='text' name='hp2' id='hp2' size=4 maxlength=4  title='휴대전화 두번째' />
															- <input type='text' name='hp3' id='hp3' size=4 maxlength=4  title='휴대전화 세번째' />
														</div>

														<input type="hidden" name='phone' id="phone" value= "${member.phone}" >
													</div>
													<div class="glores-A-info"></div>
												</li>
											</ul>
											<div class="glores-A-btn-wrap">
												<span class="glores-A-half">
													<a href="javascript:window.history.back();" class="glores-A-btn-type1 glores-A-big">이전으로</a>
													<a href="javascript:reg_form_chk()" class="glores-A-btn-type1 glores-A-big glores-A-highlight">회원가입</a>
												</span>
											</div>
										</form>
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


function reg_form_chk() {

// 	if ( member_reg_form.id.value == "" ) {
// 		alert("아이디를 입력하십시요.");
// 		f.userid.focus();
// 		return;
// 	}
// 	if ( member_reg_form.pwd.value == "" ) {
// 		alert("비밀번호를 입력하십시요.");
// 		f.password.focus();
// 		return;
// 	}
// 	if ( member_reg_form.name.value == "" ) {
// 		alert("이름을 입력하십시요.");
// 		f.name.focus();
// 		return;
// 	}
// 	if ( member_reg_form.hp1.value == "" ) {
// 		alert("휴대번호를 입력하십시요.");
// 		f.name.focus();
// 		return;
// 	}
// 	if ( member_reg_form.hp2.value == "" ) {
// 		alert("휴대번호를 입력하십시요.");
// 		f.name.focus();
// 		return;
// 	}
// 	if ( member_reg_form.hp3.value == "" ) {
// 		alert("휴대번호를 입력하십시요.");
// 		f.name.focus();
// 		return;
// 	}

	var phone1 = $("#hp1").val();
	var phone2 = $("#hp2").val();
	var phone3 = $("#hp3").val();
	var phone = phone1+ "-" +phone2+ "-" +phone3;

// 	alert(phone);

	$("#phone").val(phone);

// 	alert("success");

	member_reg_form.action = "${pageContext.request.contextPath }/join_detail";
	member_reg_form.submit();
}


</script>

</div>




