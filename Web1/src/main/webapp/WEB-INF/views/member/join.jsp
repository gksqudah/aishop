<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/member/header.jsp"%>
<%@ include file="../includes/header.jsp"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join JSP</title>
<style type="text/css">
table tr td {
	text-align: left;
}

/* table tr td input[name=tel] {
	width: 210px;
} */

table tr td input[name=addr] {
	width: calc(100% - 14px);
	/* {속성값 !important } 우선순위 지정 */
}

.ui-datepicker select {
	vertical-align: middle;
	height: 28px;
}
	
.valid, .invalid { 
	font-size: 11px;
	font-weight: bold; 
}

.valid { color: green; }

.invalid { color: red; }	
}

a:hover{text-decoration:none; color:white;}

</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>	
<body >
<h3><br><br>회원가입</h3>
<p class="w-pct60 right" style="margin: 0 auto; padding-bottom: 5px; font-size: 13px;">*는 필수 입력 항목입니다.</p>
<form id="join_form" method="post">
	  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>    
	<table class="w-pct60" style="margin-top:2.0em;">
		<tr style="border-bottom:hidden;">
			<th class="w-px160" style="height:5.0em; border-right:hidden;">* 성명</th>
			<td><input type="text" name="name" id="name" style="width:50%; height:2.0em;"/></td>
		</tr>
		<tr style="border-bottom:hidden;">
			<th style="height:5.0em; border-right:hidden;">* 아이디</th>
			<td>
				<input type="text" title="아이디" name="id" id="userId" class="chk" style="width:90%; height:2.0em;"/>&nbsp;&nbsp;&nbsp;<a id="btn-id" id="btn-id" class='btn-fill-s' onclick="fn_id_check();" style="">중복 확인</a><br>
				<div class='valid'>아이디를 입력하세요. (영문 소문자, 숫자만 입력 가능)</div>
			</td>
		</tr>
		<tr style="border-bottom:hidden;">
			<th style="height:5.0em; border-right:hidden;">* 비밀번호</th>
			<td>
				<input type="password" title="비밀번호" name="pw" id="userPw" class="chk" style="width:98%; height:2.0em;"/>
				<div class="valid">비밀번호를 입력하세요. (영문 대/소문자, 숫자를 모두 포함)</div>
			</td>
			
		</tr>
		<tr style="border-bottom:hidden;">
			<th style="height:5.0em; border-right:hidden;">* 비밀번호 확인</th>
			<td>
				<input type="password" title="비밀번호 확인" name="pw_ck" class="chk" style="width:98%; height:2.0em;"/>
				<div class="valid">비밀번호를 다시 입력하세요. </div>
			</td>
		</tr>
		<tr style="border-bottom:hidden;">
			<th style="height:4.0em; border-right:hidden;">* 성별</th>
			<td>
				<label><input type="radio" name="gender" value="남" checked/>남</label>
				<label><input type="radio" name="gender" value="여" />여</label>
			</td>
		</tr>
		<tr style="border-bottom:hidden;">
			<th style="height:5.0em; border-right:hidden;">* 이메일</th>
			<td>
				<input type="text" title="이메일" name="email" class="chk" id="email" style="width:98%; height:2.0em;" />
				<div class="valid">이메일을 입력하세요.</div>
			</td>
		</tr>
		<tr style="border-bottom:hidden;">
			<th style="height:4.0em; border-right:hidden;">생년월일</th>
			<td>
				<input type="text" name="birth" readonly style="width:50%; height:2.0em;" />
				<span id="delete" style="color: red; position: relative; right: 25px; display: none;"><i class="fas fa-times font-img"></i></span>
				<!-- fontawesome에서 가져온 무료 아이콘 -->
			</td>
		</tr>
		<tr style="border-bottom:hidden;">
			<th style="height:4.0em; border-right:hidden;">전화번호</th>
<!-- 		<td>
				<input type="text" name="tel" /> - 
				<input type="text" name="tel" /> - 
				<input type="text" name="tel" />
			</td> -->
			<td>
			<input
			  type="tel"
			  class="form-control m-input"
			  name="tel"
			  id="telInput"
			  required
			  pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}"
			  maxlength="13"
			  placeholder="예) 010-1234-5678"
			  style="width:98%"
			/>
			</td>
			
		</tr>
		<tr >
			<th style="height:8.0em; border-right:hidden;">주소</th>
			<td>
				<input type="text" name="post"  class="w-px60" style="width:150px; height:1.7em; margin-top:-20px;" placeholder="우편번호" readonly />
				<button class='btn-fill-s' style="background-clor:gray;  margin-left:0.5em;" onclick="daum_post()">우편번호 찾기</button><br>
				
				<input type="text" name="address1" style="margin-top:1.5em; width:49%; height:1.9em;" placeholder="도로명주소" readonly/>
				<input type="text" name="address2" style=" height:1.9em; width:49%;" placeholder="상세주소" required/>
			</td>
		</tr>
	</table>

