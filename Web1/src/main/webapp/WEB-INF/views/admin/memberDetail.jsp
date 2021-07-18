<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/admin/memberDetail.css">

<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

 <script src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>
				<%@include file="../includes/admin/header.jsp" %>
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>회원 상세</span></div>
                    <div class="admin_content_main">
                   		
                   	<form id="modifyForm" action="/admin/memberDetail" method="post">
                   	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>   
                    
                        <div class="form_section">
                   			<div class="form_section_title">
                   				<label>회원 이름</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="name" disabled="disabled" value="<c:out value='${userInfo.name}'></c:out>" >
                   			</div>
                   		</div>
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>회원 아이디</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="id" readonly="readonly" value="<c:out value='${userInfo.id}'></c:out>">
                   				
                   			</div>
                   		</div>                    

                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>등급</label>
                   			</div>
                   			<div class="form_section_content" >
                   				<select class="input_block" name="enabled" id="en"  >
                   					<option value="none" selected disabled="disabled">=== 선택 ===</option>
                   					<option value="1" disabled="disabled" <c:out value=" ${userInfo.enabled eq '1' ?'selected':''}"/>>일반회원</option>
                   					<option value="2" disabled="disabled" <c:out value=" ${userInfo.enabled eq '2' ?'selected':''}"/>>vip</option>
                   					<option value="0" disabled="disabled" <c:out value=" ${userInfo.enabled eq '0' ?'selected':''}"/>>블랙리스트</option>
                   					
                   				</select><br><br>
                   				<input type="checkbox" id="check1" name="xxx" value="yyy" >
                   			</div>
                   		</div>
                   		
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>이메일</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="email" readonly="readonly" value="<c:out value='${userInfo.email}'></c:out>">
                   				
                   			</div>
                   		</div>
                   		
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>연락처</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="tel" readonly="readonly" value="<c:out value='${userInfo.tel}'></c:out>">
                   				
                   			</div>
                   		</div>
                   		
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>성별</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="gender" readonly="readonly" value="<c:out value='${userInfo.gender}'></c:out>">
                   				
                   			</div>
                   		</div>
                   		
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>생년월일</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="birth" readonly="readonly" value="<c:out value='${userInfo.birth}'></c:out>">
                   				
                   			</div>
                   		</div>
                   		
                   		
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>주소</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="post" readonly="readonly" value="<c:out value='${userInfo.post}'></c:out>">
                   				<input class="input_block" name="address1" readonly="readonly" value="<c:out value='${userInfo.address1}'></c:out>">
                   				<input class="input_block" name="address2" readonly="readonly" value="<c:out value='${userInfo.address2}'></c:out>">
                   				
                   			</div>
                   		</div>
                   		
                   		
                   		
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>MONEY($)</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="money" id="money" readonly="readonly" value="<c:out value='${userInfo.money}'></c:out>">
                   				<br><br>
                   					<input type="checkbox" id="check2" name="xxx" value="yyy" >
                   			</div>
                   		</div>
                   		
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>POINT($)</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="point" id="point" readonly="readonly" value="<c:out value='${userInfo.point}'></c:out>">
                   				<br><br>
                   				<input type="checkbox" id="check3" name="xxx" value="yyy" >
                   			</div>
                   		</div>
                   		
                   		
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>회원 상세 정보</label>
                   			</div>
                   			<div class="form_section_content">
                   				<textarea class="input_block" name="" readonly="readonly"><c:out value='11'/></textarea>
                   			</div>
                   		</div>
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>등록 날짜</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" type="text" readonly="readonly" value="<fmt:formatDate value="${userInfo.regDate}" pattern="yyyy-MM-dd"/>">
                   			</div>
                   		</div>
                   		
          		                   	

   
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">회원 목록</button>
	                    		<button id="modifyBtn" class="btn modify_btn">수 정</button>
	                    	</div> 
	                    	
	                    	</form>
                   		 </div>                    
                </div>
               
                
                <form id="moveForm" method="get">
                	<input type="hidden" name="id" value='<c:out value="${userInfo.id }"/>'>
                	<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'>
                	<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>' >
                	<input type="hidden" name="keyword" value='<c:out value="${cri.keyword }"/>'>
                </form>
				<%@include file="../includes/admin/footer.jsp" %>

<script>
let moveForm = $("#moveForm");
let modifyForm = $("#modifyForm");



/* 작가 상세 페이지 이동 버튼 */
$("#cancelBtn").on("click", function(e){
	
	e.preventDefault();
			
	moveForm.attr("action", "/admin/memberManage")
	moveForm.submit();
	
});



/* 작가 수정 버튼 작동 및 유효성 검사 */
$("#modifyBtn").on("click", function(e){
	let name = $(".form_section_content input[name='name']").val();
	let memberIntro = $(".form_section_content textarea").val();		
	let en = $("#en");
	let	nameCk = false;
	let introCk = false;	

	
	e.preventDefault();
	
	if(!name){
		$("#warn_name").css("display", "block");
	} else {
		$("#warn_name").css("display", "none");
		nameCk = true;
	}
	if(!memberIntro){
		$("#warn_userIntro").css("display", "block");
	} else {
		$("#warn_userIntro").css("display", "none");
		introCk = true;
	}
	
	
	
		
	
	if(nameCk && introCk ){
		modifyForm.submit();	
	} else {
		return false;
	}
	
	
});


// 회원 등급 수정 버튼 disabled 제어
$("#check1").click(function(){
	if(this.checked){
		$("option").prop("disabled", false);
		$("option").css("background", "#ccc");
	}else{
		$("option").prop("disabled", true);
		$("option").css("background", "none");
	}

	
});

$("#check2").click(function(){
	if(this.checked){
		$("#money").attr("readonly", false);
	}else{
		$("#money").attr("readonly", true);
		
	}

	
});

$("#check3").click(function(){
	if(this.checked){
		$("#point").attr("readonly", false);
	}else{
		$("#point").attr("readonly", true);
		
	}

	
});

function checkmResult(mresult){
	
	if(mresult === '1'){
		alert("회원 정보 수정을 완료하였습니다.");
	} else if(mresult === '0') {
		alert("회원 정보 수정을 하지 못하였습니다.")	
	}
	
}




</script>


</body>
</html>