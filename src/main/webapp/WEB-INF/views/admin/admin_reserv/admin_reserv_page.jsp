<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.abc {

	background-color:#f6c23e;
}


.tbodyclass td {
	height:100px;
}


</style>


<h1>예약 페이지</h1>

<div id="divCal">
	<div align="right" >
		<span style="float:right;">예약 없음</span>
		<div style="width:25px;height:25px;background-color:#7FBCD2;float:right;"></div>
		
		<span style="float:right;">예약 가능</span>
		<div style="width:25px;height:25px;background-color:#A5F1E9;float:right;"></div>
		
		<span style="float:right;">입금 대기</span>
		<div style="width:25px;height:25px;background-color:#E1FFEE;float:right;"></div>
		
		<span style="float:right;">입금 완료</span>
		<div style="width:25px;height:25px;background-color:#FFEEAF;float:right;"></div>

		<span style="float:right;">사용 완료</span>
		<div style="width:25px;height:25px;background-color:#533483;float:right;"></div>
		<br>
	</div>
	

<table border="1" style="width:100%;">
	<tr>
		<td colspan="2"><button type="button" onclick="prevCalendar()">prev</button></td>
		<td colspan="3"><span id="monthTd"></span></td>
		<td colspan="2"><button type="button" onclick="nextCalendar()">next</button></td>
	</tr>
	<tr>
		<th>일요일</th>
		<th>월요일</th>
		<th>화요일</th>
		<th>수요일</th>
		<th>목요일</th>
		<th>금요일</th>
		<th>토요일</th>
	</tr>
	<tbody id="tbodyCal" class="tbodyClass">
	
	</tbody>
</table>

<div>
	<h3>선택 날짜 조회</h3>
	
	<span id="selectDayReserv"></span>
	<hr>
	
	<table border="1">
		<tr>
			<th>예약자</th>
			<th>객실이름</th>
			<th>체크인</th>
			<th>체크아웃</th>
			<th>변경</th>
			<th>삭제</th>
		</tr>
		<tbody id="tbodySelect"></tbody>
	</table>	
</div>



<script type="text/javascript">

var nowDate=new Date();
var month=nowDate.getMonth();
var year=nowDate.getFullYear();

var select=0;
function buildCalendar() {

	var now=new Date(year,month);

	var first= new Date(now.getFullYear(),now.getMonth(),1);
	var last=new Date(now.getFullYear(),(now.getMonth()+1),0);
	
	
	$("#monthTd").text(year+"년"+(month+1)+"월");
	
	
	
	var html="";
	for(var i=1; i<=last.getDate(); i+=7 ) {
		html+="<tr>";
		for(var j=0; j<7; j++) {
			if(i+j<=1) {
				for(var x=0;x<first.getDay();x++) {
					html+="<td></td>";
					j++;
					i--;
				}
			}
			var date= new Date(year,month,i+j);
			if(nowDate<=date) {
				html += "<td class='abc' onclick='selectDay("+year+","+(month+1)+","+date.getDate()+")'>";
				html += "<span>"+(i+j)+"</span>";
				
// 				if() {
					
// 				}
				
				html += "</td>";
				select=select+1;
			} else if (nowDate.getMonth()===date.getMonth() && nowDate.getFullYear()===date.getFullYear() && nowDate.getDate()===date.getDate() ) {
				html += "<td class='abc' onclick='selectDay("+year+","+(month+1)+","+date.getDate()+")'>"+(i+j)
				html += "</td>";

			}else {
				html+="<td onclick='selectDay("+year+","+(month+1)+","+date.getDate()+")'>"+(i+j)+"</td>";
			}
			
			
			if(i+j>=last.getDate()) {
				for(var y=6; y>last.getDay(); y--) {
					html+="<td></td>";
					j++;
				}
				break;
			}
		}
		
		
		html+="</tr>";

		$('#tbodyCal').html(html);
	}
}





function prevCalendar() {
	month=month-1;
	if(month<0) {
		year=year-1;
		month=11;
	}
	buildCalendar();
}
function nextCalendar() {
	month=month+1;
	if(month>11) {
		year=year+1;
		month=0;
	}
	buildCalendar();
}
buildCalendar();




function selectDay(selectyear,selectmonth,selectday) {
	
	var html="";
	
	var select=selectyear+"-"+selectmonth+"-"+selectday;
	
	$('#selectDayReserv').text(selectyear+"년 "+selectmonth+"월 "+selectday+"일");
	
// 	alert(typeof select);

	$.ajax({
		type: "post",
		url: "${pageContext.request.contextPath}/admin/admin_reserv/select_reserv",
		contentType: "application/json",
		data: JSON.stringify({"day":select }),
		dataType: "json",
		success: function(data) {
			if(data.length==0) {
				$('#tbodySelect').html("");
				html+="<tr>";
				html+="<th width='800' colspan='6'>검색된 게시글이 하나도 없습니다.</th>";	

			}
			$(data).each(function() {
			
				$('#tbodySelect').html("");
				html+="<tr>";
				html+=	"<td>"+this.rroomName+"</td>";
				html+=	"<td>"+this.rname+"</td>";
				html+=	"<td>"+this.rcheckIn+"</td>";
				html+=	"<td>"+this.rcheckOut+"</td>";
				html+=	"<td><button type='button' onclick='modify("+this.rnum+")'>변경</button></td>";
				html+=	"<td><button type='button' onclick='remove("+this.rnum+")'>삭제</button></td>";
				html+="</tr>";
				$('#tbodySelect').html(html);
			});
		},
			
		
			
		error: function(xhr) {
			alert("에러코드(search) = "+xhr.status);
		}
	});
}

	
function modify(num) {
	$(location).attr('href','${pageContext.request.contextPath}/admin/admin_reserv/update/'+num);
}

function remove(num) {
	if(confirm("게시글을 정말로 삭제 하시겠습니까?")) {
		$.ajax({
			type: "delete",
			url: "${pageContext.request.contextPath}/admin_reserv/delete/"+num,
			dataType: "text",
			success: function (text) {
				if(text=="success") {
					//게시글 목록을 검색하여 출력하는 함수 호출
					buildCalendar();
				}
			}, 
			error: function(xhr) {
				alert("에러코드(DELETE) = "+xhr.status);
			}
		});
	}
}

</script>


</div>