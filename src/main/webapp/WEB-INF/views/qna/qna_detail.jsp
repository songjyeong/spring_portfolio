<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
.shgroup .sub_top_bg {
	background-image:
		url('${pageContext.request.contextPath }/img/sub_banner/sub_top_img1526025270.jpg')
}
</style>
<div id="container">
	<div id="shgroup" class="shgroup">
		<div class="sub_top_bg">
			<img src="${pageContext.request.contextPath }/img/sub_banner/sub_top_img1526025270.jpg"	alt="">
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
										<div class="head"></div>
										<div class="detail">
											<div class="hgroup">
												<h1>${getqna.qTitle }</h1>
												<ul>
													<li>${getqna.qId }</li>
													<li>${getqna.qDate }</li>
												</ul>
											</div>
											<div class="conbody">${getqna.qContent }</div>
											<c:choose>
												<c:when test="${loginMember.id eq getqna.qId || loginMember.status eq '9'}">
													<div class="sbtns">
														<a href="${pageContext.request.contextPath}/qna_modify/qnum=${getqna.qNum}">
														수정
														</a> 
														<a href="${pageContext.request.contextPath}/qna_remove/${getqna.qNum}">
														삭제
														</a>
													</div>
												</c:when>
											</c:choose>
										</div>
										<div class="btngroup">
											<a href="${pageContext.request.contextPath}/qna"
												class="ui-button">목록</a>
										</div>
										<div>
										<p>댓글</p>
										<hr>
										<div class="bd">
											<form>
												<div class="bd">
													<textarea style="width:980px; height:60px;" id="content"name="content"></textarea>
													<button type="button" id="insertBtn">저장</button>
												</div>
											</form>
										</div>
										<hr>
										<div id="QnaCommentListDiv"></div>
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
	var page = 1;
	var cQnum = "";
	var boardUrl = "";

	qnaCommentListDisplay(page);
	
	function qnaCommentListDisplay(pageNum) {
		page = pageNum;
		cQnum = ${getqna.qNum};

		boardUrl = "${pageContext.request.contextPath}/comment_list?pageNum="+pageNum+"&cQnum="+cQnum;
		$.ajax({
			type : "get",
			url : boardUrl,
			dataType : "json",
			success : function(json) {
				
				if(json.commentList.length==0) {
				html="<table>";
				html+="<tr>";
				html+="<th width='800' colspan='3'>작성된 게시글이 하나도 없습니다.</th>";	
				html+="</tr>";
				html+="</table>";
				$("#QnaCommentListDiv").html(html);
				return;
				}		
				var html = "<table id='BoardTable'>";
				html += "<tr>";
				html += "<th align='center' width='100'>작성자</th>";
				html += "<th align='center' width='600'>내용</th>";
				html += "<th align='center' width='200'>작성일</th>";
				html += "<th align='center' width='100'>수정</th>";
				html += "</tr>";
				$(json.commentList).each(
					function() {
						html += "<tr id='"+this.cNum+"'>";
						html += "<td align='center' vertical-align='top'>"+ this.cId+"</td>";
						html += "<td align='left'>"+ this.cContent+"</td>";
						html += "<td align='center'>"+ this.cDate+"</td>";
						html += "<td align='center'>";
						if(this.cId.trim()=='${loginMember.id}'||${loginMember.status=='9'}){
							html += "<button onclick='modifyCommentBtn(this.id)' id="+this.cNum+">수정</button>"
							html += "<button onclick='removeComment("+this.cNum+")'>삭제</button>"
						}
						html += "</td>";
						html += "</tr>";
					});
				html += "</table>";
				$("#QnaCommentListDiv").html(html);
				pageNumDisplay(json.pager);
			},
			error : function(xhr) {
				alert("에러코드(SELECT) = " + xhr.status);
			}
		});
	}
	
	function pageNumDisplay(pager) {
		var html="";
		
		if(pager.startPage>pager.blockSize) {
			html+="<a href='javascript:qnaCommentListDisplay(1);'><<</a>";
			html+="<a href='javascript:qnaCommentListDisplay("+pager.prevPage+");'><</a>";
		} else {
			html+="<<<";
		}
		
		for(i=pager.startPage;i<=pager.endPage;i++) {
			if(pager.pageNum!=i) {
				html+="<a href='javascript:qnaCommentListDisplay("+i+");'>"+i+"</a>";
			} else {
				html+="<strong>"+i+"</strong>";
			}
		}
		if(pager.endPage!=pager.totalPage) {
			html+="<a href='javascript:qnaCommentListDisplay("+pager.nextPage+");'>></a>";
			html+="<a href='javascript:qnaCommentListDisplay("+pager.totalPage+");'>>></a>";
		} else {
			html+="<strong>></strong><strong>>></strong>";
		}
		$("#pageNumDiv").html(html);
	}
	

	$("#insertBtn").click(function() {
 		var cId="${loginMember.id}";
 		var cContent=$("#content").val();
 		cQnum = ${getqna.qNum};
 		
 		if(cId=="") {
 			alert("로그인시에만 글쓰기가 가능합니다.");
 			return;
 		}
		
 		if(cContent=="") {
 			alert("내용을 입력해 주세요.");
 			return;
 		}
		
 		$.ajax({
 			type: "post",
 			url: "${pageContext.request.contextPath}/comment_add",
 			contentType: "application/json",
 			data: JSON.stringify({"cId":cId, "cContent":cContent, "cQnum":cQnum}),
 			dataType: "text",
 			success: function (text) {
 				if(text=="success") {
 					$("#content").val("");
									
 					//게시글 목록을 검색하여 출력하는 함수 호출
 					qnaCommentListDisplay(1);
 				}
 			}, 
 			error: function(xhr) {
 				alert("에러코드(INSERT) = "+xhr.status);
 			}
		});
	});
	
	function removeComment(cnum){
		$.ajax({
			type : "delete",
			url : "${pageContext.request.contextPath}/comment_remove/"+cnum,
			dataType : "text",
			success : function(json) {
				qnaCommentListDisplay(1);			
			},
			error : function(xhr) {
				alert("에러코드(DELETE) = " + xhr.status);
			}
		});
	}
	
	function modifyCBtn(cNum){
		var data=$("#modifycontent").val();
		alert("data"+data+","+cNum);
		
		$.ajax({
 			type: "post",
 			url: "${pageContext.request.contextPath}/comment_modify",
 			contentType: "application/json",
 			data: JSON.stringify({"cNum":cNum, "cContent":data}),
 			dataType: "text",
 			success: function (text) {
 				if(text=="success") {
 					$("#content").val("");
									
 					//게시글 목록을 검색하여 출력하는 함수 호출
 					qnaCommentListDisplay(1);
 				}
 			}, 
 			error: function(xhr) {
 				alert("에러코드(INSERT) = "+xhr.status);
 			}
		});
	}
	
	function modifyCommentBtn(clicked_id){
		var cNum="";
		cNum = clicked_id;
		
		var html="";
		html+="<tr id='modify'>";
		html+="<td colspan='3'><textarea style='width:870px;' id='modifycontent' name='modifycontent'></textarea></td>";
		html+="<td align='center'><button type='button' onclick='modifyCBtn("+cNum+")'>수정</button>";
		html+="<button type='button' onclick='cancle()'>취소</button></td>";
		html+="</tr>"
		$("#"+cNum).after(html);
	}
	
	function cancle(){
		$("#modify").remove();
	}
	
	
	
</script>
