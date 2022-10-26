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

					<p class="sub_top_title">마이페이지</p>

				</div>

			</div>

		</div>

	</div>

	<div class="contents_wrap">


		<p class="sub_location">

			<span class="loc_home">Home</span>

			<span class="loc_arrow">&gt;</span>

			<span class="loc_text">MyPage</span>

			<span class="loc_arrow">&gt;</span>

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
			<i class="prev"></i>
			<i class="next"></i>
			</div>
		</div>

	<div class="contents">

		<div class = "row" style = "margin-left:auto; margin-right:auto; margin-bottom:0px;background-color:transparent;" >

			<div style = "margin:0 auto; padding:0px 0; max-width:1000px;" class = "white-space">

				<div style = "margin-top:-0px;margin-left:-0px;">

					<div class = "col d_col_6 t_col_6 m_col_6" style = "padding-top:0px;padding-left:0px;">

						<div style = "background-color:transparent;">

			<div style = "word-break:break-all;margin:0 0px 0px 0px;">


			<style>
	.glores-A-agree .glores-A-agree-box {box-sizing:border-box;display:block;overflow:auto;height:100px;margin-top:15px;padding:10px;border:1px solid #ccc;border-radius:3px;background:#ffffff;font-size:13px;color:#666;}
	.glores-A-agree .agree-check-box {margin:15px 0;}
	.glores-A-agree .agree-check-box:after {content:'';display:block;clear:both;}
	.glores-A-agree .agree-check-box input {float:left;}
	.glores-A-agree .agree-check-box label {float:left;margin-right:10px;font-size:13px;color:#333;cursor:pointer;}

	@media all and (min-width:768px){
		.glores-A-agree .glores-A-agree-box {height:150px;padding:20px;}
	}
</style>

<div class="glores-A-join-wrap kr">
	<form name='mem_reg_form' method='post' action='' target='ok_frame' enctype='multipart/form-data'>
							<input type='hidden' name='tmp_name' value='tmp_val' />
							<input type='hidden' name='this_site_mode' value='1' />
							<input type='hidden' name='this_domain'>
							<input type='hidden' name='post_action'>
							<input type='hidden' name='form_sess_id' value='h5qp1r97dm8j3k5nopjnr692t4'>
							<input type='hidden' name='marketing_agree_data' value=''>


	<h4 class="glores-A-title">필수 입력 항목</h4>


	<ul class="glores-A-join">

		<li>
			<label for="mem_lv">
				<span>회원등급<i>*</i></span>
			</label>
			<div class="glores-A-value">
				${member.status}
				
			</div>
			<div class="glores-A-info"></div>
		</li>

		<li>
			<label for="id">
				<span>아이디<i>*</i></span>
			</label>
			<div class="glores-A-value">
				${member.id}
			</div>
			<div class="glores-A-info"></div>
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

			<label for="name">
				<span>성명</span>
				<i>*</i>
			</label>
			<div class="glores-A-value">
				<div class='reg_name'>
					<input type='text' name='name' id='name' size='20' maxlength='20' value="${member.name}"  />
				</div>
			</div>
			<div class="glores-A-info"></div>
		</li>

		<li>
			<label for="email">
				<span>e-mail</span>
				<i>*</i>
			</label>
			<div class="glores-A-value">
				<div class='reg_email'>
					<input type='text' name='email' id='email' value='${member.email}' >
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
			<a href="javascript:history.back()" class="glores-A-btn-type1 glores-A-big" >이전으로</a>
			<a href="javascript:mem_reg_form_chk()" class="glores-A-btn-type1 glores-A-big glores-A-highlight" >정보수정완료</a>
<!-- 			<a href="javascript:pwd_ch()" class="glores-A-btn-type1 glores-A-big" >비밀번호변경</a> -->
		</div>
	</form>
</div>
<script type="text/javascript">
function mem_reg_form_chk() {

	var phone1 = $("#hp1").val();
	var phone2 = $("#hp2").val();
	var phone3 = $("#hp3").val();

	var phone = phone1+ "-" +phone2+ "-" +phone3;

	$("#phone").val(phone);

	mem_reg_form.action = "${pageContext.request.contextPath }/view";
	mem_reg_form.submit();
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

