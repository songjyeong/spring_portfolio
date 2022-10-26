<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
					<p class="sub_top_title">커뮤니티</p>
				</div>
			</div>
		</div>
	</div>
	<div class="contents_wrap">
		<p class="sub_location">
			<span>Home</span> <span class="loc_arrow">&gt;</span>
			<span>커뮤니티</span> <span class="loc_arrow">&gt;</span>
			<span>이용후기</span>
		</p>

		<div class="sub_page_title_wrap">
			<h1 class="sub_page_title">이용후기</h1>
			<p class="sub_top_text">당신의 여행을 더욱 즐겁고 행복하게 만들어 드립니다.</p>
		</div>


		<div class="contents" style="padding: 0px;">

			<div class="row"
				style="margin-left: auto; margin-right: auto; margin-bottom: 0px; background-color: transparent;">
				<div style="margin: 0 auto; padding: 0px 0; max-width: 1000px;"
					class="white-space">
					<div style="margin-top: -0px; margin-left: -0px;">
						<div class="col d_col_6 t_col_6 m_col_6"
							style="padding-top: 0px; padding-left: 0px;">
							<div style="background-color: transparent;">
								<div style="word-break: break-all; margin: 0 0px 0px 0px;">
									<div class="scbd co-default">
										
										<div class="search">
											<input type="hidden" name="page" value="1">
											<input type="text" name="searchKeyword" id="searchKeyword" style="width: 800px" placeholder="검색어를 입력해주세요." value="${searchKeyword }">
 											<input type="button" onclick="reviewListDisplay(1)" value="검색"> 
										</div>
										<!-- head -->
										<div class="head">
											
										</div>
										<!-- // head -->

										<!-- body : 공지사항 게시글 목록 출력 영역--> 
										<div id="ReviewListDiv"></div>
										<div class="paginate">
											<div id="pageNumDiv"></div>
										</div>
									</div>
									<!-- // page navigation -->
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
	var page=1;
	var keyword="";
	var boardUrl="";
	
	reviewListDisplay(page);
	
	function reviewListDisplay(pageNum){
		
		page=pageNum;
		keyword=$("#searchKeyword").val();
		if(keyword=="") {
			boardUrl="${pageContext.request.contextPath}/review_list?pageNum="+pageNum;
		}
		else {
			boardUrl="${pageContext.request.contextPath}/review_search_list?pageNum="+pageNum+"&searchKeyword="+keyword;
		}
		$.ajax({
			type:"get",
			url: boardUrl,
			dataType: "json",
			success: function(json) {
				if(json.reviewList.length==0) {
					html="<table>";
					html+="<tr>";
					html+="<th width='800' colspan='5'>작성된 게시글이 하나도 없습니다.</th>";	
					html+="</tr>";
					html+="</table>";
					$("#ReviewListDiv").html(html);
					return;
				}		
				
				var html="<table id='ReviewTable'>";
				html+="<tr>";
				html+="<th align='center' width='50'>번호</th>";				
				html+="<th align='center' width='500'>제목</th>";
				html+="<th align='center' width='100'>작성자</th>";
				html+="<th align='center' width='150'>작성일</th>";				
				html+="<th align='center' width='50'>조회수</th>";				
				html+="</tr>";
				$(json.reviewList).each(function() {
					html+="<tr>";
					html+="<td align='center'>"+this.vNum+"</td>";
					html+="<td align='left'><a href='${pageContext.request.contextPath}/review_detail/vnum="+this.vNum+"'>["+this.rRoomName+"]"+this.vTitle+"</td>";
					html+="<td align='center'>"+this.vId+"</td>";
					html+="<td align='center'>"+this.vDate+"</td>";
					html+="<td align='center'>"+this.vCount+"</td>";
					html+="</tr>";
				});
				html+="</table>";
				
				$("#ReviewListDiv").html(html);
				
				//페이지 번호를 출력하는 함수 호출
				pageNumDisplay(json.pager);
			},
			error: function(xhr) {
				alert("에러코드(SELECT) = "+xhr.status);
			}
				
		});
	}
	//페이지 번호를 출력하는 함수
	function pageNumDisplay(pager) {
		var html="";
		
		if(pager.startPage>pager.blockSize) {
			html+="<a href='javascript:reviewListDisplay(1);'><<</a>";
			html+="<a href='javascript:reviewListDisplay("+pager.prevPage+");'><</a>";
		} else {
			html+="<<<";
		}
		
		for(i=pager.startPage;i<=pager.endPage;i++) {
			if(pager.pageNum!=i) {
				html+="<a href='javascript:reviewListDisplay("+i+");'>"+i+"</a>";
			} else {
				html+="<strong>"+i+"</strong>";
			}
		}
		
		if(pager.endPage!=pager.totalPage) {
			html+="<a href='javascript:reviewListDisplay("+pager.nextPage+");'>></a>";
			html+="<a href='javascript:reviewListDisplay("+pager.totalPage+");'>>></a>";
		} else {
			html+="<strong>></strong><strong>>></strong>";
		}
		
		$("#pageNumDiv").html(html);
	}
	


</script>