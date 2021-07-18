<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@ page import="org.springframework.security.core.Authentication"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        

        
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <link rel="stylesheet" href="../resources/cart/cartList.css" />
	<script type="text/javascript" src="../resources/cart/cartList.js"></script>  
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="../resources/product/assets/favicon.ico" />

        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../resources/product/css/styles.css" rel="stylesheet" />
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


       <style>
        body{
       background-color:lightgray;
       }
       .card-body p-4{
       }
       .form{
       	text-align: center;
       }
       
       	a:hover {
	  color : red;
	}
       

	</style>


</head>
<body>

        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
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
                                <li><a class="dropdown-item" href="/product/phoneList">Phone</a></li>
                                 <li><a class="dropdown-item" href="/product/wearableList">Wearable</a></li>
                                  <li><a class="dropdown-item" href="/product/premiumList">Premium</a></li>
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





            <input type="hidden" name="cmd" value="order">
            <div class="basketdiv" id="basket">
            <h2 style="text-align:center; margin-top:10px;">Order List</h2>
                <div class="row head" style="margin-top:20px; width:90%; margin-left:5%; background-color: gray; color:green;">
                    <div class="subdiv">
                        <div class="check">수령자</div>
                        <div style="margin-left:17%">주문번호</div>
                        <div style="margin-left:25%" >주문일자</div>
                       
                    </div>
                    <div class="subdiv">
                     <div style="margin-left:-20%" >결제금액</div>
                        <div class="basketprice" style="width:30%;">주소</div>
                    </div>
                    <div class="subdiv">
    
                        <div class="basketcmd" style="margin-left:-4.5em;">상태</div>
                    </div>
                    <div class="split"></div>
                </div>
        
    		<c:set var="sum" value="0"/>  
         <c:forEach items="${orderList}" var="orderList" varStatus="vs">
                <div class="row data" style="margin-top:10px;  width:90%; margin-left:5%;">
                    <div class="subdiv">
                        <div class="check">${orderList.orderRec }</div>
                        <div style="margin-left:15%"><a href="/member/orderView?n=${orderList.orderId}">${orderList.orderId}</a></div>
                        <div style="margin-left:20%;">
                 	       ${orderList.orderDate }
                        </div>
                      
                    </div>
                    <div class="subdiv">
                    	  <div style="margin-left:-20%;"><span><fmt:formatNumber value="${orderList.sum}" pattern ="#,###"/></span></div>
                        <div style="margin-left:3.0em;">(${orderList.userPost }) ${orderList.userAddr1 } ${orderList.userAddr2 }</div>
                    </div>
                    
                    <div class="subdiv" style="margin-top:1.0em;">
                    	 <span>${orderList.delivery }</span>
                    </div>
                </div>
                <c:set var="sum" value="${sum + (cartList.gdsPrice * cartList.amount) }"/>
			</c:forEach>
     
        
            </div>
            <div style="text-align:center; margin-top:40%;" >
            <button type="button" class="btn btn-secondary" 
										onclick="history.back()">뒤로 가기</button>
    		</div>



<iframe name="iframe1" style="display:none;"></iframe>
    
            <!-- Footer-->
        <footer class="py-5 bg-dark" style="position:fixed; bottom:0; width:100%;">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
   
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/product/js/scripts.js"></script>



    





</body>
</html>

