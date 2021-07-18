<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/admin/orderList.css">

<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>

<script
	src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>



</head>

<style>
.orderInfo {
	border: 5px solid #eee;
	padding: 10px 20px;
	margin: 20px 0;
}

.orderInfo span {
	font-size: 20px;
	font-weight: bold;
	display: inline-block;
	width: 90px;
}

.orderView li {
	margin-bottom: 20px;
	padding-bottom: 20px;
	border-bottom: 1px solid #999;
}

.orderView li::after {
	content: "";
	display: block;
	clear: both;
}

.thumb {
	float: left;
	width: 200px;
}

.thumb img {
	width: 200px;
	height: 200px;
}

.gdsInfo {
	float: right;
	width: calc(100% - 220px);
	line-height: 2;
}

.gdsInfo span {
	font-size: 20px;
	font-weight: bold;
	display: inline-block;
	width: 100px;
	margin-right: 10px;
}

.deliveryChange { text-align:right; }
.delivery1_btn,
.delivery2_btn { font-size:16px; background:#fff; border:1px solid #999; margin-left:10px; }
</style>

</head>
<body>


	<%@include file="../includes/admin/header.jsp"%>
	<div class="admin_content_wrap">
		<div class="admin_content_subject">
			<span>주문 상세</span></div>
		
		<div class="admin_content_main">


			<div class="orderInfo" style="font-size:20px;">
				<c:forEach items="${orderView}" var="orderView" varStatus="status">

					<c:if test="${status.first}">
						<p>
							<span>주문자</span>${orderView.userId}</p>
						<p>
							<span>수령인</span>${orderView.orderRec}</p>
						<p>
							<span>주소</span>(${orderView.userPost}) ${orderView.userAddr1}
							${orderView.userAddr2}
						</p>
						<p>
							<span>연락처</span>${orderView.orderTel }
						</p>						
						<p>
							<span>총액</span>
							<fmt:formatNumber pattern="###,###,###"
								value="${orderView.sum}" />
							원
						</p>
						
						
						<p>
							<span>배송 상태</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${orderView.delivery }
						</p>
						
						<div class="deliveryChange">
						 <form role="form" method="post" class="deliveryForm" action="/admin/orderView">
						 	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>   
 

						    <input  type="hidden" name="orderId" value="${orderView.orderId}" />
 							 <input type="hidden" name="delivery" class="delivery" value="" />
 							 
							  <button type="button" class="delivery1_btn" style="color:blue; size:15px;">배송 중</button>
 							 <button type="button" class="delivery2_btn" style="color:green;">배송 완료</button>
 							 

 							 
 					 <script>
 					   $(".delivery1_btn").click(function(){
 						    $(".delivery").val("배송 중");
 						    run();
 						   });
 						   
 						   $(".delivery2_btn").click(function(){
 						    $(".delivery").val("배송 완료");
 						    run();
 						    
 						   });
 						   
 						   function run(){
 						    $(".deliveryForm").submit();
 						  	
 						   }
					  </script>
 						 </form>	 
						</div>
						
						
					</c:if>
					
				</c:forEach>
			</div>

			<ul class="orderView">
				<c:forEach items="${orderView}" var="orderView">
					<li>
						<div class="thumb">
							<img src="../resources/img/product/${orderView.gdsImg}2.jpg" />
						</div>
						<div class="gdsInfo" style="font-size:15px; ">
							<p>
								<span>상품명</span>${orderView.gdsName}<br /> <span>가격</span>
								<fmt:formatNumber pattern="###,###,###"
									value="${orderView.gdsPrice }" />
								$<br /> <span>구입 수량</span>${orderView.amount} 개<br /> <span>주문
									금액</span>
								<fmt:formatNumber pattern="###,###,###"
									value="${orderView.gdsPrice * 1150* orderView.amount}" />
								원
							</p>
						</div>
					</li>
				</c:forEach>
			</ul>





			<div class="btn_section" >
				<button id="cancelBtn" class="btn" onClick="location.href='/admin/orderList'">주문 목록</button>
				<button id="modifyBtn" class="btn modify_btn">배송 변경</button>
			</div><br>

		</div>
</div>



                 <form id="moveForm" method="get">
                	<input type="hidden" name="id" value='<c:out value="${userInfo.id }"/>'>
                	<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'>
                	<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>' >
                	<input type="hidden" name="keyword" value='<c:out value="${cri.keyword }"/>'>
                </form>
		

		<script>
			let moveForm = $("#moveForm");
			let modifyForm = $("#modifyForm");

			/* 작가 상세 페이지 이동 버튼 */
			$("#cancelBtn").on("click", function(e) {

				e.preventDefault();

				moveForm.attr("action", "/admin/orderList")
				moveForm.submit();

			});







		</script>
</body>
</html>
<%@include file="../includes/admin/footer.jsp"%>