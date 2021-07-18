<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>     
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Item - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="../resources/product/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../resources/product/css2/styles.css" rel="stylesheet" />
        <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
        
       <style>
footer{
	position:fixed; bottom:0; width:100%;
}	


<style>
 section.replyForm { padding:30px 0; }
 section.replyForm div.input_area { margin:10px 0; }
 section.replyForm textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:500px;; height:150px; }
 section.replyForm button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
 
 section.replyList { padding:30px 0; }
 section.replyList ol { padding:0; margin:0; }
 section.replyList ol li { padding:10px 0; border-bottom:2px solid #eee; }
 section.replyList div.userInfo { }
 section.replyList div.userInfo .userName { font-size:24px; font-weight:bold; }
 section.replyList div.userInfo .date { color:#999; display:inline-block; margin-left:10px; }
 section.replyList div.replyContent { padding:10px; margin:20px 0; }
 
 
</style>

    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="position:fixed; width:100%; top:0;">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/">AI Shop</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="/product/index">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                                <li><a class="dropdown-item" href="/product/phoneList">Phone</a></li>
                                 <li><a class="dropdown-item" href="/product/wearableList">Wearable</a></li>
                                  <li><a class="dropdown-item" href="/product/premiumList">Premium</a></li>
                            </ul>
                        </li>
                    </ul>
                         <button class="btn btn-outline-dark" class="" onClick="location.href='/member/cartList'" >
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill" ></span>
                        </button>
                </div>
            </div>
        </nav>
        <!-- Product section-->
        <section class="py-5" style="background-color:lightgray;">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" style="width:80%;" src="../resources/img/product/${productInfo.gdsImg }1.jpg" alt="..." /></div>
                    <div class="col-md-6">
                        <div class="small mb-1">SKU: BST-${productInfo.gdsNum }</div>
                        <h1 class="display-5 fw-bolder">${productInfo.gdsName }</h1>
                        <div class="fs-5 mb-5">
<!--                             <span class="text-decoration-line-through">$45.00</span> -->
                            <span><h4>$${productInfo.gdsPrice }</h4></span>
                        </div>
                        <p class="lead">${productInfo.gdsDetailCon }</p>
                       
                       <form name="form1" method="post" id="addCart" target="param" >
                           <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>    
                           <input type="hidden" name="gdsNum" value="${productInfo.gdsNum }">
                           <input type="hidden" name="gdsName" value="${productInfo.gdsName }">
                            <input type="hidden" name="userId" value="${member.id }">
                        <div class="d-flex">
                        
                            <input class="form-control text-center me-3" name="amount" id="inputQuantity" type="num" value="1" style="max-width: 3rem" />
                            <button class="btn btn-outline-dark flex-shrink-0" type="submit" id="addCart_btn">
                                <i class="bi-cart-fill me-1"></i>
                                Add to cart
                            </button>
                            
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        
        
        
        
        
        
        <!-- Related items section-->
        <section class="py-5 bg-light" >
            <div class="container px-4 px-lg-5 mt-5">
                <h4 class="fw-bolder mb-4">상품 후기/문의</h4>
                
                	<div id="reply">
                	    
						 <section class="replyForm">
						  <form role="form" method="post" autocomplete="off" target="param">
						   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>  
						  
						  <input type="hidden" name="gdsNum" value="${productInfo.gdsNum }">
						  
						  	<div class="input_area">
						  		<textarea name="repCon" id="repCon" style="width:100%; height:10.em;"></textarea>
						  	</div>
						  	
						  	<div>
						  		<button type="submit" id="reply_btn" >글 남기기</button>
						  	</div>
						  </form>
						 </section>
						 
	
						 <section class="replyList">
						 	 <ol  style="list-style:none;">
						 <c:forEach items="${reply}" var="reply">
						
						  <li>
						      <div class="userInfo">
						       <span class="userName">${reply.userName}</span>
						       <span class="date"><fmt:formatDate value="${reply.repDate}" pattern="yyyy-MM-dd" /></span>
						      </div>
						      <div class="replyContent">${reply.repCon}</div>
						    </li>
						   </c:forEach>
						  </ol>    
						</section>

					</div>
					
 
                	
                	<!-- 페이지 이름 인터페이스 영역 -->
                	<div class="pageMaker_wrap" style="text-align:center;">
                		<ul class="pageMaker" style=" list-style:none;">
                			
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
                	
                	
                	
                	<form id="moveForm" action="/product/detail" method="get" >
 						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
                	</form>
                	

            </div>
            
        </section>
        
        
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">Related products</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

  
				<c:forEach items ="${list }" var="list">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" style="height:10.0em;"src="../resources/img/product/${list.gdsImg }2.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">${list.gdsName }</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price--> 
                                    $${list.gdsPrice } 
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        
        
        
        
        
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        
        
            <iframe style="Z" name="param" style="display:none;" ></iframe>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/product/js2/scripts.js"></script>
        
        <script>
/*    let addCartForm = $("#addCart");
 $("#addCart_btn").click(function(){
		e.preventDefault();
			
		
			if(result ==1){
			alert("장바구니 담기 성공");
			$("input[name=amount]").val("1");
			addCartForm.attr("action", "/product/detail")
			addCartForm.submit();
		}else{
			alert("로그인 후 진행해 주세요.")
			$("input[name=amount]").val("1");
		}
		})  */

		let addCart = $("#addCart");
 
		  $("#addCart_btn").click(function(){
			 var con = confirm("장바구니에 등록하시겠습니까?")
			 if(con){
			  alert("장바구니에 등록했습니다.")}
			
				addCart.attr("action", "/product/detail/addCart")
				addCart.submit();
		  });
		  
		  
		  /* 페이지 이동 버튼 */
		  $(".pageMaker_btn a").on("click", function(e){
		  	
		  	e.preventDefault();
		  	
		  	moveForm.find("input[name='pageNum']").val($(this).attr("href"));
		  	
		  	moveForm.submit();
		  	
		  });
 
		  /* 검색 버튼 동작 */
		  $("#searchForm button").on("click", function(e){
		  	
		  	e.preventDefault();
		  	
		  	
		  	searchForm.find("input[name='pageNum']").val("1");
		  	
		  	searchForm.submit();
		  	
		  });
		  


</script>

		  <script> 
		  var gdsNum = ${view.gdsNum};
		  $.getJSON("/product/detail" + "?" + gdsNum, function(data){
		   var str = "";
		   
		   $(data).each(function(){
		    
		    console.log(data);
		    
		    var repDate = new Date(this.repDate);
		    repDate = repDate.toLocaleDateString("ko-US")
		    
		    str += "<li data-gdsNum='" + this.gdsNum + "'>"
		      + "<div class='userInfo'>"
		      + "<span class='userName'>" + this.userName + "</span>"
		      + "<span class='date'>" + repDate + "</span>"
		      + "</div>"
		      + "<div class='replyContent'>" + this.repCon + "</div>"
		      + "</li>";           
		   });
		   
		   $("section.replyList ol").html(str);
		  });
		 </script>

        
        
    </body>
</html>
<%@ include file="../includes/footer.jsp"%>
