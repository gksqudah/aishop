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
    
    a{
    text-decoration-line : none;
    }   
	  a:link {
	  color : #696969;
	}

	a:hover {
	  color : red;
	}
	a:active {
	  color : green
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
                         <button class="btn btn-outline-dark" type="submit" onClick="location.href='/member/cartList'" >
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill" ></span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>





  <form name="orderform" id="orderform" method="post" class="orderform" action="/Page" onsubmit="return false;" style="width:80%; margin-left:10%;">
            <input type="hidden" name="cmd" value="order">
            <div class="basketdiv" id="basket">
            <h2 style="text-align:center; margin-top:20px;">Cart List</h2>
                <div class="row head" style="margin-top:30px;">
                    <div class="subdiv">
                        <div class="check">선택</div>
                        <div class="img">이미지</div>
                        <div class="pname" style="margin-left:-10.0em;">상품명</div>
                    </div>
                    <div class="subdiv">
                        <div class="basketprice">가격</div>
                        <div class="num">수량</div>
                        <div class="sum">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;합계</div>
                    </div>
                    <div class="subdiv">
    
                        <div class="basketcmd">삭제</div>
                    </div>
                    <div class="split"></div>
                </div>
        
    		<c:set var="sum" value="0"/>  
         <c:forEach items="${cartList}" var="cartList" varStatus="vs">
                <div class="row data" style="margin-top:15px; margin-left:2px;">
                    <div class="subdiv">
                        <div class="check"><input type="checkbox" name="buy" value="260" checked="" onclick="javascript:basket.checkItem();">&nbsp;</div>
                        <div class="orderId" style="padding-left:2%;"><img src="../resources/img/product/${cartList.gdsImg }2.jpg" width="100" height="70" style="margin-top:-40px;"></div>
                        <div class="orderRec">
                            <span style="padding-left:14.0em; "><a href="/product/detail?gdsNum=${cartList.gdsNum}" >${cartList.gdsName }</a></span>
                            <input type="hidden" name="gdsNum" value="${cartList.gdsNum }"/>
                        </div>
                    </div>
                    <div class="subdiv">
                        <div class="basketprice" style="margin-top:-15px;"><input type="hidden" name="p_price" id="p_price1" class="p_price" value="${cartList.gdsPrice }"><fmt:formatNumber value="${cartList.gdsPrice }" pattern="#,###"/>$</div>
                        <div class="num" style="margin-top:-20px;"  >
                            <div class="updown" >
                                <input type="text" name="p_num1${vs.count }" id="p_num1" size="2" maxlength="4" style="height:50px;" class="p_num" value="${cartList.amount }" onkeyup="javascript:basket.changePNum(1);">
                                <span id="up${vs.count }" onclick="javascript:basket.changePNum(1);" ><i class="fas fa-arrow-alt-circle-up up"></i></span>
                                <span id="down${vs.count }" onclick="javascript:basket.changePNum(1);" ><i class="fas fa-arrow-alt-circle-down down"></i></span>
                            </div>
                        </div>
                        <div class="sum" style="margin-top:-15px;"><fmt:formatNumber value="${cartList.gdsPrice * cartList.amount }" pattern ="#,###"/>$</div>
                    </div>
                    <div class="subdiv">
                        <div class="basketcmd" style="margin-top:-15px;"><a href="${path}/member/cartList/deleteCart.do?gdsNum=${cartList.gdsNum}" target="iframe1" class="abutton" onclick="javascript:basket.delItem();">삭제</a></div>
                    </div>
                </div>
                <c:set var="sum" value="${sum + (cartList.gdsPrice * cartList.amount) }"/>
			</c:forEach>
     
        
            </div>
    
            <div class="right-align basketrowcmd">
                <a href="javascript:void(0)" class="abutton" id="deleteCart" onclick="javascript:basket.delCheckedItem();">선택상품삭제</a>
                <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delAllItem();">장바구니비우기</a>
            </div>
    
            <div class="bigtext right-align sumcount" id="sum_p_num"  style="text-align: center; margin-top:200px;">상품개수: 개</div>
            <div class="bigtext right-align box blue summoney" id="sum_p_price" style="text-align: center;" >합계금액: </div>
            <div class="bigtext right-align box blue summoney" id="sum_p_price2" style="text-align: center;"></div>
            <div id="goorder" class="">
                <div class="clear"></div>
                <div class="buttongroup center-align cmd">
<!--                     <a href="javascript:void(0);">선택한 상품 주문</a> -->
					<a href="/member/orderform">선택한 상품 주문</a>
                </div>
            </div>
        </form>

<iframe name="iframe1" style="display:none;"></iframe>
    
            <!-- Footer-->
        <footer class="py-5 bg-dark" style="position:fixed; bottom:0; width:100%;">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
   
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/product/js/scripts.js"></script>


<!--     페이지 들어오자마자 체크박스  체크
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
            
                  체크박스를 하나라도 풀면 전체선택 체크박스를 푸는 스크립트
     <script>
       $(".chkbox").click(function(){
        $("#allCheck").prop("checked", false);
      });
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
    </script> -->
    
    <script>
    $("span").on("click", "[id^=up]", function() {
        
    	basket.changePNum(1);
    });

    
    $("span[id^=down])".on("click",  function() {
    	javascript:basket.changePNum(1);
    });



     
        $("#deleteCart").click(function(){
            if(confirm("장바구니를 비우시겠습니까?")){
                location.href="/member/cartList/deleteCart.do";
                onclick="javascript:basket.delAllItem()";
        }); 

    </script>

</body>
</html>

