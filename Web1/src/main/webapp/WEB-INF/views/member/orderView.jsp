<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page
	import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@ page import="org.springframework.security.core.Authentication"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

 section#content ul li { border:5px dotted #B0C4DE; padding:10px 20px; margin-bottom:20px; }
 section#content .orderView span { font-size:20px; font-weight:bold; display:inline-block; width:90px; margin-right:10px; }

 
 footer{
	position:fixed; bottom:0; width:100%;
}
        body{
       background-color:lightgray;
       }
       .card-body p-4{
       }
       .form{
       	text-align: center;
       }
       
       ul{
   list-style:none;
   }
     #list {
     border:5px dotted #B0C4DE; padding:10px 20px; margin-bottom:20px; 
        
    }
    

   
   
</style>

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../resources/product/css/styles.css" rel="stylesheet" />
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>



</head>
<body>

        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-kcolor:black;">
            <div class="container px-4 px-lg-5" >
                <a class="navbar-brand" href="/product/index">AI SHOP</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="/">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">Phone</a></li>
                                 <li><a class="dropdown-item" href="#!">Tablet</a></li>
                                  <li><a class="dropdown-item" href="#!">Wearable</a></li>
                                   <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="d-flex">
                         <button class="btn btn-outline-dark" type="submit" onClick="location.href='/orderView'" >
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill" ></span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>



<div style="text-align:center; margin-top:40px;" ><h1>주문확인 영수증</h1></div>
<section id="content" style="width:60%; margin-left:20%;">


			<div class="orderInfo" style="font-size:20px; margin-top:45px; margin-left:20px; text-align:center; border: 1px solid blue;">
				<c:forEach items="${orderView}" var="orderView" varStatus="status">

					<c:if test="${status.first}">
						 <p>
					 		<span  style="font-weight:bold;">주문번호 : </span>${orderView.orderId}</p>
					 	<p>
							<span style="font-weight:bold;">주문일 : </span>${orderView.orderDate}</p>
						<p>
							<span  style="font-weight:bold;">주문자 : </span>${orderView.userId}</p>

						<p>		
						<p>
							<span style="font-weight:bold;">수령인 : </span>${orderView.orderRec}</p>
						<p>
							<span style="font-weight:bold;">연락처 : </span>${orderView.orderTel}</p>
						<p>	
						<p>
							<span style="font-weight:bold;">주소 : </span>(${orderView.userPost}) ${orderView.userAddr1}
							${orderView.userAddr2}
						</p>
						<p>
							<span style="font-weight:bold;">총 결제금액 : </span>
							<fmt:formatNumber pattern="###,###,###"
								value="${orderView.sum}" />
							원
						</p>
					</c:if>

				</c:forEach>
			</div>
 
   <c:forEach items="${orderView}" var="orderView">
 <ul class="orderView" style="margin-top:30px;" >

  <li style="height:200px;" >
  <div class="list" style="width:100%">
  <div class="right" style="float:right; width:50%;">
      <p><span>상품명</span><a href="/product/detail?gdsName=${orderView.gdsName}">${orderView.gdsName}</a></p>
         <p><span>개수</span>${orderView.amount}</p>
   <p><span>가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.gdsPrice }" /> $ * ${orderView.amount } = <fmt:formatNumber pattern="###,###,###" value="${orderView.gdsPrice * orderView.amount * 1150 }"/> 원</p>
   </div>
   <div class="left" style="width:50%;">
     <p><span >상품</span><img src="../resources/img/product/${orderView.gdsImg }2.jpg"  style="height:100px;"> </p></div>
  </div>
  </li>
 
 </ul>
  </c:forEach>

</section>

			<div style="margin-bottom:50px; margin-top:20px; text-align:center;">
				<input class="btn btn-secondary" id="cancelBtn" value="뒤로가기"  style="margin-top:2.1em;"> 
			</div>	
				<br><br><br><br><br><br><br><br>



        <!-- Footer-->
        <footer class="py-5 bg-dark" style=" border-top:1px solid #ccc;">
            <div class="container"><p class="m-0 text-center text-white">kr.icia.com <br>Copyright &copy; Your Website 2021</p></div>
        </footer>
     
             <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/product/js/scripts.js"></script>
        
        <script>
        $("#cancelBtn").click(function(){
        	
        	location.href="javascript:history.back()"
        	
        });
        
        </script>
        
     </body>
    
    </html>
    

