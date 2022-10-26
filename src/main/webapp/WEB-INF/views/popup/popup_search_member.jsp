<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>

<div style="background-color:gray; width:100%;height:80px;">
	<span style="color:white; font-size:30px;font-weight: bold; position:relative; top:25%;left:25%;">아이디,비밀번호 찾기</span>	
</div>

<div id="searchMain">
	<button type="button" id="searchId">아이디 찾기</button>
	<button type="button" id="searchPasswd">비밀번호 찾기</button>
</div>

<table border="1" id="searchTable">
	<tr id="idTable">
		<th width="100px">아이디</th>
		<td width="300px"><input type="text" id="id" name="id" size=10></td>
		<td id="idMsg"></td>
	</tr>
	<tr>
		<th width="100px">이름</th>
		<td width="300px"><input type="text" id="name" name="name" size=10></td>
		<td id="nameMsg"></td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td>
			<input type="text" id="phone1" size=1 maxlength=3 class="phone">
			<span>-</span>
			<input type="text" id="phone2" size=1 maxlength=4 class="phone">
			<span>-</span>
			<input type="text" id="phone3" size=1 maxlength=4 class="phone">
		</td>
		<td id="phoneMsg"></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td>
			<input type="text" id="emailId" size=2>
			<span>@</span>
			<input type="text" id="emailAddress" size=2>
			<select id="emailAddressSelect">
				<option value="default" selected>직접 입력</option>
				<option value="naver.com">naver.com</option>
				<option>daum.net</option>
				<option>gmail.com</option>
			</select>
		</td>
		
		<td id="emailMsg"></td>
	</tr>
	<caption style="caption-side:bottom">
		<input type="hidden" id="phone" name="phone">
		<input type="hidden" id="email" name="email">
		
		<button type="button" onclick="searchMember()">찾기</button>
		<button type="button" id="back">뒤로가기</button>
	</caption>
</table>

<table id="passwordTable" border="1">
	<tr>
		<th>현재 비밀번호</th>
		<td>
			<input type="password" id="nowPassword">
		</td>
		<td id="nowMsg"></td>
	</tr>
	<tr>
		<th>변경 비밀번호</th>
		<td>
			<input type="password" id="newPassword">
		</td>
		<td id="newMsg"></td>
	</tr>
	<tr>
		<th>변경 비밀번호 확인</th>
		<td>
			<input type="password" id="regPassword">
		</td>
		<td id="regMsg"></td>
	</tr>
	<caption style="caption-side:bottom">
		<button type="button" onclick="newPasswordBtn()">변경하기</button>
	</caption>
</table>

<div id="resultId">
	<span>아이디: </span>
	<span id="result"></span>
	<br>
	<button>비밀번호찾기</button>
	<button>닫기</button>
</div>
	
<script type="text/javascript">
var checkId=false;
var checkEmail=false;
var checkPhone=false;
var checkName=false;

var regName = /^[가-힣]{2,5}$/;
var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
var regEmail = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;

var phone,phone1,phone2,phone3;
var email,emailId,emailAddress;

var resultId="";
var resultPassword="";

var nowPassword="";
var newPassword="";
var regPassword="";

var checkNow=false;
var checkNew=false;
var checkReg=false;



$("#searchTable").hide();
$("#idTable").hide();
$("#resultId").hide();
// $("#passwordTable").hide();

$("#searchId").on("click", function() {
	checkId=true;
	$("#searchTable").show();
	$("#searchMain").hide();
});
$("#searchPasswd").on("click", function() {
	checkId=false;
	$("#searchTable").show();
	$("#idTable").show();
	$("#searchMain").hide();
});
$("#back").on("click", function() {
	$("#searchTable").hide();
	$("#idTable").hide();
	$("#searchMain").show();
});

$("#id").on("keyup",function() {
	checkId=true;
	$("#idMsg").text("");

	if($("#id").val()!='') {
		$("#idMsg").text("success");
		$("#idMsg").css('color','blue');
	} else {
		$("#idMsg").text("");
		checkId=false;
	}
	return checkId;
});



