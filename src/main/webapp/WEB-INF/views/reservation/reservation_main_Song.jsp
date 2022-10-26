<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<style type="text/css">
.fc-toolbar-chunk {
	display: flex;
	align-items: center;
}
</style>

<style>
.shgroup .sub_top_bg {
	background-image:
		url('${pageContext.request.contextPath }/img/sub_banner/sub_top_img1526025270.jpg')
}
</style>
</head>
<div>
	<div id="shgroup" class="shgroup">
		<div class="sub_top_bg">
			<img src="${pageContext.request.contextPath }/img/sub_banner/sub_top_img1526025270.jpg" alt="">
		</div>
		<div class="sub_top_text_wrap">
			<div class="top_text_inner">
				<div class="top_text_cont">
					<p class="sub_top_title">예약하기</p>
				</div>
			</div>
		</div>
	</div>
	<div class="contents_wrap">
		<p class="sub_location">
			<span class="loc_home">Home</span> <span class="loc_arrow">&gt;</span>
			<span class="loc_text">예약하기</span> <span class="loc_arrow">&gt;</span>
			<span class="loc_text">실시간예약</span>
		</p>

		<div class="sub_page_title_wrap">
			<h1 class="sub_page_title">실시간예약</h1>
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
										<section class="glores-A-step1">
											<div class="glores-A-reserve-step">
												<em>날짜선택</em>
												<span class="glores-A-arrow">▶</span>
												<span>객실선택</span>
												<span class="glores-A-arrow">▶</span>
												<span>정보입력</span>
												<span class="glores-A-arrow">▶</span>
												<span>예약완료</span>
											</div>

											<div class="glores-A-sel-month">
												<a class="glores-A-prev-month" onclick="prevCalendar()" >이전 달</a> 
												<strong><span id="YearMonthSpan"></span></strong>
												<a class="glores-A-next-month"  onclick="nextCalendar()">다음 달</a>
											</div>

											<dl class="glores-A-sel-info">
												<dt>
													* <span>원하시는 날짜의 예약 가능한 방을 선택해 주세요!</span>
												</dt>
												<dd>
													<span>오늘</span> : 2022년 08월 23일
												</dd>
											</dl>

											<div class="glores-A-guide">
												<span><i class="glores-A-state glores-A-type1">신</i><b>예약가능</b></span>
												<span><i class="glores-A-state glores-A-type2">대</i><b>입금대기</b></span>
												<span><i class="glores-A-state glores-A-type3">완</i><b>예약완료</b></span>
											</div>

											<!-- 예약 달력 (pc) -->
											<div id='calendar'></div>
											<!-- // 예약 달력 (pc) -->
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
	
	<script type="text/javascript">
	
	document.addEventListener('DOMContentLoaded', function() {
		$.ajax({
    		url: '${pageContext.request.contextPath}/reservation/select_reserv',
    		type: 'GET',
    		success: function(res){
    			var list = res;
//     			console.log(list);
    			
    			
     			var calendarEl = document.getElementById('calendar');
    			
    			var events = list.map(function(item) {
//   				if(item.rcheckIn < a) {
//	 					return {}
//					},
    				return {
						title : item.rroomName,
						start : item.rcheckIn,
						end : item.rcheckOut
					}
    			});
    			
				var calendar = new FullCalendar.Calendar(calendarEl, {
					events : events,
					eventTimeFormat: { // like '14:30:00'
					    hour: '2-digit',
					    minute: '2-digit',
					    hour12: false
					},
					locale: 'ko',
					headerToolbar: {
			    		  start: "",
			    		  center: "prev title next",
			    		  end: "today",
			    	},
				});
				calendar.render();
    		},
    		error: function(xhr) {
    			alert("에러코드(search) = "+xhr.status);
    		}
    	});
      });


			






</script>
	
</div>

