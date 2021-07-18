<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- <link rel="stylesheet" href="../resources/css/admin/goodsEnroll.css"> -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<link rel="stylesheet" href="../resources/admin/productEnroll.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
 <script src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script src="https://cdn.ckeditor.com/ckeditor5/29.0.0/classic/ckeditor.js"></script>

<style>
.ck-content {					
    height: 170px;
}
</style>

</head>
<body>

		<%@include file="../includes/admin/header.jsp" %>
			
	           <div class="admin_content_main">
                    	<form action="/admin/productEnroll" method="post" id="enrollForm">
                    	 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>    
                    		
                    		<div class="form_section">
                 			   	<div class="form_section_title">
                    				<label style="color:red;">Write the product form to be registered.</label>
                    			</div>
                    		</div>
                    		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 이름</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsName">
                    			</div>
                    		</div>
                    		      
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 가격</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsPrice" value="0">
                    			</div>
                    		</div>               
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 재고</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsStock" value="0">
                    			</div>
                    		</div>          
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 할인율</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsDiscount" value="0">
                    			</div>
                    		</div>          		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 소개</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsContent">
                    			</div>
                    		</div>        	
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 이미지 주소(English)</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsImg">
                    			</div>
                    		</div>  
                    	<div class="form_section">
                   			<div class="form_section_title">
                   				<label>상품 상세 내용</label>
                   			</div>
                   			<div class="form_section_content" style="width:90%;">
                   				<textarea name="gdsDetailCon" id="gdsDetailCon_textarea"></textarea>
                   			</div>
                   		</div>	
<!--                     		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 코드</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="cateCode">
                    			</div>
                    		</div> -->
                   		</form>
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">취 소</button>
	                    		<button id="enrollBtn" class="btn enroll_btn">등 록</button>
	                    	</div> 
                    </div>  
                    
                    <%@include file="../includes/admin/footer.jsp" %>
                    
    <script>

	let enrollForm = $("#enrollForm")
	
/* 취소 버튼 */
$("#cancelBtn").click(function(){
	
	location.href="/admin/productManage"
	
});

/* 상품 등록 버튼 */
$("#enrollBtn").on("click",function(e){
	
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
	}
	if($("input[name=gdsImg]").val()==""){
		alert("모두 입력해주세요.");
		return false;
	}
	if($("input[name=gdsDiscount]").val()==""){
		alert("모두 입력해주세요.");
		return false;
	}
	
	e.preventDefault();
	
	enrollForm.submit();
	
});

ClassicEditor
.create(document.querySelector('#gdsDetailCon_textarea'), { 
    toobar :  [  'bold' ,  'italic' ,  'link' ,  'undo' ,  'redo' ,  'numberedList' ,  'bulletedList'  ] 
}  ) 
.catch(error=>{
	console.error(error);
});

</script> 	


</body>
</html>