$("#name").on("keyup",function() {
	checkName=true;
	$("#nameMsg").text("");

	if(regName.test($("#name").val())) {
		$("#nameMsg").text("success");
		$("#nameMsg").css('color','blue');
	} else {
		$("#nameMsg").text("");
		checkName=false;
	}
	return checkName;
});


$(".phone").keyup(function() {
	checkPhone=true;
	
	phone1=$("#phone1").val();
	phone2=$("#phone2").val();
	phone3=$("#phone3").val();
	
	phone=phone1+"-"+phone2+"-"+phone3;

	if(regPhone.test(phone)) {
		$("#phone").val(phone);
		$("#phoneMsg").text("success");
		$("#phoneMsg").css('color','blue');
	} else {
		$("#phoneMsg").text("");
		checkPhone=false;
	}
	
	return checkPhone;	
});

$("#emailId,#emailAddress").on("keyup",function() {
	checkEmail=true;
	
	emailId=$("#emailId").val();
	emailAddress=$("#emailAddress").val();

	email=emailId+"@"+emailAddress;

	if(regEmail.test(email)) {
		$("#email").val(email);
		$("#emailMsg").text("success");
		$("#emailMsg").css('color','blue');
	} else {
		$("#emailMsg").text("");
		checkEmail=false;
	}
	return checkEmail;	
});

$("#emailAddressSelect").on("change", function() {
	checkEmail=true;
	
	emailId=$("#emailId").val();
	if($("option:selected", this).val()=="default"){
		emailAddress="";
	} else if($("option:selected", this).val()!="default") {
		emailAddress=$("option:selected", this).text();
	}
	$("#emailAddress").val(emailAddress);
	email=emailId+"@"+emailAddress;
	
	if(regEmail.test(email)) {
		$("#email").val(email);
		$("#emailMsg").text("success");
		$("#emailMsg").css('color','blue');
	} else {
		$("#emailMsg").text("");
		checkEmail=false;
	}
	return checkEmail;	
});



function searchMember() {
	if( checkId==true && checkName==true && checkPhone==true && checkEmail==true ) {
		$.ajax({
			type: "post",
			url: "${pageContext.request.contextPath }/member/search_member",
			contentType: "application/json",
			data: JSON.stringify({"id":$("#id").val(), "name":$("#name").val(), "phone":$("#phone").val(), "email":$("#email").val()}),
			dataType: "json",
			success : function(json) {
				if($("#id").val() != '') {
					$("#searchTable").hide();
					$("#idTable").hide();
					$("#passwordTable").show();
				} else if($("#id").val() =='') {
					$("#resultId").show();
					$("#searchTable").hide();
					$("#idTable").hide();
					resultId=json.member.id;
					$("#result").text(resultId);
				}
			},
			error : function(xhr) {
				alert(xhr.status);
			}
		});
	} else {
		if($("#name").val()=="") {
			$("#nameMsg").text("이름을 적으세요");
			$("#nameMsg").css('color','red');
			alert("이름을 적으세요");
			checkName=false;
		} else if(!regName.test($("#name").val())) {
			$("#nameMsg").text("이름을 확인하새요");
			$("#nameMsg").css('color','red');
			alert("이름을 확인하새요");
			checkName=false;
		} else if($("#phone").val()=="") {
			$("#phoneMsg").text("전화번호을 입력해주세요");
			$("#phoneMsg").css('color','red');
			alert("전화번호을 입력해주세요");
			checkPhone=false;
		} else if(!regPhone.test(phone)) {
			$("#phoneMsg").text("전화번호을 확인하새요");
			$("#phoneMsg").css('color','red');
			alert("전화번호을 확인하새요");
			checkPhone=false;
		} else if($("#emailId").val()=="") {
			$("#emailMsg").text("이메일 id를 적으세요");
			$("#emailMsg").css('color','red');
			alert("이메일 id를 적으세요");
			checkEmail=false;
		} else if($("#emailAddress").val()=="") {
			$("#emailMsg").text("이메일 주소를 적어주세요");
			$("#emailMsg").css('color','red');
			alert("이메일 주소를 적어주세요");
			checkEmail=false;
		} else if(!regEmail.test($("#email").val())) {
			$("#emailMsg").text("이메일 주소를 확인 해주세요");
			$("#emailMsg").css('color','red');
			alert("전화번호을 입력해주세요");
			checkEmail=false;
		}
	}
}