<div class="btnSet" style=margin-bottom:50px;>
	<a class="btn-fill"  onclick="go_join()">회원가입</a>
	<a class="btn-empty" onclick="history.go(-1)">취소</a>
</div>
</form>

<!-- ?v=<new java.util.Date().getTime()>을 붙이면 기다릴 필요 없이 수정사항이 바로바로 새로고침이 된다.-->
<script type="text/javascript" src="/resources/member/join_check.js?v=<%=new java.util.Date().getTime()%>"></script>
<script type="text/javascript" src="https://cdnjs.cㄹㄱloudflare.com/ajax/libs/font-awesome/5.13.1/js/all.min.js"></script> <!-- cdnjs.com에서 가져온 fontawesome cdn 라이브러리 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>	<!-- jQuery ui -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	<!-- 다음 우편번호 api -->
<script type="text/javascript">
//아이디 중복 검사
$('#btn-id').on('click', function() {
	id_check();
});

//올바른 아이디 입력 형태인지 파악하여 유효하지 않다면 중복확인 불필요
function id_check() {
	var $id = $('[name=id]');
	if($id.hasClass('chked')) return;
	console.log('go check');
	
	var data = join.tag_status($id);
	if(data.code != 'valid') {
		alert('아이디 중복 확인해주세요.\n' + data.desc);
		$id.focus();
		return;
	}

	$.ajax({
		type: 'post',
		url: 'id_check',
		data: {id: $id.val()},
		success: function(data) {
			data = join.id_usable(data);
			display_status($id.siblings('div'), data);
			$id.addClass('chked');
		},
		error: function(req, text) {
			alert(text + ': ' + req.status);
		}
	});
}


//유효성 검사
$('.chk').on('keyup', function(){
	if($(this).attr('name') == 'id') {
		if(event.keyCode == 13) { id_check(); }
		else {
			$(this).removeClass('chked');
			validate( $(this) );
		}
	} else {
		validate($(this));
	}
});

function validate(t) {
	var data = join.tag_status(t);
	display_status(t.siblings('div'), data);
}

function display_status(div, data) {
	div.text(data.desc);
	div.removeClass();
	div.addClass(data.code)
}

// 만 13세 이상만 선택 가능하게 처리
var today = new Date();
var endDay = new Date( today.getFullYear()-13, today.getMonth(), today.getDate() );

$('[name=birth]').datepicker({
	dateFormat: 'yy-mm-dd',
	changeYear: true,
	changeMonth: true,	
	showMonthAfterYear: true,
	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	maxDate: endDay
	//beforeShowDay: after	//오늘 이후로 선택 못하게 하는 함수
});

$('[name=birth]').change(function() {
	$('#delete').css('display', 'inline-block');
});

$('#delete').click(function(){
	$('[name=birth]').val('');
	$('#delete').css('display', 'none');
});

function after(date) {
	if(date > new Date()) {
		return [false];
	} else {
		return [true];
	}
}

function daum_post() {
    new daum.Postcode({
        oncomplete: function(data) {
			$('[name=post]').val( data.zonecode );	//우편번호
            //지번 주소 : J, 도로명 주소 : R
            var address = data.userSelectedType == 'J' ? data.jibunAddress : data.roadAddress;	//클릭한 지번주소나, 도로명주소가 저장됨
            if(data.buildingName != '') {
				address += ' (' + data.buildingName + ')';	//건물 명이 있으면 건물 명을 붙여줌
            }
            $('[name=address1]').eq(0).val( address );
        }
    }).open();
}

