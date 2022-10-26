<%@page import="java.util.Properties"%>
<%@page import="xyz.itwill.whitehouse.dto.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<span class="loc_text">이용후기</span>
		</p>

		<div class="sub_page_title_wrap">
			<h1 class="sub_page_title">이용후기</h1>
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
										
										<div class="head">
											
										</div>	
											
										<div class="detail">
											<div class="hgroup">
												<h1>[${getreview.rRoomName}]${getreview.vTitle }</h1>
												<ul>
													<li>${getreview.vDate }</li>
													<li>조회수 : ${getreview.vCount }</li>
												</ul>
										</div>
											<div class="conbody">${getreview.vContent }</div>
											<c:choose>
												<c:when test="${loginMember.id eq getreview.vId || loginMember.status eq '9'}">
													<div class="sbtns">
														<a href="${pageContext.request.contextPath}/review_modify/vnum=${getreview.vNum}">
														수정
														</a> 
														<a href="${pageContext.request.contextPath}/review_remove/${getreview.vNum}">
														삭제
														</a>
													</div>
												</c:when>
											</c:choose>
										</div>
										<div class="btngroup">
											<a href="${pageContext.request.contextPath}/review" class="ui-button">목록</a>
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
										<div id="ReviewCommentListDiv"></div>
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

	var reVnum = ${getreview.vNum};
	var boardUrl="";
	var reId="${loginMember.id}";

	reviewCommentListDisplay();
	// 댓글 리스트 출력 
	function reviewCommentListDisplay() {
		boardUrl = "${pageContext.request.contextPath}/recomment_list?reVnum="+reVnum;
		$.ajax({
		type : "get",
		url : boardUrl,
		dataType : "json",
		success : function(json) {
			
			if(json.recommentList.length==0) {
			html="<table>";
			html+="<tr>";
			html+="<th width='800' colspan='4'>작성된 게시글이 하나도 없습니다.</th>";	
			html+="</tr>";
			html+="</table>";
			$("#ReviewCommentListDiv").html(html);
			return;
			}		
			var html = "<table id='BoardTable'>";
			html += "<tr>";
			html += "<th align='center' width='100'>작성자</th>";
			html += "<th align='center' width='500'>내용</th>";
			html += "<th align='center' width='200'>작성일</th>";
			html += "<th align='center' width='100'>댓글달기</th>";
			html += "<th align='center' width='100'>수정</th>";
			html += "</tr>";
			$(json.recommentList).each(
				function() {
					html += "<tr id='"+this.reNum+"'>";
					html += "<td align='center' vertical-align='top'>"+ this.reId+"</td>";
					if(this.reDepth==0){
						if(this.reStatus==0){
							html += "<td align='left'>삭제된 댓글입니다.</td>";
						}else{
							html += "<td align='left'>"+ this.reContent+"</td>";
						}
					}else{
						html += "<td align='left'>"
						for(var i=0; i< this.reDepth; i++){
							html+="&emsp;"
						}
						if(this.reStatus==0){
							html += "ㄴ 삭제된 댓글입니다.</td>"
						}else{
							html += "ㄴ "+this.reContent+"</td>"
						}
					}
					html += "<td align='center'>"+ this.reDate+"</td>";
					html += "<td align='center'>";
					if(this.reId.trim()=='${loginMember.id}'||${loginMember.status=='9'}){
						if(this.reStatus!=0){
							html += "<button onclick='recommentAddBtn(this.id)' id="+this.reNum+">"
							html += "<input type='hidden' id='reGroup"+this.reNum+"' value="+this.reGroup+">"
							html += "<input type='hidden' id='reStep"+this.reNum+"' value="+this.reStep+">"
							html += "<input type='hidden' id='reDepth"+this.reNum+"' value="+this.reDepth+">"
							html += "답글</button>"
						}
					}
					html += "</td>";
					html += "<td align='center'>";
					if(this.reId.trim()=='${loginMember.id}'||${loginMember.status=='9'}){
						if(this.reStatus!=0){
							html += "<button onclick='modifyReCommentBtn(this.id)' id="+this.reNum+">수정</button>"
							html += "<button onclick='removeReComment(this.id)'  id="+this.reNum+">삭제</button>"
						}
					}
					html += "</td>";
					html += "</tr>";
				});
			html += "</table>";
			$("#ReviewCommentListDiv").html(html);
		},
		error : function(xhr) {
			alert("에러코드(SELECT) = " + xhr.status);
		},
		async: false
	});
}

