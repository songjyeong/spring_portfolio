<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="header">
	<div class="h_left">
		<div class="logo ">
			<h1>
				<span>
					<a href="${pageContext.request.contextPath }" class="normal_logo">
						<img src="<c:url value="/img/logo_1.png"/>" alt="">
					</a>
					<a href="${pageContext.request.contextPath }" class="over_logo">
						<img src="<c:url value="/img/logo_2.png"/>" alt="">
					</a>
				</span>
			</h1>
			<!-- <button id="toggle_left" class="m_toggle_btn" data-target="left_side">Toggle Left Side</button> -->
			<button id="toggle_right" class="m_toggle_btn" data-target="right_side">Toggle Right Side</button>
		</div>


		<div class="lnb_p_all_wrap">
			<a href="#" class="btn_lnb_all_p">
				<span>전체메뉴 열기</span>
			</a>
			<a href="#" class="btn_lnb_all_close">
				<span>CLOSE</span>
			</a>
			<div id="lnb_p_all" class="lnb_p_all">
				<!-- 1 Depth -->
				<ul class="dep1">
<!-- 					<li> -->
<!-- 						<div class="dep1_li_inner"> -->
<!-- 							<a href="page/page1.html"> -->
<!-- 								<span>펜션소개</span> -->
<!-- 							</a> -->
<!-- 							<div> -->
<!-- 								2 Depth -->
<!-- 								<ul class="dep2"> -->
<!-- 									<li> -->
<!-- 										<a href="page/page1.html"> -->
<!-- 											<span>인사말</span> -->
<!-- 										</a> -->
<!-- 									</li> -->
<!-- 									<li> -->
<!-- 										<a href="myboard/ma_galler4.html"> -->
<!-- 											<span>외부전경</span> -->
<!-- 										</a> -->
<!-- 									</li> -->
<!-- 									<li> -->
<!-- 										<a href="page/page3.html"> -->
<!-- 											<span>주변관광지</span> -->
<!-- 										</a> -->
<!-- 									</li> -->
<!-- 									<li> -->
<!-- 										<a href="page/page4.html"> -->
<!-- 											<span>오시는길</span> -->
<!-- 										</a> -->
<!-- 									</li> -->
<!-- 								</ul> -->
<!-- 								// 2 Depth -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</li> -->
					<li>
						<div class="dep1_li_inner">
							<a href="${pageContext.request.contextPath }/product">
								<span>객실안내</span>
							</a>
							<div>
								<!-- 2 Depth -->
								<ul class="dep2">
									<li>
										<a href="${pageContext.request.contextPath }/product">
											<span>전체보기</span>
										</a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath }/product_room1" target="_self">
											<span>에메랄드룸</span>
										</a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath }/product_room2" target="_self">
											<span>사파이어룸</span>
										</a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath }/product_room3" target="_self">
											<span>루비룸</span>
										</a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath }/product_room4" target="_self">
											<span>오팔룸</span>
										</a>
									</li>
								</ul>
								<!-- // 2 Depth -->
							</div>
						</div>
					</li>
<!-- 					<li> -->
<!-- 						<div class="dep1_li_inner"> -->
<!-- 							<a href="page/page5.html"><span>서비스</span></a> -->
<!-- 							<div> -->
<!-- 								2 Depth -->
<!-- 								<ul class="dep2"> -->
<!-- 									<li><a href="page/page5.html"><span>편의시설</span></a></li> -->
<!-- 									<li><a href="page/page6.html"><span>실내스파</span></a></li> -->
<!-- 									<li><a href="page/page7.html"><span>조식제공</span></a></li> -->
<!-- 									<li><a href="page/page8.html"><span>테라스바베큐</span></a></li> -->
<!-- 									<li><a href="page/page15.html"><span>픽업서비스</span></a></li> -->
<!-- 								</ul> -->
<!-- 								// 2 Depth -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</li> -->
					<li>
						<div class="dep1_li_inner">
							<a href="${pageContext.request.contextPath }/reservation/reservation_info"><span>예약하기</span></a>
							<div>
								<!-- 2 Depth -->
								<ul class="dep2">
									<li><a href="${pageContext.request.contextPath }/reservation/reservation_info">예약안내</a></li>
									<li><a href="${pageContext.request.contextPath }/reservation/reservation_main">실시간예약</a></li>
								</ul>
								<!-- // 2 Depth -->
							</div>
						</div>
					</li>
					<li>
						<div class="dep1_li_inner">
							<a href="${pageContext.request.contextPath }/board"><span>커뮤니티</span></a>
							<div>
								<!-- 2 Depth -->
								<ul class="dep2">
									<li>
										<a href="${pageContext.request.contextPath }/board"><span>공지사항</span></a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath }/qna"><span>Q&A</span></a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath }/review"><span>이용후기</span></a>
									</li>
								</ul>
								<!-- // 2 Depth -->
							</div>
						</div>
					</li>
					<li>
						<div class="dep1_li_inner">
							<a href="${pageContext.request.contextPath }/test/hello"><span>TEST</span></a>
							<div>
								<!-- 2 Depth -->
								<ul class="dep2">
									<li><a href="${pageContext.request.contextPath }/test/hello">Test-hello</a></li>
									<li><a href="${pageContext.request.contextPath }/test/search">Test-search</a></li>
								</ul>
								<!-- // 2 Depth -->
							</div>
						</div>
					</li>

				</ul>
				<!-- // 1 Depth -->
			</div>
		</div>




















		<div id="lnb_p" class="lnb_p">
			<!-- 1 Depth -->
			<ul class="dep1">
