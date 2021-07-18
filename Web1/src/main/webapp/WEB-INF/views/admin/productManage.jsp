<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../resources/admin/productManage.css">

<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>
	
	
			<%@include file="../includes/admin/header.jsp" %>
			
			  <div class="admin_content_wrap">
			                  <div class="admin_content_subject"><span>상품 관리</span></div>
			                  
			                                    <div class="goods_table_wrap">
                    	<!-- 상품 리스트 O -->
	                    <c:if test="${listcheck != 'empty'}">
	                    	<table class="goods_table">
	                    		<thead>
	                    			<tr>
										<td class="th_column_1">상품 번호</td>
	                    				<td class="th_column_2">상품 이름</td>
	                    				<td class="th_column_3">상품 가격</td>
	                    				<td class="th_column_5">내용</td>
	                    				<td class="th_column_6">재고</td>
	                    			</tr>
	                    		</thead>	
	                    		<c:forEach items="${list}" var="list">
	                    		<tr>
	                    			<td><c:out value="${list.gdsNum}"></c:out></td>
	                    			
	                    			<td><a class="move" href='<c:out value="${list.gdsName}"/>'>
	                    					<c:out value="${list.gdsName}"></c:out>
	                    				</a>
	                    			
	                    			<td><c:out value="${list.gdsPrice}"></c:out>$</td>
	                    			<td><c:out value="${list.gdsContent}"></c:out></td>
	                    			<td><c:out value="${list.gdsStock}"></c:out></td>
	                    		</tr>
	                    		</c:forEach>
	                    	</table>
	                    </c:if>
	                    <!-- 상품 리스트 X -->
                		<c:if test="${listCheck == 'empty'}">
                			<div class="table_empty">
                				등록된 상품이 없습니다.
                			</div>
                		</c:if> 
                	</div>
                	
                	<!-- 검색 영역 -->
                	<div class="search_wrap">
                		<form id="searchForm" action="/admin/productManage" method="get">
                			<div class="search_input">
                    			<input type="text" placeholder="상품명 검색" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"></c:out>'>
                    			<input type="hidden" name="pageNum" value='<c:out value="${pageMaker.cri.pageNum }"></c:out>'>
                    			<input type="hidden" name="amount" value='${pageMaker.cri.amount}'>
                    			<input type="hidden" name="type" value="G">
                    			<button class='btn search_btn'>검 색</button>                				
                			</div>
                		</form>
                	</div>
                	
                	<!-- 페이지 이름 인터페이스 영역 -->
                	<div class="pageMaker_wrap">
                		<ul class="pageMaker">
                			
                			<!-- 이전 버튼 -->
                			<c:if test="${pageMaker.prev }">
                				<li class="pageMaker_btn prev">
                					<a href="${pageMaker.startPage -1}">이전</a>
                				</li>
                			</c:if>
                			
                			<!-- 페이지 번호 -->
                			<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="num">
                				<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? 'active':''}">
                					<a href="${num}">${num}</a>
                				</li>	
                			</c:forEach>
                		
	                    	<!-- 다음 버튼 -->
	                    	<c:if test="${pageMaker.next}">
	                    		<li class="pageMaker_btn next">
	                    			<a href="${pageMaker.endPage + 1 }">다음</a>
	                    		</li>
	                    	</c:if>
	                    </ul>
                	</div>
                	
                	
                	
                	<form id="moveForm" action="/admin/productManage" method="get" >
 						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
						<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
                	</form>
			</div>
			
			<%@include file="../includes/admin/footer.jsp" %>


<script>
$(document).ready(function(){
	
	let eResult = '<c:out value="${enroll_result}"/>';
	let mResult = '<c:out value="${modify_result}"/>';
	let dResult = '<c:out value="${delete_result}"/>';
	
	checkResult(eResult);
	checkmResult(mResult);
	checkdResult(dResult);
	
	function checkResult(result){
		
		if(eResult === ''){
			return;
		}
		
		alert("상품 '"+ eResult +"'을 등록하였습니다.");
		
	}
	
	function checkmResult(mResult){
		
		if(mResult === '1'){
			alert("상품 정보 수정을 완료하였습니다.");
		} else if(mResult === '0') {
			alert("상품 정보 수정을 실패했습니다.")	
		}
		
	}
	
	function checkdResult(dResult){
		
		if(dResult === '1'){
			alert("상품 삭제를 완료하였습니다.");
		} else if(dResult === '0') {
			alert("상품 삭제에 실패했습니다.")	
		}
		
	}

});



let searchForm = $('#searchForm');
let moveForm = $('#moveForm');

/* 작거 검색 버튼 동작 */
$("#searchForm button").on("click", function(e){
	
	e.preventDefault();
	
	/* 검색 키워드 유효성 검사 */
	if(!searchForm.find("input[name='keyword']").val()){
		alert("키워드를 입력하십시오");
		return false;
	}
	
	searchForm.find("input[name='pageNum']").val("1");
	
	searchForm.submit();
	
});


/* 페이지 이동 버튼 */
$(".pageMaker_btn a").on("click", function(e){
	
	e.preventDefault();
	
	moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	
	moveForm.submit();
	
});

/* 상품 이름 클릭시 수정가능한 상세 페이지 이동 */
$(".move").on("click", function(e){
	
	e.preventDefault();
	
	moveForm.append("<input type='hidden' name='gdsName' value='"+ $(this).attr("href") + "'>");
	moveForm.attr("action", "/admin/productDetail");
	moveForm.submit();
	
});
</script>

</body>
</html>