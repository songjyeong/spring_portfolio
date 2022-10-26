<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="glores-A-popup-wrap">
	<div id="glores-A-popup-header">
		<h1 >비밀번호 변경</h1>
	</div>

	<div id="glores-A-popup-contents" class="glores-A-pwd-change">
		<div class="glores-A-pwd-change-txt">
			<span >비밀번호는 연속번호나 전화번호 등 타인이 알기 쉬운 숫자는 되도록 삼가 주십시오.</span><br>
			<span >패스워드는 8자 이상 영문 + 숫자+ 특수문자를 모두 조합해서 입력해주세요.</span>
			<span >패스워드는 암호화 되어 보관되므로 안심하셔도 됩니다.</span>
		</div>

		<form name='pwd_ch_form' method='post' style='margin:0'>
						<input type='hidden' name='this_domain'>
						<input type='hidden' name='post_action'>
						<input type='hidden' name='form_sess_id' value='or242bddnreaqgt6octek9i8p0'>
						<input type='hidden' name='auth_code' value='' />			<ul class="glores-A-pwd-change-form">
				<li>
					<label for="glores-A-pwd1" >기존 비밀번호</label>
					<input type="password" id="glores-A-pwd1" name="pwd" size="15" maxlength="15" class="glores-A-input-txt" style="width:150px">
				</li>				<li>
					<label for="glores-A-pwd2" >새 비밀번호</label>
					<input type="password" id="glores-A-pwd2" name="new_pwd" size="15" maxlength="15" class="glores-A-input-txt" style="width:150px">
				</li>
				<li>
					<label for="glores-A-pwd3" >새 비밀번호 확인</label>
					<input type="password" id="glores-A-pwd3" name="new_pwd2" size="15" maxlength="15" class="glores-A-input-txt" style="width:150px">
				</li>
			</ul>
		</form>	</div>

	<div id="glores-A-popup-footer">
		<a href="javascript:popup_window_close()" class="glores-A-btn-type1 glores-A-medium" >닫기</a>
		<a href="javascript:pwd_ch_form_chk()" class="glores-A-btn-type1 glores-A-medium glores-A-highlight" >변경</a>
	</div>
</div>

<script defer>
	jQuery(function($){
		//$('#glores-A-pwd1').focus();
	});



<script type="text/javascript">
function pwd_ch_form_chk(){
	var form = document.pwd_ch_form;

// 		if ( form.pwd.value.length < 1 ) {
// 		alert( "기존 비밀번호를 입력해 주십시오." );
// 		form.pwd.focus();
// 		return;
// 	}

// 	if ( form.new_pwd.value.length < 4 ) {
// 		alert( "비밀번호는 최소 4자리 이상 입력해 주세요." );
// 		form.new_pwd.focus();
// 		return;
// 	}

// 	if(form.new_pwd.value != form.new_pwd2.value ){
// 		alert("입력한 비밀번호가 서로 같지 않습니다.");
// 		form.new_pwd.focus();
// 		return;
// 	}

// 	if(!confirm( "입력한 내용으로 비밀번호를 변경하시겠습니까?")){
// 		return;
// 	}

// 			var default_action = '/shop_mypage/pwd_ch_exec.php';
// 		form.action = default_action;
// 	form.target=create_iframe();
// 	form.method = 'post';

	pwd_ch_form.action = "${pageContext.request.contextPath }/view";
	pwd_ch_form.submit();

}
</script>