<!-- 				<li role="toggle"><a href="page/page1.html"><span>펜션소개</span></a> -->
<!-- 					<div> -->
<!-- 						2 Depth -->
<!-- 						<ul class="dep2"> -->
<!-- 							<li><a href="page/page1.html">인사말</a></li> -->
<!-- 							<li><a href="myboard/ma_galler4.html">외부전경</a></li> -->
<!-- 							<li><a href="page/page3.html">주변관광지</a></li> -->
<!-- 							<li><a href="page/page4.html">오시는길</a></li> -->
<!-- 						</ul> -->
<!-- 						// 2 Depth -->
<!-- 					</div> -->
<!-- 				</li> -->
				<li role="toggle"><a href="${pageContext.request.contextPath }/product"><span>객실안내</span></a>
					<div>
						<!-- 2 Depth -->
						<ul class="dep2">
							<li>
								<a href="${pageContext.request.contextPath }/product">전체보기</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath }/product_room1" target="_self">에메랄드룸</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath }/product_room2" target="_self">사파이어룸</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath }/product_room3" target="_self">루비룸</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath }/product_room4" target="_self">오팔룸</a>
							</li>
						</ul>
						<!-- // 2 Depth -->
					</div>
				</li>

<!-- 				<li role="toggle"><a href="page/page5.html"><span>서비스</span></a> -->
<!-- 					<div> -->
<!-- 						2 Depth -->
<!-- 						<ul class="dep2"> -->
<!-- 							<li><a href="page/page5.html">편의시설</a></li> -->
<!-- 							<li><a href="page/page6.html">실내스파</a></li> -->
<!-- 							<li><a href="page/page7.html">조식제공</a></li> -->
<!-- 							<li><a href="page/page8.html">테라스바베큐</a></li> -->
<!-- 							<li><a href="page/page15.html">픽업서비스</a></li> -->
<!-- 						</ul> -->
<!-- 						// 2 Depth -->
<!-- 					</div> -->
<!-- 				</li> -->
				<li role="toggle">
					<a href="${pageContext.request.contextPath }/reservation/reservation_info"><span>예약하기</span></a>
					<div>
						<!-- 2 Depth -->
						<ul class="dep2">
							<li><a href="${pageContext.request.contextPath }/reservation/reservation_info">예약안내</a></li>
							<li><a href="${pageContext.request.contextPath }/reservation/reservation_main">실시간예약</a></li>
							<li><a href="${pageContext.request.contextPath }/reservation/reserv_search">예약확인</a></li>
						</ul>
						<!-- // 2 Depth -->
					</div></li>
				<li role="toggle">
					<a href="${pageContext.request.contextPath }/board"><span>커뮤니티</span></a>
					<div>
						<!-- 2 Depth -->
						<ul class="dep2">
							<li><a href="${pageContext.request.contextPath }/board">공지사항</a></li>
							<li><a href="${pageContext.request.contextPath }/qna">Q&A</a></li>
							<li><a href="${pageContext.request.contextPath }/review">이용후기</a></li>
						</ul>
						<!-- // 2 Depth -->
					</div>
				</li>
				<li role="toggle">
					<a href="${pageContext.request.contextPath }/test/hello"><span>TEST</span></a>
					<div>
						<!-- 2 Depth -->
						<ul class="dep2">
							<li><a href="${pageContext.request.contextPath }/test/hello">Test-hello</a></li>
							<li><a href="${pageContext.request.contextPath }/test/search">Test-search</a></li>
						</ul>
						<!-- // 2 Depth -->
					</div>
				</li>
			</ul>
			<!-- // 1 Depth -->
		</div>
	</div>

	<div class="h_right">
		<div class="gnb_p">
			<div class="gnb_list">
				<ul>


					<!-- 로그인 전후 분류별 메뉴 -->
					<li class="gnb_point">
						<a href="${pageContext.request.contextPath }/admin">★ADMIN</a>
					</li>

					<c:choose>
						<c:when test="${empty(loginMember)}">
							<li><a href="${pageContext.request.contextPath }/login">로그인</a></li>
							<li><a href="${pageContext.request.contextPath }/join">회원가입</a></li>

						</c:when>
						<c:otherwise>
							<c:choose>
								<c:when test="${loginMember.status eq '9' }">
										<li><a>관리자님 어서오세요</a></li>
									<li><a href="${pageContext.request.contextPath }/view">마이페이지</a></li>
									<li><a href="${pageContext.request.contextPath }/logout">로그아웃</a></li>
								</c:when>
								<c:otherwise>
									<li><a>${loginMember.name }님 어서오세요</a></li>
									<li><a href="${pageContext.request.contextPath }/view">마이페이지</a></li>
									<li><a href="${pageContext.request.contextPath }/logout">로그아웃</a></li>
									<li><a href="${pageContext.request.contextPath }/reserv">예약확인</a></li>
								</c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</div>