function go_join() {
	if($("#name").val()==""){
		alert("성명을 입력해주세요.");
		$("#name").focus();
		return false;
	}
	if($("#userId").val()==""){
		alert("아이디를 입력해주세요.");
		$("#userId").focus();
		return false;
	}
	if($("#userPw").val()==""){
		alert("비밀번호를 입력해주세요.");
		$("#userPw").focus();
		return false;
	}
	if($("#email").val()==""){
		alert("이메일을 입력해주세요.");
		$("#email").focus();
		return false;
	}
/* 	  if(confirm("회원가입을 하시겠습니까?")){
	        alert("회원가입이 완료되었습니다. 감사합니다.");
	         $("form").submit();    
	    }  */



	//필수 항목의 유효성을 판단하도록 한다.
	//중복확인 한 경우
	if($('[name=id]').hasClass('chked') ) {
		//이미 사용중인 경우는 회원가입 불가
		if($('[name = id]').siblings('div').hasClass('invalid')) {
			alert('회원가입 불가\n' + join.id.unusable.desc);
			$('[name=id]').focus();
			return;
		}
	} else {
		//중복확인 하지 않은 경우
		if( !item_check($('[name=id]')) ) return;
		else {
			alert('회원가입 불가\n' + join.id.valid.desc);
			$('[name=id]').focus();
			return;
		}
	}
	
	if(!item_check($('[name=pw]'))) return;
	if(!item_check($('[name=pw_ck]'))) return;
	if(!item_check($('[name=email]'))) return;
	
	if(confirm("회원가입을 하시겠습니까?")){
		alert("회원가입이 완료되었습니다. 감사합니다.");
		$("#join_form").attr("action", "/member/join");
		$('form').submit();
	}
	
}

function item_check(item) {
	var data = join.tag_status(item);
	if(data.code == 'invalid') {
		alert('회원가입 불가! \n' + data.desc);
		item.focus();
		return false;
	} else return true;
}


//아이디 중복검사
$('.id_input').on("propertychange change keyup paste input", function(){

	var userId = $('.id_input').val();
	var data = {memberId : memberId}
	
	$.ajax({
		type: "post",
		url : "/member/memberIdChk",
		data : data,
		success:function(result){
			if(result != 'fail'){
				$('.id_input_re_1').css("display","inline-block");
				$('.id_input_re_2').css("display","none");
				idckCheck = true;
			}else{
				$('.id_input_re_2').css("display","inline-block");
				$('.id_input_re_1').css("display","none");
				idckCheck = false;
			}
		}
	})

});// function 종료


function fn_id_check(){
	$.ajax({
		url : "/member/idChk",
		type : "post",
		dataType : "json",
		data : {"id" : $("#userId").val()},
		success : function(data){
			if(data == 1){
				alert("중복된 아이디입니다.");
			}else if(data == 0){
				$("#idChk").attr("value", "Y");
				alert("사용가능한 아이디입니다.");
			}
		}
	
	
	})
}


// 전화번호 입력 관련
$('#telInput').keyup(function (event) {
	  event = event || window.event;
	  var _val = this.value.trim();
	  this.value = autoHypenTel(_val);
	});


// 전화번호 입력관련. 02, 010 등 구분 기능, 자동 - 넣기.
function autoHypenTel(str) {
	  str = str.replace(/[^0-9]/g, '');
	  var tmp = '';

	  if (str.substring(0, 2) == 02) {
	    // 서울 전화번호일 경우 10자리까지만 나타나고 그 이상의 자리수는 자동삭제
	    if (str.length < 3) {
	      return str;
	    } else if (str.length < 6) {
	      tmp += str.substr(0, 2);
	      tmp += '-';
	      tmp += str.substr(2);
	      return tmp;
	    } else if (str.length < 10) {
	      tmp += str.substr(0, 2);
	      tmp += '-';
	      tmp += str.substr(2, 3);
	      tmp += '-';
	      tmp += str.substr(5);
	      return tmp;
	    } else {
	      tmp += str.substr(0, 2);
	      tmp += '-';
	      tmp += str.substr(2, 4);
	      tmp += '-';
	      tmp += str.substr(6, 4);
	      return tmp;
	    }
	  } else {
	    // 핸드폰 및 다른 지역 전화번호 일 경우
	    if (str.length < 4) {
	      return str;
	    } else if (str.length < 7) {
	      tmp += str.substr(0, 3);
	      tmp += '-';
	      tmp += str.substr(3);
	      return tmp;
	    } else if (str.length < 11) {
	      tmp += str.substr(0, 3);
	      tmp += '-';
	      tmp += str.substr(3, 3);
	      tmp += '-';
	      tmp += str.substr(6);
	      return tmp;
	    } else {
	      tmp += str.substr(0, 3);
	      tmp += '-';
	      tmp += str.substr(3, 4);
	      tmp += '-';
	      tmp += str.substr(7);
	      return tmp;
	    }
	  }

	  return str;
	}


$('access Denied : null')
var id = $('#userId').val();			// .id_input에 입력되는 값
var data = {id : userId}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

$.ajax({
	type : "post",
	url : "/member/idChk",
	data : data,
	success : function(result){
		console.log("성공 여부" + result);
	}
}); // ajax 종료	


</script>
</body>
</html>

<%@ include file="/WEB-INF/views/member/footer.jsp"%>
<%@ include file="../includes/footer.jsp"%>