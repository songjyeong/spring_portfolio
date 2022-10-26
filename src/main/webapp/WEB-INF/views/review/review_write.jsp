
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.shgroup .sub_top_bg {
	background-image:
		url('${pageContext.request.contextPath }/img/sub_banner/sub_top_img1526025270.jpg')
}
</style>
<script	src="${pageContext.request.contextPath }/js/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath }/js/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/summernote/summernote-lite.css">
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
			<span class="loc_text">이용후기</span>
		</p>

		<div class="sub_page_title_wrap">
			<h1 class="sub_page_title">이용후기</h1>
			<p class="sub_top_text">당신의 여행을 더욱 즐겁고 행복하게 만들어 드립니다.</p>
		</div>


		<div class="contents">

			<div class="row" style="margin-left: auto; margin-right: auto; margin-bottom: 0px; background-color: transparent;">
				<div style="margin: 0 auto; padding: 0px 0; max-width: 1000px;" class="white-space">
					<div style="margin-top: -0px; margin-left: -0px;">
						<div class="col d_col_6 t_col_6 m_col_6" style="padding-top: 0px; padding-left: 0px;">
							<div style="background-color: transparent;">
								<div style="word-break: break-all; margin: 0 0px 0px 0px;">
									<div class="scbd co-default">
										<!-- body -->
										<form name="frmWrite" action='<c:url value='/review_add'/>'  method="post" style='margin: 0'>
											<fieldset class="writeForm">
												<div>이용후기 작성</div>
												
												<dl>
													<dt>
														<label for="review_room">방 이름</label>
													</dt>
													<dd>
														<input type="hidden" name="vRnum" value="${getRnum}" />
														${getRname}
													</dd>												
												</dl>
												
												<dl>
													<dt>
														<label for="write_name">작성자</label>
													</dt>
													<dd>
														<input type="hidden" name="vId" value="${loginMember.id}" />
														${loginMember.id} 
													</dd>
												</dl>
												
												<dl>
													<dt>
														<label for="bTitle">제목</label>
													</dt>
													<dd>
														<p>
															<input type="text" name="vTitle" id="vTitle" size="40"
																class="block" value=""/>
														</p>
													</dd>
												</dl>

												<dl>
													<dt>
														<label for="summernote">내용</label>
													</dt>
													<dd>
														<textarea class="summernote" id="summernote" name="vContent"></textarea>
													</dd>
												</dl>
											</fieldset>
											<div class="btngroup">
												<button type="submit" class="ui-button btn-highlight" id="subWriter">글쓰기</button>
												<button type="button" onclick="history.back()"
													class="ui-button">취소</button>
											</div>
										</form>
										<!-- // body -->
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


<script>
$(document).ready(function() {
	var toolbar = [
			// 글꼴 설정
		    ['fontname', ['fontname']],
		    // 글자 크기 설정
		    ['fontsize', ['fontsize']],
		    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		    // 글자색
		    ['color', ['forecolor']],
		    // 문단정렬
		    ['para', ['paragraph']],
		    // 줄간격
		    ['height', ['height']],
		    // 그림첨부, 링크만들기
		    ['insert',['picture']],
		  ];

	var setting = {
            height : 300,
            minHeight : null,
            maxHeight : null,
            focus : true,
            lang : 'ko-KR',
            toolbar : toolbar,
            callbacks : { //여기 부분이 이미지를 첨부하는 부분
            onImageUpload : function(files, editor,
            welEditable) {
            for (var i = files.length - 1; i >= 0; i--) {
            uploadSummernoteImageFile(files[i],
            this);
            		}
            	}
            }
         };

        $('#summernote').summernote(setting);
    });
    
   $('#subWriter').click(function() {
		var frmArr = ["vTitle","summernote"];
		//입력 값 널 체크
		for(var i=0;i<frmArr.length;i++){
			//alert(arr[i]);
			if($.trim($('#'+frmArr[i]).val()) == ''){
				alert('빈 칸을 모두 입력해 주세요.');
				$('#'+frmArr[i]).focus();
				return false;
			}
		}

	   
   });
    
</script>
