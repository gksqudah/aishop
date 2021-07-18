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

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품주문</title>
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
       <style>
        body{
       background-color:lightgray;
       }
       .card-body p-4{
       }
       .form{
       	text-align: center;
       }
       
</style>


<link href="style.css" type="text/css" rel="stylesheet" />
</head>
<script type="text/javascript">
	function check_form(f) {
		var name_chk = document.getElementById("name_chk");
		var tel_chk = document.getElementById("tel_chk");
		var count_chk = document.getElementById("count_chk");
		name_chk.innerHTML = "";
		tel_chk.innerHTML = "";
		count_chk.innerHTML = "";
		if (f.name.value == "" || f.name.value.length == 0) {
			name_chk.innerHTML = "* 이름을 입력해주세요";
		}
		if (f.tel.value == "" || f.tel.value.length == 0) {
			tel_chk.innerHTML = "* 전화번호를 입력해주세요";
		}
		if (f.count.value == 0) {
			count_chk.innerHTML = "* 수량을 선택해주세요";
		}
		if (f.name.value != "" && f.tel.value != "" && f.count.value != 0) {
			var result = confirm("상품을 주문 하시겠습니까?");
			if (result)
				return true;
		}
		return false;
	}
	function reset_ok(f) {
		var result = confirm("주문을 취소하시겠습니까?");
		if (!result) {
			return false;
		}
	}
	function total_chk(f) {
		var total_price = document.getElementById("total_price");
		if (f.count.value != 0) {
			var count_chk = document.getElementById("count_chk");
			count_chk.innerHTML = "";
		}
		var count = parseInt(f.count.value) * 5000;
		total_price.innerHTML = count;
	}
	function name_focus(f) {
		var name_chk = document.getElementById("name_chk");
		if (f.name.value == "" && name_chk.value != "") {
			name_chk.innerHTML = "";
		}
	}
	function tel_focus(f) {
		var tel_chk = document.getElementById("tel_chk");
		if (f.tel.value == "" && tel_chk.value != "") {
			tel_chk.innerHTML = "";
		}
	}
</script>

<body>

        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light" >
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
                                <li><a class="dropdown-item" href="#!">Phone</a></li>
                                 <li><a class="dropdown-item" href="#!">Tablet</a></li>
                                  <li><a class="dropdown-item" href="#!">Wearable</a></li>
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
        
        
         <form name="orderform" id="orderform" method="post" class="orderform" action="/Page" onsubmit="return false;" style="width:95%; margin-left:2%;">
            <input type="hidden" name="cmd" value="order">
            <div class="basketdiv" id="basket">
            <h2 style="text-align:center; margin-top:10px;">ORDER</h2>
                <div class="row head" style="margin-top:20px;">
                    <div class="subdiv">
                        <div class="check">번호</div>
                        <div class="img">이미지</div>
                        <div class="pname" >상품명</div>
                    </div>
                    <div class="subdiv">
                        <div class="basketprice">가격</div>
                        <div class="num">수량</div>
                        <div class="sum">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;합계</div>
                    </div>
 				      <div class="subdiv">
    
                        <div class="basketcmd" style="text-align:left;">포인트적립</div>
                    </div>
        	   <div class="split"></div>        
                </div>
        
    		<c:set var="sum" value="0"/>  
         <c:forEach items="${cartList}" var="cartList" varStatus="vs">
                <div class="row data" style="margin-top:15px; margin-left:2px;">
                    <div class="subdiv">
                        <div class="check" style="margin-top:-20px;">${vs.count }&nbsp;</div>
                        <div class="img"><img src="../resources/img/product/${cartList.gdsImg }2.jpg" width="100" height="70" style="margin-top:-25px;"></div>
                        <div class="pname">
                            <span style="margin-left:46%; ">${cartList.gdsName }</span>
                            <input type="hidden" name="gdsNum" value="${cartList.gdsNum }"/>
                        </div>
                    </div>
                    <div class="subdiv">
                        <div class="basketprice" style="margin-top:-20px;"><input type="hidden" name="p_price" id="p_price1" class="p_price" value="${cartList.gdsPrice }"><fmt:formatNumber value="${cartList.gdsPrice }" pattern="#,###"/>$</div>
                        <div class="num" style="margin-top:-20px;"  >
                            <div >
                              <span style="font-size:20px; margin-top:2px;" >${cartList.amount }</span>
                            </div>
                        </div>
                        <div class="sum" style="margin-top:-20px;"><fmt:formatNumber value="${cartList.gdsPrice * cartList.amount }" pattern ="#,###"/>$</div>
                    </div>
    
                </div>
                <div class="subdiv" >
                </div>
                <c:set var="sum" value="${sum + (cartList.gdsPrice * cartList.amount) }"/>
             
			</c:forEach>
     
        
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
        
        



