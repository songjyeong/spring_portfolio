<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
.shgroup .sub_top_bg {
	background-image: url('img/sub_banner/sub_top_img1526025270.jpg')
}
</style>
</head>
<body>
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
		<p class="sub_location">
			<span class="loc_home">Home</span> <span class="loc_arrow">&gt;</span>
			<span class="loc_text">객실안내</span> <span class="loc_arrow">&gt;</span>
			<span class="loc_text">전체보기</span>
		</p>

		<div class="sub_page_title_wrap">
			<h1 class="sub_page_title">전체보기</h1>
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




<!--  
									<nav class="glores-A-pen-category">
										<ul>
											<li class="glores-A-on"><a href="product">전체</a></li>
											<li><a href="room_list7621.html?group_idx=3062">복층,
													독채, 테라스</a></li>
											<li><a href="room_list9e79.html?group_idx=3063">커플룸</a></li>
											<li><a href="room_liste4cd.html?group_idx=3064">패밀리룸,
													독채</a></li>
											<li><a href="room_listb44a.html?group_idx=3065">독채,
													테라스, 고급형</a></li>
											<li><a href="room_list279f.html?group_idx=3066">커플룸,
													복층</a></li>
											<li><a href="room_list973b.html?group_idx=3067">패밀리룸,
													테라스</a></li>
										</ul>
									</nav>
									-->

									<div class="glores-A-pen-list">
										<p>
											* <span>객실 이미지를 클릭하여 상세정보를 확인해 주세요.</span>
										</p>
										<ul>
											
											
											
											<c:forEach var="product" items="${productList }">
											<li class=" clear3n">
												<figure>
													<a href="product_room${product.pNum }">
														<img src="img/preview/${product.pImage }" alt="">
													</a>
												</figure>
												<div>
													<span> <!-- [패밀리룸, 독채] -->${product.pName } (${product.pMincount }명 ~ ${product.pMaxcount }명)</span>
												</div>
												<div>
													<span>
													 
													</span>
												</div>
												
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
															<td> ${product.pPrice }원 </td>
															<td> ${product.pPrice2 }원 </td>
														</tr>
														<tr>
															<th>주말</th>
															<td> ${product.pPrice3 }원 </td>
															<td> ${product.pPrice4 }원 </td>
														</tr>
													</tbody>
												</table>
											</li>
											</c:forEach>
											
										</ul>
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
</body>
</html>