</div>





<aside id="right_side" class="viewport_side">
	<h1>
		<a href="${pageContext.request.contextPath }">
			<img src="${pageContext.request.contextPath }/img/logo_2.png" alt="">
		</a>
	</h1>
	<button type="button" class="btn_side_close">CLOSE</button>

	<div class="v_side_inner">
		<div class="side_lnb">
			<!-- 1 Depth -->
			<ul class="dep1">

<!-- 				<li role="toggle"> -->
<!-- 					<a href="page/page1.html">펜션소개</a> -->
<!-- 					<div> -->
<!-- 						2 Depth -->
<!-- 						<ul class="dep2"> -->
<!-- 							<li> -->
<!-- 								<a href="page/page1.html">인사말</a> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="myboard/ma_galler4.html">외부전경</a> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="page/page3.html">주변관광지</a> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="page/page4.html">오시는길</a> -->
<!-- 							</li> -->
<!-- 						</ul> -->
<!-- 						// 2 Depth -->
<!-- 					</div> -->
<!-- 				</li> -->



				<li role="toggle">
					<a href="${pageContext.request.contextPath }/product">객실안내</a>
					<div>
						<!-- 2 Depth -->
						<ul class="dep2">
							<li>
								<a href="${pageContext.request.contextPath }/product">전체보기</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath }/product_room1" target="_self">에메랄드룸</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath }/product_room2" target="_self">사파이어룸</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath }/product_room3" target="_self">루비룸</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath }/product_room4" target="_self">오팔룸</a>
							</li>
						</ul>
						<!-- // 2 Depth -->
					</div>
				</li>


<!-- 				<li role="toggle"> -->
<!-- 					<a href="page/page5.html">서비스</a> -->
<!-- 					<div> -->
<!-- 						2 Depth -->
<!-- 						<ul class="dep2"> -->
<!-- 							<li> -->
<!-- 								<a href="page/page5.html">편의시설</a> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="page/page6.html">실내스파</a> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="page/page7.html">조식제공</a> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="page/page8.html">테라스바베큐</a> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a href="page/page15.html">픽업서비스</a> -->
<!-- 							</li> -->
<!-- 						</ul> -->
<!-- 						// 2 Depth -->
<!-- 					</div> -->
<!-- 				</li> -->



				<li role="toggle">
					<a href="${pageContext.request.contextPath }/reservation/reservation_info">예약하기</a>
					<div>
						<!-- 2 Depth -->
						<ul class="dep2">
							<li><a href="${pageContext.request.contextPath }/reservation/reservation_info">예약안내</a></li>
							<li><a href="${pageContext.request.contextPath }/reservation/reservation_main">실시간예약</a></li>
						</ul>
						<!-- // 2 Depth -->
					</div>
				</li>
				<li role="toggle">
					<a href="bbs/rwdboard.html">커뮤니티</a>
					<div>
						<!-- 2 Depth -->
						<ul class="dep2">
							<li>
								<a href="${pageContext.request.contextPath }/board">공지사항</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath }/qna">Q&A</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath }/review">이용후기</a>
							</li>
						</ul>
						<!-- // 2 Depth -->
					</div>
				</li>
				<li role="toggle">
					<a href="${pageContext.request.contextPath }/test/hello"><span>TEST</span></a>
					<div>
						<!-- 2 Depth -->
						<ul class="dep2">
							<li><a href="${pageContext.request.contextPath }/test/hello">Test-hello</a></li>
							<li><a href="${pageContext.request.contextPath }/test/search">Test-search</a></li>
						</ul>
						<!-- // 2 Depth -->
					</div>
				</li>
			</ul>
			<!-- // 1 Depth -->
		</div>





		<div class="side_gnb">
			<ul class="dep1">

			<c:choose>
				<c:when test="${empty(loginMember)}">
					<li><a href="${pageContext.request.contextPath }/login">로그인</a></li>
					<li><a href="${pageContext.request.contextPath }/join">회원가입</a></li>

				</c:when>
				<c:otherwise>
					<c:choose>
						<c:when test="${loginMember.status eq '9' }">
							관리자님 어서오세요
							<li><a href="${pageContext.request.contextPath }/view">마이페이지</a></li>
							<li><a href="${pageContext.request.contextPath }/logout">로그아웃</a></li>
						</c:when>
						<c:otherwise>
							${loginMember.name }님 어서오세요
							<li><a href="${pageContext.request.contextPath }/view">마이페이지</a></li>
							<li><a href="${pageContext.request.contextPath }/logout">로그아웃</a></li>
							<li><a href="${pageContext.request.contextPath }/reserv">예약확인</a></li>
						</c:otherwise>
					</c:choose>
				</c:otherwise>
			</c:choose>


			</ul>
			<!-- 로그인 전후 분류별 메뉴 -->

			<div class="gnb_point_btn">
				<a href="${pageContext.request.contextPath }/admin">★ ADMIN</a>
			</div>
		</div>
	</div>
</aside>