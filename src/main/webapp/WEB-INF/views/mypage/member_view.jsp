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

			<h1 class="sub_page_title">내 정보</h1>

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
					<label for="mem_lv"><span>회원등급</span></label>
					<div class="glores-A-value">${member.status}</div>
					<div class="glores-A-info"></div>
				</li>
				<li>
					<label for="id"><span>아이디</span></label>
					<div class="glores-A-value">${member.id}</div>
					<div class="glores-A-info"></div>
				</li>
				<li>
					<label for="name"><span>성명</span></label>
					<div class="glores-A-value">${member.name}</div>
					<div class="glores-A-info"></div>
				</li>
				<li>
					<label for="email"><span>e-mail</span></label>
					<div class="glores-A-value">${member.email}</div>
					<div class="glores-A-info"></div>
				</li>
				<li>
					<label for="hp"><span>휴대전화</span></label>
					<div class="glores-A-value">${member.phone}</div>
					<div class="glores-A-info"></div>
				</li>
			</ul>


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
</div>
