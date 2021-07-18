<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/admin/productDetail2.css">

<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
<script src="https://cdn.ckeditor.com/ckeditor5/29.0.0/classic/ckeditor.js"></script>
  
</head>
<body>
				<%@include file="../includes/admin/header.jsp" %>
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>상품 상세</span></div>
                    <div class="admin_content_main">
                   		
                   	<form id="Form" name="Form" method="post">
                   	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>   
                    
                        <div class="form_section">
                   			<div class="form_section_title">
                   				<label>상품 번호</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="gdsNum" disabled="disabled" value="<c:out value='${productInfo.gdsNum}'></c:out>" >
                   			</div>
                   		</div>
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>상품명</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="gdsName"  value="<c:out value='${productInfo.gdsName}'></c:out>">
                   				
                   			</div>
                   		</div>                    

                   		
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>상품가격($)</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="gdsPrice"  value="<c:out value='${productInfo.gdsPrice}'></c:out>">
                   				
                   			</div>
                   		</div>   
                   		
                    	<div class="form_section">
                   			<div class="form_section_title">
                   				<label>상품재고</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="gdsStock"  value="<c:out value='${productInfo.gdsStock}'></c:out>">
                   				
                   			</div>
                   		</div>                     		
                   		
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>상품 내용</label>
                   			</div>
                   			<div class="form_section_content">
                   				<textarea class="input_block" name="gdsContent" ><c:out value='${productInfo.gdsContent }'/></textarea>
                   			</div>
                   		</div>
                   		
                   	<div class="form_section">
                   			<div class="form_section_title">
                   				<label>상품할인률(%)</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="gdsDiscount"  value="<c:out value='${productInfo.gdsDiscount}'></c:out>">
                   				
                   			</div>
                   		</div>   
                   		
                      	<div class="form_section">
                   			<div class="form_section_title">
                   				<label>상품이미지명</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="gdsImg"  value="<c:out value='${productInfo.gdsImg}'></c:out>">
                   				
                   			</div>
                   		</div>          
                   		
                   		   <div class="form_section" >
	                   		   <div class="form_section_title">
	                   				<label>카테고리</label>
	                   			</div>
	                   			<div class="form_section_content" >
                   				<select class="input_block" name="cateCode" id="en" style="width:92%; height:35px; text-align:center; margin-left:30px;" >
                   					<option value="none" selected  style="text-align:center; " >&nbsp;&nbsp;=== 선택 ===</option>
                   					<option value="100" <c:out value=" ${productInfo.cateCode eq '100' ?'selected':''}"/>>&nbsp;&nbsp;phone</option>
                   					<option value="200"  <c:out value=" ${productInfo.cateCode eq '200' ?'selected':''}"/>>&nbsp;&nbsp;wearable</option>
                   					<option value="300"  <c:out value=" ${productInfo.cateCode eq '300' ?'selected':''}"/>>&nbsp;&nbsp;premium</option>
                   					 
                   				</select><br><br>
                   				</div>
                   			</div>     
                   			
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>상품 상세 내용</label>
                   			</div>
                   			<div class="form_section_content">
                   				<textarea name="gdsDetailCon" id="gdsDetailCon_textarea"><c:out value='${productInfo.gdsDetailCon }'/></textarea>
                   			</div>
                   		</div>
                   			     		
                   		
          
                   		
<%--                    		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>카테고리</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="gdsCatecode"  value="<c:out value='${productInfo.cateCode}'></c:out>">
                   				
                   			</div>
                   		</div>   --%>           		
                   		
                   		
                   		
<%--                    		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>등록 날짜</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" type="text" readonly="readonly" value="<fmt:formatDate value="${userInfo.regDate}" pattern="yyyy-MM-dd"/>">
                   			</div>
                   		</div> --%>
                   		

                   		                   		                   	

   
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">상품 목록</button>
	                    		<button id="modifyBtn" class="btn modify_btn">수 정</button>
	                    		<button id="deleteBtn" class="btn delete_btn" style="color:red">삭 제</button>
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



/* 상품 상세 페이지 이동 버튼 */
$("#cancelBtn").on("click", function(e){
	
	e.preventDefault();
			
	moveForm.attr("action", "/admin/productManage")
	moveForm.submit();
	
});



/* 상품 수정 버튼 작동 및 유효성 검사 */
$("#modifyBtn").on("click", function(e){
	if($("input[name=gdsName]").val()==""){
		alert("모두 입력해주세요.");
		return false;
	}
	if($("input[name=gdsPrice]").val()==""){
		alert("모두 입력해주세요.");
		return false;
	}
	if($("input[name=gdsStock]").val()==""){
		alert("모두 입력해주세요.");
		return false;
	}
	if($("input[name=gdsContent]").val()==""){
		alert("모두 입력해주세요.");
		return false;
	}	if($("input[name=gdsImg]").val()==""){
		alert("모두 입력해주세요.");
		return false;
	}	if($("input[name=gdsDiscount]").val()==""){
		alert("모두 입력해주세요.");
		return false;
	}

	let name = $(".form_section_content input[name='gdsName']").val();
	let productIntro = $(".form_section_content textarea").val();		
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
	if(!productIntro){
		$("#warn_userIntro").css("display", "block");
	} else {
		$("#warn_userIntro").css("display", "none");
		introCk = true;
	}
	
		
	
	if(nameCk && introCk ){
		document.Form.action="/admin/productDetail";
		document.Form.submit();	
	} else {
		return false;
	}
	
	
});


$("#deleteBtn").on("click", function(e){
	
	var con = confirm("정말 상품을 삭제 하시겠습니까?")
	
	if(con){
		document.Form.action="/admin/productDelete";
		document.Form.submit();
	}
	
});





function checkmResult(mresult){
	
	if(mresult === '1'){
		alert("상품 정보 수정을 완료하였습니다.");
	} else if(mresult === '0') {
		alert("상품 정보 수정을 하지 못하였습니다.")	
	}
	
}


//위지윅 적용
	ClassicEditor
		.create(document.querySelector('#gdsDetailCon_textarea'), { name: 'colors', items : [ 'TextColor','BGColor' ] },{ 
	        toolbar :  [  'bold' ,  'italic' ,  'link' ,  'undo' ,  'redo' ,  'numberedList' ,  'bulletedList'  ] 
	    }  ) 
		.catch(error=>{
			console.error(error);
		});




</script>


</body>
</html>