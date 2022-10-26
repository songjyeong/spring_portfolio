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
			<span class="loc_text">Login</span>

		</p>

		<div class="sub_page_title_wrap">
			<h1 class="sub_page_title">Login</h1>
			<p class="sub_top_text">당신의 여행을 더욱 즐겁고 행복하게 만들어 드립니다.</p>
		</div>

		<div class="contents">
			<div class="row" style="margin-left: auto; margin-right: auto; margin-bottom: 0px; background-color: transparent;">
				<div style="margin: 0 auto; padding: 0px 0; max-width: 1000px;" class="white-space">
					<div style="margin-top: -0px; margin-left: -0px;">
						<div class="col d_col_6 t_col_6 m_col_6" style="padding-top: 0px; padding-left: 0px;">
							<div style="background-color: transparent;">
								<div style="word-break: break-all; margin: 0 0px 0px 0px;">
									<div class="glores-A-complete">
										<div class="glores-A-msg-box">
											<strong class="glores-A-thx">
												★
												<br>THANK YOU! :)
											</strong>
											
											<p class="glores-A-txt">
												<span>${member.name } 반갑습니다 고객님!</span> 
												<span>회원가입이 완료 되었습니다.</span> 
												<span class="glores-A-block">회원님은 저희 사이트에서 제공하는 모든 서비스와 이벤트를 편리하게 이용하실 수 있습니다. </span> 
												<span class="glores-A-block">WhiteHouse는 최고의 사이트가 되기 위해 최선의 노력을 하겠습니다.</span> 
												<span class="glores-A-block">감사합니다.</span>
											</p>
										</div>

										<div class="glores-A-btn-wrap">
											<span class="glores-A-half"> 
												<a href="${pageContext.request.contextPath }" class="glores-A-btn-type1 glores-A-big">메인으로 이동</a> 
												<a href="${pageContext.request.contextPath }/login" class="glores-A-btn-type1 glores-A-big glores-A-highlight">로그인</a>
											</span>
										</div>
<%-- 										<p><span>id : ${member.id }</span></p> --%>
<%-- 										<p><span>password : ${member.password }</span></p> --%>
<%-- 										<p><span>phone : ${member.phone }</span></p> --%>
<%-- 										<p><span>status : ${member.status }</span></p> --%>
<%-- 										<p><span>name : ${member.name }</span></p> --%>
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
