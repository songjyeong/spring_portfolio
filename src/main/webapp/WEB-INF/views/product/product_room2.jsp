<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
.shgroup .sub_top_bg {
	background-image: url('img/sub_banner/sub_top_img1526025270.jpg')
}
</style>
<div id="container">

	<div id="shgroup" class="shgroup">
		<div class="sub_top_bg">
			<img src="img/sub_banner/sub_top_img1526025270.jpg" alt="">
		</div>
		<div class="sub_top_text_wrap">
			<div class="top_text_inner">
				<div class="top_text_cont">
					<p class="sub_top_title">객실안내</p>
				</div>
			</div>
		</div>
	</div>
	<div class="contents_wrap">
	<c:forEach var="product" items="${productList }">
		<p class="sub_location">
			<span class="loc_home">Home</span> <span class="loc_arrow">&gt;</span>
			<span class="loc_text">객실안내</span> <span class="loc_arrow">&gt;</span>
			<span class="loc_text">${product.pName }</span>
		</p>

		<div class="sub_page_title_wrap">
			<h1 class="sub_page_title">${product.pName }</h1>
			<p class="sub_top_text">당신의 여행을 더욱 즐겁고 행복하게 만들어 드립니다.</p>
		</div>

		<div class="row"
			style="margin-left: auto; margin-right: auto; margin-bottom: 0px; background-color: transparent;">
			<div style="margin: 0 auto; padding: 0px 0; max-width: 1000px;"
				class="white-space">
				<div style="margin-top: -0px; margin-left: -0px;">
					<div class="col d_col_6 t_col_6 m_col_6"
						style="padding-top: 0px; padding-left: 0px;">
						<div style="background-color: transparent;">
							<div style="word-break: break-all; margin: 0 0px 0px 0px;">




											
								<div class="glores-A-pen-detail">
									<div class="glores-A-detail-info">
										<div class="glores-A-img">
											<figure>
												<img
													src="img/preview/${product.pImage }"
													alt="${product.pName }">
											</figure>
										</div>

										<div class="glores-A-info">
											<h4 class="glores-A-name">${product.pName }</h4>
											<div class="glores-A-text">매일 매일 똑같은 일상에서 벗어나 평생 잊지 못 할
												추억을 소중한 사람과 함께 만드세요!</div>

											<dl>
												<dt>이용인원 :</dt>
												<dd>${product.pMincount }명 ~ ${product.pMaxcount }명</dd>
											</dl>

											<table class="glores-A-price-table">
												<thead>
													<tr>
														<th></th>
														<th>비수기</th>
														<th>성수기</th>
													</tr>
												</thead>

												<tbody>
													<tr>
														<th>주중</th>
														<td>${product.pPrice }원 </td>
														<td>${product.pPrice2 }원 </td>
													</tr>
													<tr>
														<th>주말</th>
														<td>${product.pPrice3 }원 </td>
														<td>${product.pPrice4 }원 </td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>

									<div class="glores-A-pen-content">
										<ul>
											<li><img
												src="img/preview/product/${product.pDetail1 }"
												alt="detail1"></li>
											<li><img
												src="img/preview/product/${product.pDetail2 }"
												alt="detail2"></li>
											<li><img
												src="img/preview/product/${product.pDetail3 }"
												alt="detail3"></li>
											<li><img
												src="img/preview/product/${product.pDetail4 }"
												alt="detail4"></li>
										
										</ul>
										<div><td>${product.pDetail5 }</td></div>
									</div>

									<div class="glores-A-btn-wrap">
										<span class="glores-A-half"> <a href="product"
											class="glores-A-btn-type1 glores-A-big">목록</a> 
										<a href="reservation/reservation_main"
											class="glores-A-btn-type1 glores-A-big glores-A-highlight">예약하기</a>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
	</div>
</div>