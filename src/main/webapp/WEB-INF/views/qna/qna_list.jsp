<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<div class="contents_wrap">
		<p class="sub_location">
			<span class="loc_home">Home</span> <span class="loc_arrow">&gt;</span>
			<span class="loc_text">커뮤니티</span> <span class="loc_arrow">&gt;</span>
			<span class="loc_text">Q&A</span>
		</p>

		<div class="sub_page_title_wrap">
			<h1 class="sub_page_title">Q&A</h1>
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
									<div class="scbd co-default">
										<!-- head -->
										<div class="search">
											<input type="hidden" name="page" value="1">
											<input type="text" name="searchKeyword" id="searchKeyword" style="width: 800px" placeholder="검색어를 입력해주세요." value="${searchKeyword }">
 											<input type="button" onclick="qnaListDisplay(1)" value="검색"> 
										</div>
										
										<div class="head">
											<c:choose>
												<c:when test="${loginMember.status eq '9'}">
												<div class="nav">
													<ul>
														<li><a href="${pageContext.request.contextPath }/qna_write" class="gbg"><span>글작성</span></a></li>
													</ul>
												</div>
												</c:when>
											</c:choose>
											<!-- 요거는 우선 로그인시 버튼 보이게 해놨지만 나중에 비로그인 사람들은 로그인 하라고 안내메세지 띄울겅 -->
<!-- 											<ul>						 -->
<%-- 												<li><a href="${pageContext.request.contextPath }/qna_write" class="gbg"><span>글작성</span></a></li> --%>
<!-- 											</ul> -->
										</div>
										
										
											<div id="QnaListDiv"></div>
										<!-- page navigation -->
										<div class="paginate">
											<div id="pageNumDiv"></div>
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
	</div>
</div>


<script type="text/javascript">
	var page=1;
	var keyword="";
	var boardUrl="";
	
	qnaListDisplay(page);
	
	function qnaListDisplay(pageNum){
		page=pageNum;
		keyword=$("#searchKeyword").val();
		
		if(keyword=="") {
			boardUrl="${pageContext.request.contextPath}/qna_list?pageNum="+pageNum;
		}
		else {
			boardUrl="${pageContext.request.contextPath}/qna_search_list?pageNum="+pageNum+"&searchKeyword="+keyword;
		}
		
		$.ajax({
			type:"get",
			url: boardUrl,
			dataType: "json",
			success: function(json) {
				if(json.qnaList.length==0) {
					html="<table cellspacing='0' border='0'>";
					html+="<tr>";
					html+="<tr>";
					html+="<th width='800' colspan='4'>작성된 게시글이 하나도 없습니다.</th>";	
					html+="</tr>";
					html+="</table>";
					$("#QnaListDiv").html(html);
					return;
				}		
				
				
				
				var html="<table cellspacing='0' border='0' id='BoardTable'>";
				html+="<tr>";
				html+="<th align='center' width='70'>번호</th>";				
				html+="<th align='center' width='400'>제목</th>";
				html+="<th align='center' width='130'>작성자</th>";
				html+="<th align='center' width='150'>작성일</th>";				
				html+="</tr>";
				$(json.qnaList).each(function() {
						
					html+="<tr>";
					html+="<td align='center'>"+this.qNum+"</td>";
					if(this.qStatus=='2'){
						if(this.qId.trim()=='${loginMember.id}'||${loginMember.status=='9'}){
							html+="<td align='left'><a href='${pageContext.request.contextPath}/qna_detail/qnum="+this.qNum+"'>"+this.qTitle+"</td>";	
						}else{
							html+="<td align='left'>비밀글입니다.</td>";
						}
					}else{
	 					html+="<td align='left'><a href='${pageContext.request.contextPath}/qna_detail/qnum="+this.qNum+"'>"+this.qTitle+"</td>";						
					}
					html+="<td align='center'>"+this.qId.trim()+"</td>";
					html+="<td align='center'>"+this.qDate+"</td>";
					html+="</tr>";
			
				});
				html+="</table>";
				
				$("#QnaListDiv").html(html);
				
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
			html+="<a href='javascript:qnaListDisplay(1);'><<</a>";
			html+="<a href='javascript:qnaListDisplay("+pager.prevPage+");'><</a>";
		} else {
			html+="<<<";
		}
		
		for(i=pager.startPage;i<=pager.endPage;i++) {
			if(pager.pageNum!=i) {
				html+="<a href='javascript:qnaListDisplay("+i+");'>"+i+"</a>";
			} else {
				html+="<strong>"+i+"</strong>";
			}
		}
		
		if(pager.endPage!=pager.totalPage) {
			html+="<a href='javascript:qnaListDisplay("+pager.nextPage+");'>></a>";
			html+="<a href='javascript:qnaListDisplay("+pager.totalPage+");'>>></a>";
		} else {
			html+="<strong>></strong><strong>>></strong>";
		}
		
		$("#pageNumDiv").html(html);
	}
	

</script>
