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
			<span class="loc_home">Home</span> <span class="loc_arrow">&gt;</span>
			<span class="loc_text">커뮤니티</span> <span class="loc_arrow">&gt;</span>
			<span class="loc_text">공지사항</span>
		</p>

		<div class="sub_page_title_wrap">
			<h1 class="sub_page_title">공지사항</h1>
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
										<!--검색기능  -->
										<div class="search">
										
												<input type="hidden" name="page" value="1">
																																					<%--param은 안 쓰는것 --%>
<%-- 												<input type="text" name="searchKeyword" style="width: 800px" placeholder="검색어를 입력해주세요." value="${searchKeyword }"> --%>
												<input type="text" name="searchKeyword" id="searchKeyword" style="width: 800px" placeholder="검색어를 입력해주세요.">
												<input type="button" onclick="boardListDisplay(1)" value="검색">
												
										</div>
										<!-- head -->
										<div class="head">
											<c:choose>
												<c:when test="${loginMember.status eq '9'}">
												<div class="nav">
													<ul>
														<li><a href="${pageContext.request.contextPath }/board_write" class="gbg" id="writeBtn"><span>글작성</span></a></li>
													</ul>
												</div>
												</c:when>
											</c:choose>

											
										</div>
										<!-- // head -->

										<!-- body : 공지사항 게시글 목록 출력 영역--> 
										<div id="BoardListDiv"></div>
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
	
	boardListDisplay(page);
	
	function boardListDisplay(pageNum){
		page=pageNum;
		keyword=$("#searchKeyword").val();
		/* 
			주소에 파라미터 없어서 추가
		*/
		if(keyword=="") {
// 			alert("no keyword");
			boardUrl="${pageContext.request.contextPath}/board_list?pageNum="+pageNum;
		}
		else {
			boardUrl="${pageContext.request.contextPath}/board_search_list?pageNum="+pageNum+"&searchKeyword="+keyword;
		}
		alert(boardUrl);
		$.ajax({
			type:"get",
			url: boardUrl,
			dataType: "json",
			success: function(json) {
				if(json.boardList.length==0) {
					html="<table>";
					html+="<tr>";
					html+="<th width='800' colspan='4'>작성된 게시글이 하나도 없습니다.</th>";	
					html+="</tr>";
					html+="</table>";
					$("#BoardListDiv").html(html);
					return;
				}		
				
				var html="<table id='BoardTable'>";
				html+="<tr>";
				html+="<th align='center' width='70'>번호</th>";				
				html+="<th align='center' width='480'>제목</th>";				
				html+="<th align='center' width='150'>작성일</th>";				
				html+="<th align='center' width='70'>조회수</th>";				
				html+="</tr>";
				$(json.boardList).each(function() {
					html+="<tr>";
					html+="<td align='center'>"+this.bNum+"</td>";
					html+="<td align='left'><a href='${pageContext.request.contextPath}/board_detail_Song/bnum="+this.bNum+"'>"+this.bTitle+"</td>";
					html+="<td align='center'>"+this.bDate+"</td>";
					html+="<td align='center'>"+this.bCount+"</td>";
					html+="</tr>";
				});
				html+="</table>";
				
				$("#BoardListDiv").html(html);
				
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
			html+="<a href='javascript:boardListDisplay(1);'></a>";
			html+="<a href='javascript:boardListDisplay("+pager.prevPage+");'></a>";
		} else {
			html+="<<<";
		}
		
		for(i=pager.startPage;i<=pager.endPage;i++) {
			if(pager.pageNum!=i) {
				html+="<a href='javascript:boardListDisplay("+i+");'>"+i+"</a>";
			} else {
				html+="<strong>"+i+"</strong>";
			}
		}
		
		if(pager.endPage!=pager.totalPage) {
			html+="<a href='javascript:boardListDisplay("+pager.nextPage+");'></a>";
			html+="<a href='javascript:boardListDisplay("+pager.totalPage+");'></a>";
		} else {
			html+="<strong></strong><strong></strong>";
		}
		
		$("#pageNumDiv").html(html);
	}
	
	


</script>