// $("#nowPassword").on("focusin", function() {
// 	$("#nowMsg").text("");
// });

// $("#newPassword").on("focusin", function() {
// 	$("#newMsg").text("");
// });
// $("#regPassword").on("focusin", function() {
// 	$("#newMsg").text("");
// });


// $("#nowPassword, #newPassword, #regPassword").on("keyup",function() {
	
// 	checkPassword=false;
	
// // 	$("#nowMsg").text("");
// // 	$("#newMsg").text("");
// // 	$("#regMsgs").text("");
	
	
// 	nowPassword=$("#nowPassword").val();
// 	newPassword=$("#newPassword").val();
// 	regPassword=$("#regPassword").val();
	
	
	
// 	if(nowPassword!="") {
// 		$("#nowMsg").text("success");
// 		$("#nowMsg").css('color','blue');
// // 		alert(nowPassword);
// // 		checkPassword=true;
// 	} if(newPassword!="") {
// 		$("#newMsg").text("success");
// 		$("#newMsg").css('color','blue');
// // 		alert(nowPassword);
// // 		checkPassword=true;
// 	} if(nowPassword==newPassword) {
// 		$("#newMsg").text("현재 비밀번호랑 같습니다.");
// 		$("#newMsg").css('color','red');
// // 		alert(nowPassword);
// 	} else if(regPassword==newPassword) {
// 		$("#regMsg").text("success");
// 		$("#regMsg").css('color','blue');
// // 		alert(nowPassword);
// // 		checkPassword=true;
// 	}
// // 	return checkPassword;
// });


$("#nowPassword").on("keyup", function() {
	
	nowPassword=$("#nowPassword").val();
	
	if(nowPassword == "") {
		$("#nowMsg").text("입력해주세요");
		$("#nowMsg").css('color','red');
	} else {
	 	$("#nowMsg").text("");
		checkNow=true;
}
	return checkNow;
});
$("#newPassword").on("keyup", function() {
	
	newPassword=$("#newPassword").val();
	
	if(newPassword == nowPassword && newPassword != "") {
		$("#newMsg").text("현재 비밀번호랑 같습니다.");
		$("#newMsg").css('color','red');
	} else {
	 	$("#newMsg").text("");
		checkNew=true;
	}
	return checkNew;
});
$("#regPassword").on("keyup", function() {
	
	regPassword=$("#regPassword").val();
	
	if(regPassword == newPassword) {
		$("#regMsg").text("success");
		$("#regMsg").css('color','blue');
		checkReg=true;		
	} else {
	 	$("#regMsg").text("");
	}
	return checkReg;
});

function newPasswordBtn() {
	
	nowPassword=$("#nowPassword").val();
	newPassword=$("#newPassword").val();
	regPassword=$("#regPassword").val();
	
	$.ajax({
		type: "post",
		url: "${pageContext.request.contextPath }/member/search_password",
		contentType: "application/json",
		data: JSON.stringify({"id":$("#id").val(), "password":}),
		dataType: "text",
		success : function(text) {
			alert(text);
		
		},
		error : function(xhr) {
			alert(xhr.status);
		}
	});
	
	if(nowPassword==newPassword) {
		$("#newMsg").text("현재 비밀번호랑 같습니다.");
		$("#newMsg").css('color','red');
	} else if(newPassword!=regPassword) {
		
	} else if( checkNow==true && checkNew==true && checkReg==true ) {
// 		$.ajax({
// 			type: "post",
// 			url: "${pageContext.request.contextPath }/member/new_password",
// 			contentType: "application/json",
// 			data: JSON.stringify({"id":$("#id").val(),"password":newPassword}),
// 			dataType: "text",
// 			success : function(text) {
// 				alert(text);
				
// 			},
// 			error : function(xhr) {
// 				alert(xhr.status);
// 			}
// 		});
	}
}
	
		
</script>

</div>