<br><br><br><br><br><br><br><br><br><br>
	<div id="container" style="text-align: center; height:700px; margin-top:250px; "><br><br><br><br><br>
		<p style="color: red; font-size: 20px">주문 폼을 작성해주세요.</p>
		<hr>
		<form action="ordersub.do" name="form" method="post"
			onsubmit="return check_form(this)" onreset="return reset_ok(this)">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>   
			<br>
			<p>ID</p>
			<input type="text" id="name" name="userId" style="width:70%; text-align:center;" value="${member.id }" readonly="readonly"
				onfocus="name_focus(this.form)" autofocus> <span
				id="name_chk"> </span><br><br>
			<p>수령인</p>
			<input type="text" id="orderRec" name="orderRec" style="width:70%; text-align:center;"
				onfocus="name_focus(this.form)" autofocus> <span
				id="name_chk"> </span><br><br>
				
			<p>전화번호</p>
			<input
			  type="tel"
			  class="form-control m-input"
			  name="orderTel"
			  id="telInput"
			  required
			  pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}"
			  maxlength="13"
			  placeholder="예) 010-1234-5678"
			  style="width:70%; text-align:center; margin-left:15%;"
			/><br>
			<p>주소</p>
				<input type="text" name="userPost" id="userPost" class="w-px60" style="width:20%; text-align:center;" value="${member.post }"  readonly />
			
				<input type="text" name="userAddr1" value="${member.address1 }" style="width:50%; text-align:center;" readonly/><br>
					<button class='btn-fill-s' style="background-clor:gray;" onclick="daum_post()">우편번호 찾기</button>
				<input type="text" name="userAddr2" id="userAddr2"  style="width:64%; text-align:center; margin-top:15px; margin-left:30px;" placeholder="상세주소" required/>
				<br><br>
				
			MONEY : <input type="text" id="money" name="money" style="width:25%; text-align:center;" value="${member.money *1150 } 원 "  autofocus>	<button class="btn btn-primary">사용</button>&nbsp;&nbsp;
			POINT : <input type="text" id="point" name="point" style="width:25%; text-align:center;" value="${member.point * 1150 } 원" autofocus>	<button class="btn btn-primary">사용</button>	

			<br><br><hr>
			<div class="total">
				금액 : <span id="total_price" style="font-size: 25px"><fmt:formatNumber value="${sum *1150 }" pattern="#,### 원"/></span>
				<input type="hidden" name="sum" value="${sum*1150 }"/>
			</div>
			
			<p><br><br>
			<div style="margin-bottom:50px;">
				<input type="submit"  class="btn btn-success" id="ordersubmit" value="주문" > 
				<input type="submit" class="btn btn-secondary" id="cancelBtn" value="취소" > 
			</div>	
				<br><br><br><br><br><br>
		</form>
	</div>
	
	
	
	
	
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	<!-- 다음 우편번호 api -->
	
	<script>
	// 전화번호 입력 관련
$('#telInput').keyup(function (event) {
	  event = event || window.event;
	  var _val = this.value.trim();
	  this.value = autoHypenTel(_val);
	});


// 전화번호 입력관련. 02, 010 등 구분 기능, 자동 - 넣기.
function autoHypenTel(str) {
	  str = str.replace(/[^0-9]/g, '');
	  var tmp = '';

	  if (str.substring(0, 2) == 02) {
	    // 서울 전화번호일 경우 10자리까지만 나타나고 그 이상의 자리수는 자동삭제
	    if (str.length < 3) {
	      return str;
	    } else if (str.length < 6) {
	      tmp += str.substr(0, 2);
	      tmp += '-';
	      tmp += str.substr(2);
	      return tmp;
	    } else if (str.length < 10) {
	      tmp += str.substr(0, 2);
	      tmp += '-';
	      tmp += str.substr(2, 3);
	      tmp += '-';
	      tmp += str.substr(5);
	      return tmp;
	    } else {
	      tmp += str.substr(0, 2);
	      tmp += '-';
	      tmp += str.substr(2, 4);
	      tmp += '-';
	      tmp += str.substr(6, 4);
	      return tmp;
	    }
	  } else {
	    // 핸드폰 및 다른 지역 전화번호 일 경우
	    if (str.length < 4) {
	      return str;
	    } else if (str.length < 7) {
	      tmp += str.substr(0, 3);
	      tmp += '-';
	      tmp += str.substr(3);
	      return tmp;
	    } else if (str.length < 11) {
	      tmp += str.substr(0, 3);
	      tmp += '-';
	      tmp += str.substr(3, 3);
	      tmp += '-';
	      tmp += str.substr(6);
	      return tmp;
	    } else {
	      tmp += str.substr(0, 3);
	      tmp += '-';
	      tmp += str.substr(3, 4);
	      tmp += '-';
	      tmp += str.substr(7);
	      return tmp;
	    }
	  }

	  return str;
	}
	
function daum_post() {
    new daum.Postcode({
        oncomplete: function(data) {
			$('[name=userPost]').val( data.zonecode );	//우편번호
            //지번 주소 : J, 도로명 주소 : R
            var address = data.userSelectedType == 'J' ? data.jibunAddress : data.roadAddress;	//클릭한 지번주소나, 도로명주소가 저장됨
            if(data.buildingName != '') {
				address += ' (' + data.buildingName + ')';	//건물 명이 있으면 건물 명을 붙여줌
            }
            $('[name=userAddr1]').eq(0).val( address );
        }
    }).open();
}

/* 취소 버튼 */
$("#cancelBtn").click(function(){

	location.href="javascript:history.back()"
		 e.preventDefault();
});
	
	
	</script>
	
	<script>
$("#ordersubmit").click(function(){
	if($("#orderRec").val()==""){
		alert("성명을 입력해주세요.");
		$("#orderRec").focus();
		return false;
	}
	if($("#telInput").val()==""){
		alert("연락처를 입력해주세요.");
		$("#orderTel").focus();
		return false;
	}
	if($("#userPost").val()==""){
		alert("주소를 입력해주세요.");
		$("#userPw").focus();
		return false;
	}
	if($("#userAddr2").val()==""){
		alert("상세주소를 입력해주세요.");
		$("#email").focus();
		return false;
	}
    if(confirm("주문 하시겠습니까?") == true){
        alert("주문이 완료되었습니다");
    }
    else{
        return ;
    }
});
</script>


	

	
</body>
</html>