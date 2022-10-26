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

			<h1 class="sub_page_title">회원탈퇴</h1>

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


			<div class="glores-A-terms">
				<p><strong >회원탈퇴 신청을 하시기 전에 아래의 사항을 반드시 확인 하시기 바랍니다.</strong></p>
				<p><span >회원탈퇴는 즉시 처리 됩니다.</span> <span >탈퇴한 ID는 영구적으로 사용이 중지됩니다.</span></p>
				<p >동일한 ID로 재가입하는 것은 불가능하지만 다른 ID로 재가입하는 것은 가능합니다.</p>
				<p >이것은 동일한 ID 재가입 하여 다른 이용자들께 피해를 주는 행위를 방지하기 위한 조치이오니 넓은 양해 바랍니다.</p>
				<p><span >탈퇴 즉시 회원정보는 영구 삭제 됩니다.</span> <span >회원제 서비스와 관련하여 아래의 처리가 완료 됩니다.</span></p>
				<ul>
					<li >-${member.name } 고객님의 개인정보 삭제</li>
				</ul>
			</div>

			<div class="glores-A-btn-wrap">
				<span class="glores-A-half">
					<a href="javascript:history.back()" class="glores-A-btn-type1 glores-A-big" >이전으로</a>
					<a href="javascript:tal_form_chk()" class="glores-A-btn-type1 glores-A-big glores-A-highlight" >회원탈퇴</a>
				</span>
			</div>

<script type="text/javascript">
			function tal_form_chk(){

// 	if(document.getElementsByName("tal_form").length){
// 		// 폼이 있는경우.
// 		var form = document.tal_form;
// 		if(document.getElementsByName("pwd").length){
// 			if(!form.pwd.value){
// 				alert("비밀번호를 입력해주세요.");
// 				form.pwd.focus();
// 				return;
// 			}
// 		}


// 		if(document.getElementsByName("tal_content").length){
// 			if(!form.tal_content.value){
// 				alert("탈퇴 사유를 입력해주세요.");
// 				form.tal_content.focus();
// 				return;
// 			}
// 		}
// 		if(confirm("정말 탈퇴하시겠습니까?")){
// 			form.action = "tal_exec.php";
// 			form.method = "post";
// 			form.submit();
// 		}
// 	}else{
		// 폼없이 단순 링크만으로 탈퇴하는경우.
		if(confirm("정말 탈퇴하시겠습니까?")){
			var iframe_name = create_iframe();
			document.getElementById(iframe_name).src= "${pageContext.request.contextPath }/login";
// 		}
	}

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
