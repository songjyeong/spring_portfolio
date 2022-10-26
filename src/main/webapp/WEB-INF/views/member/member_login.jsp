<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
function memberLogin() {
	page_login_page_form.action = "<c:url value="/member/success"/>";
	page_login_page_form.submit();
}
</script>

<script type="text/javascript">

 function memberLogin() {
	if ( f.id.value == "" ) {
		alert("아이디를 입력하십시요.");
		f.id.focus();
		return;
	}
	if ( f.passwd.value == "" ) {
		alert("비밀번호를 입력하십시요.");
		f.passwd.focus();
		return;
	}

	f.action = "<c:url value="/member/login"/>";
	f.submit();
} 


//  $(document).on('click', '#loginBtn', function(){
//     var url = "${pageContext.request.contextPath}/board/login_success";
//     url = url + "?bid=" + ${boardContent.bid};
// 	location.href = url;
// }); 


</script>

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
			<span class="loc_text">Login</span>
		</p>
		<div class="sub_page_title_wrap">
			<h1 class="sub_page_title">Login</h1>
			<p class="sub_top_text">당신의 여행을 더욱 즐겁고 행복하게 만들어 드립니다.</p>
		</div>

		<div class="contents">
			<div class = "row" style = "margin-left:auto; margin-right:auto; margin-bottom:0px;background-color:transparent;" >
				<div style = "margin:0 auto; padding:0px 0; max-width:1000px;" class = "white-space">
					<div style = "margin-top:-0px;margin-left:-0px;">
						<div class = "col d_col_6 t_col_6 m_col_6" style = "padding-top:0px;padding-left:0px;">
							<div style = "background-color:transparent;">
								<div style = "word-break:break-all;margin:0 0px 0px 0px;">
								
									<form name='page_login_page_form' method='post'>
										<input type='hidden' name='re_url' value='' />
										<input type='hidden' name='this_domain'>
										<input type='hidden' name='post_action'>
										<input type='hidden' name='mode'>
										<input type='hidden' name='popup' value='' />
										<input type='hidden' name='form_sess_id' value='97m1imoel49n3v9ttq1q38i071'>
										<input type='hidden' name='form_id_name' value='' />
										<div class="glores-A-login">
											<h1>LOGIN</h1>
											<div class="glores-A-login-form" style="border-right-width:0">
											
												<c:if test="${empty(loginMember) }">
													<div class="login-input-box">
														<ul>
															<li>
																<label for="input_id" class="glores-A-blind" >아이디</label>
																<input type="text" name="id" id="input_id" placeholder="아이디" required class="glores-A-input-txt" >
															</li>
															<li>
																<label for="input_pw" class="glores-A-blind" >비밀번호</label>
																<input type="password" name="passwd" id="input_pw" maxlength="16" placeholder="비밀번호" required class="glores-A-input-txt">
															</li>
														</ul>
														<button class="glores-A-btn-type1 glores-A-btn-login glores-A-highlight" id="loginBtn" onClick="memberLogin();">로그인</button>
													</div>
												</c:if>
												
												<div class="login-btn-box">
													<a href="javascript:openMemberSearch()" >아이디 · 비밀번호 찾기</a>
													<a href="${pageContext.request.contextPath }/join" >회원가입</a>
												</div>
											</div>
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
	
	<script type="text/javascript">
	
	function openMemberSearch(){
		window.open(
				"${pageContext.request.contextPath }/member/search",
				"modifyProductImage", 
				"width=500, height=400, left=100, top=50"
				);
	}
	
	</script>
</div>
