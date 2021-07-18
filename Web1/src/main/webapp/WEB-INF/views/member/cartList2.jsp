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
        

        
        
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="../resources/product/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../resources/product/css/styles.css" rel="stylesheet" />
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
          
          

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	

       <style>
       
/*        #slideshow{ margin:0 auto; position:relative; height: 300px; border-bottom: 1px solid dimgrey; }
       
        #slideshow > div { position:absolute;} */

       </style>
       <style>
        body{
       background-color:lightgray;
       }
       .card-body p-4{
       }
       
/*        section{
       background-image:url('../resources/img/tec/coding2.jpg');
       background-size:3000px;
       width:100%;
       height:90%;

       }  */


    <style>
      body { padding: 0px; margin: 0px; }
      .jb-box { width: 100%; height: 500px; overflow: hidden;margin: 0px auto; position: relative; }
      video { width: 100%;  }
      .jb-text { position: absolute; top: 50%; width: 100%; }
      .jb-text p { margin-top: -24px; text-align: center; font-size: 48px; color: #ffffff; }
      
    </style>
       
       
        
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">	
	
	

</head>
<body>

        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/">AI SHOP</a>
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
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>




    <!-- 전체선택 -->
    <th><input type="checkbox" name="allCheck" id="allCheck" checked/></th>

     <!-- 카트리스트 body -->
    <c:forEach items="${cartList}" var="cartList">
        <tr>
            <td class="product-close"><input type="checkbox" onClick="itemSum()" class="chkbox"
                    value="${cartList.gdsPrice * cartList.amount}" data-cartNum="${cartList.cartNum}" /></td>
                    <!-- 생략 -->
        </tr>
    </c:forEach>
     <!-- ./카트리스트 body -->


    <!-- 주문지 작성 -->
    <form action="/shop/cartList" method="post" autocomplete="off" id="orderForm">
    <section id="content">
 
 <ul>
  <c:forEach items="${cartList}" var="cartList">
  <li>
   <div class="thumb">
    <img src="../resources/img/product/${cartList.gdsImg}2.jpg"  style="width:200px;"/>
   </div>
   <div class="gdsInfo">
    <p>
     <span>상품명 : </span>${cartList.gdsName}<br />
     <span>개당 가격 : </span><fmt:formatNumber pattern="###,###,###" value="${cartList.gdsPrice}" /><br />
     <span>구입 수량 : </span>${cartList.amount}<br />
     <span>최종 가격 : </span><fmt:formatNumber pattern="###,###,###" value="${cartList.gdsPrice * cartList.amount}" />

    </p>    
   </div>
   <div>
   	<span>합계 : </span>        
           <fmt:formatNumber pattern="###,###,###" 
                    value="${cartList.gdsPrice * cartList.amount}" />
   </div>
   
   
  </li>
  </c:forEach>
 </ul>
</section>
    
    
    
    
        <input type="hidden" name="amount" id="amount" value="" />
        <input type="hidden" name="chk[]" id="chk" value="" />
        <!-- 생략 -->

            <button type="button" class="btn btn-primary" id="orderSuccess">주문 완료</button>
            
            
            

    </form>
    <!-- ./주문지 작성 -->
    
            <!-- Footer-->
        <footer class="py-5 bg-dark" style="position:fixed; bottom:0; width:100%;">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
   
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/product/js/scripts.js"></script>


    <!-- 페이지 들어오자마자 체크박스  체크 -->
    <script>
        //무조건 html 아래에 배치해서 사용자가 페이지에 들어오자마자 적용되게 해주자
        var tt = "${cart}";
        if (tt == 'false') {
            $("#allCheck").prop("checked", false);
        } else {
            $("#allCheck").prop("checked", true);
            $(".chkbox").prop("checked", true);
            itemSum();
        }

    </script>
    
        <!-- 금액 총 합계  -->
    <script>
        function itemSum(){
           var str = "";
           var sum = 0;
           var count = $(".chkbox").length;
           for(var i=0; i < count; i++ ){
               if( $(".chkbox")[i].checked == true ){
                sum += parseInt($(".chkbox")[i].value);
               }
           }
           $("#total_sum").html(sum+" 원");
           $("#amount").val(sum);
        }
    </script>
    
                <script>
                $("#orderSuccess").click(function () {
                    var checkArr = new Array();
                    //checked 되어있는 row에 data-cartNum 속성 값을 가져와 Array에 넣어준다. 
                    $("input[class='chkbox']:checked").each(function () {
                        checkArr.push($(this).attr("data-cartNum"));
                    });

                    //input hidden으로 되어있는 id가 chk에 배열을 넣어준다.
                    //넣어주면 chk[]이름으로 controller에 넘어가 method에서 @RequestParam으로 받기만 해주면 된다.
                    //Param으로는 안된다.

                    $("#chk").val(checkArr); //

                    if (confirm("주문완료 하시겠습니까?")) {
                        alert("주문 감사합니다.");
                        $("#orderForm").submit();
                    }

                });
            </script>
            
                  <!-- 체크박스를 하나라도 풀면 전체선택 체크박스를 푸는 스크립트 -->
     <script>
       $(".chkbox").click(function(){
        $("#allCheck").prop("checked", false);
      });
     </script>
     
     
    <!-- 금액 총 합계  -->
    <script>
        function itemSum(){
           var str = "";
           var sum = 0;
           var count = $(".chkbox").length;
           for(var i=0; i < count; i++ ){
               if( $(".chkbox")[i].checked == true ){
                sum += parseInt($(".chkbox")[i].value);
               }
           }
           $("#total_sum").html(sum+" 원");
           $("#amount").val(sum);
        }
    </script>



    <script>
            $("#allCheck").click(function(){
            var chk = $("#allCheck").prop("checked");
            if(chk) {
                $(".chkbox").prop("checked", true);
                    itemSum();
            } else {
                 $(".chkbox").prop("checked", false);
                itemSum();
            }
        });
    </script>

</body>
</html>