// 새로운 댓글 추가 버튼 
$("#insertBtn").click(function() {
		
		var reContent=$("#content").val();
		
		if(reId=="") {
			alert("로그인시에만 글쓰기가 가능합니다.");
			return;
		}
	
		if(reContent=="") {
			alert("내용을 입력해 주세요.");
			return;
		}
	
		$.ajax({
			type: "post",
			url: "${pageContext.request.contextPath}/recomment_newadd",
			contentType: "application/json",
			data: JSON.stringify({"reId":reId, "reContent":reContent, "reVnum":reVnum}),
			dataType: "text",
			success: function (text) {
				if(text=="success") {
					$("#content").val("");
							
					//게시글 목록을 검색하여 출력하는 함수 호출
					reviewCommentListDisplay();
				}
			}, 
			error: function(xhr) {
				alert("에러코드(INSERT) = "+xhr.status);
			}
	});
});

// 댓글 추가버튼 누를 시 수정 textarea 출력
function recommentAddBtn(clicked_id){
	var reNum="";
	reNum = clicked_id;
		
	var html="";
	html+="<tr id='addrecomment'>";
	html+="<td colspan='3'><textarea style='width:870px;' id='recontent' name='recontent'></textarea></td>";
	html+="<td align='center'><button type='button' onclick='recommentNewAddBtn("+reNum+")'>"
	html+="저장</button>";
	html+="<button type='button' onclick='addcancle()'>취소</button></td>";
	html+="</tr>"
	$("#"+reNum).after(html);
}

function recommentNewAddBtn(reNum){
	var data=$("#recontent").val();
	var reGroup = $("#reGroup"+reNum).val();
	var reStep = $("#reStep"+reNum).val();
	var reDepth = $("#reDepth"+reNum).val();
	
	alert(reGroup);
	$.ajax({
		type: "post",
		url: "${pageContext.request.contextPath}/recomment_add",
		contentType: "application/json",
		data: JSON.stringify({"reId":reId,"reContent":data,"reVnum":reVnum,"reGroup":reGroup,"reDepth":reDepth,"reStep":reStep}),
		dataType: "text",
		success: function (text) {
			if(text=="success") {
				//$("#content").val("");
							
				//게시글 목록을 검색하여 출력하는 함수 호출
				reviewCommentListDisplay();
			}
		}, 
		error: function(xhr) {
			alert("에러코드(INSERT) = "+xhr.status);
		}
});
}

// 수정버튼 누를 시 텍스트 에리어 출력
function modifyReCommentBtn(clicked_id){
	var reNum="";
	reNum = clicked_id;
	var html="";
	html+="<tr id='modify'>";
	html+="<td colspan='3'><textarea style='width:870px;' id='modifycontent'></textarea></td>";
	html+="<td align='center'><button type='button' onclick='modifyrecommentBtn("+reNum+")'>수정</button>";
	html+="<button type='button' onclick='modifycancle()'>취소</button></td>";
	html+="</tr>"
	$("#"+reNum).after(html);
}

// 수정버튼 누르고 저장시 글 수정됨
function modifyrecommentBtn(reNum){
	var data=$("#modifycontent").val();
	alert("data"+data+","+reNum);
	
	$.ajax({
			type: "post",
			url: "${pageContext.request.contextPath}/recomment_modify",
			contentType: "application/json",
			data: JSON.stringify({"reNum":reNum, "reContent":data}),
			dataType: "text",
			success: function (text) {
				if(text=="success") {
					//$("#content").val("");
								
					//게시글 목록을 검색하여 출력하는 함수 호출
					reviewCommentListDisplay();
				}
			}, 
			error: function(xhr) {
				alert("에러코드(INSERT) = "+xhr.status);
			}
	});
}

// 댓글 삭제버튼 누를시 reStatus 값을 0으로 변경하고 삭제된 글입니다 출력
function removeReComment(clicked_id){
	var reNum = clicked_id;
	alert(reNum);
	$.ajax({
		type : "post",
		url : "${pageContext.request.contextPath}/recomment_remove/"+reNum,
		dataType : "text",
		success : function(json) {
			reviewCommentListDisplay();			
		},
		error : function(xhr) {
			alert("에러코드(update) = " + xhr.status);
		}
	});
}

function modifycancle(){
	$("#modify").remove();
}

function addcancle(){
	$("#addrecomment").remove();
}
</script>