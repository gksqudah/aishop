<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
	/* 장바구니 body */
	body.cartBody{
		background-color: #f5f5f0;
		font-size: 13pt;
		min-width: 1480px;
		width: 100%;
		padding: 0px 0;
	}
	
	/* 전체 div */
	#frame{
		width: 80%;
		margin: 0 auto;
		padding: 50px 50px;
		background-color: #fff;
	}
	

	#frame2{
		border-bottom: solid 1px #e0e0eb;
		padding-bottom: 10px;
	}
	
	.home{
		folat: right;
	}
	
	table.calculation1{
		clear: both;
		border: solid 1px #e0e0eb;
		border-collapse: collapse;
		background-color: #f5f5f0;
		width: 100%;
		font-size: 10pt;
		border-margin: 10;
	}
	table.calculation1 th{
		border: solid 1px #e0e0eb;
		padding: 10px 0;
	}
	table.calculation1 td{
		border: solid 1px #e0e0eb;
		text-align: center;
	}	
	
	table.calculation2{
		border: solid 1px #e0e0eb;
		border-collapse: collapse;
		background-color: #f5f5f0;
		width: 100%;
		font-size: 10pt;
	}
	
	table.calculation2 th{
		border: solid 1px #e0e0eb;
	}
	
	table.calculation2 td{
		border: solid 1px #e0e0eb;
		text-algin: center;
	}
	
	.price{
		font-size: 20pt;
		font-weight: bold;
	}
	
	.lifont{font-size: 10pt; color: gray;}
	
	/*bootstrap 버튼 */
	.btn{
		border: none;
		color: white;
		padding: 5px 10px;
		font-size: 13px;
		cursor: pointer;
		border-radius: 5px;
	}
	
	.default{background-color: #fff; border: solid 1px gray; color: black;}
	.default:hover{background: #ddd;}
	.backBtn{background: #fff; border: solid 1px gray;}
	
	.btnfloat{float: left;}
	
	.btnfloat2{float: right;}
	
	.clearboth{clear: both;}
	
	.footerbtn{float:right; font-weight: bolder; font-size: 12pt; border-radius:3px;}
	
	#allProduct, #productClear, #footerbtn{padding: 11px 25px;}
	
	#allProduct{margin-left: 140px; background-color: #264d73; color: #fff; font-weight: bold; font-size: 12pt;}
	#productClear{background-color: gray; color:#fff; font-weight: bold; font-size: 12pt;}
	
	.aa:hover{ cursor: pointer; }
	
	#btnarray{
		display: table-cell;
		vertical-align: middle;
		width:10%
	}
	
	#img{
		height:300
	}


</style>

<script type="text/javascript"  src="http://code.jquery.com/jquery-1.12.0.min.js"></script> 

<script type="text/javascript">

	$(document).ready(function(){
		
		$(".calculation1 thead input: checkbox[id=check]").click(function(){
			val bool =$(this).prop("checked");
			$(".calculation1 tbody input:checkbox[name=checkbox]").prop("checked", bool);
		});
		
		$(".calculation1 tbody input:checkbox[name=checkbox]").click(function(){
			var flag = false;
			$(".calculation1 tbody input:checkbox[name=checkbox]").each(function(){
				var bool = $(this).prop("checked");
				
				if(!bool){
					$(".calculation1 thead input:checkbox[id=check]").prop("checked", false);
					flag = true;
					return false;
				}
			});
			
			if(!flag){
				$(".calculation1 thead input:checkbox[id=check]").prop("checked", true);
			}
		});
		
	});

</script>

<link href="./resources/product/css/styles.css" rel="stylesheet" />
    
</head>

<body class="cartBody">

          <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/">AI SHOP</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
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
                    <div style="font-size:20px; color:gray"><sec:authentication property="principal.member.name" /></div>&nbsp;의 장바구니&nbsp;&nbsp;&nbsp;&nbsp;
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>



	<div id="frame">
		<form>
			<div id="frame2">
				<span style="font-size: 16pt; font-weight: bold;">장바구니</span>
				<span class="home"> 홈 > 장바구니</span>
				<span></span>
				
			</div>
			<br/>
			
			<div>
				<table class="calculation1">
					<tr>
						<th class="aa">구매상품</th>
						<th class="aa">해외상품</th>
						<th style="width: 700px;"></th>
					</tr>
				</table>
			</div>
			<br/>
			
			<%-- 상품정보 테이블 --%>
			<div>
				<table class="calculation1">
				<thead>
					<tr>
						<th colspan="10" style="text-align: left; padding-left: 10px;">일반상품(1)</th>
					</tr>
					
					<tr>
						<th style="width:30px;"><input type="checkbox" name="checkbox" id="check" /></th>
						<th style="width:250px;"><span>이미지</span></th>
						<th style="width: 550px;"><span>상품정보</span></th>
						<th style="width:150px;">판매가</th>
						<th>수량</th>
						<th style="width: 100px;">적립금</th>
						<th style="width:100px;">배송구분</th>
						<th style="width:100px;">배송비</th>
						<th style="width:150px;">합계</th>
						<th style="width:15px;">선택</th>
					</tr>
				</thead>
				
				<tbody>
					<tr style="height: 90px; background-color: #fff; height:50px;" >
						<td style="text-align: left; text-align:center; border-right: none;">
							<input type="checkbox" name="checkbox" />
						</td>
						<td style="border-left: none; border-right: none;" id="img"><img style="height:100px;" src="../resources/img/phone/phone1.png"></td>
						
						<td style="text-align:left; padding-left: 10px; border-left: none; font-weight: bold;">JOYMENT-COTTON LOGO J BALL CAP</td>
						
						<td><span style="padding-left: 10px;">${cartList.gdsPrice }</span>원</td>
						
						<td style="width: 80px;">
							<input type="number" style="text-align: right; width: 43px; margin-bottom: 5px;" min="1" max="99" step="1" value="1" />
							<button class="btn default" style="border-radius: 3px; size: 10px;">변경</button>
						</td>
						
						<td>-</td>
						<td>기본배송</td>
						<td>2,500원<br/>고정</td>
						<td><span>0</span>원</td>
						<td id="btnarray" style="width:15px;">
							<button class="btn default" style="border-radius: 3px; width: 90px; margin-bottom: 3px; font-size: 11px; background-color: #288C28; color: white;" >주문하기</button>
							<button class="btn default" style="border-radius: 3px; width: 90px; margin-bottom: 3px; font-size: 11px; background-color: #808080; color: white;" >관심상품</button>
							<button class="btn default" style="border-radius: 3px; width: 90px; margin-bottom: 3px; font-size: 11px; background-color: #808080; color: white;">삭제</button>
						</td>
					</tr>
						
				</tbody>
				
				<tfoot>
					<tr style="height: 60px;">
						<td colspan="5" style="border-right: none; text-align: left; padding-left: 10px;">
							<span>[기본배송]</span>
						</td>
						<td colspan="5" style="border-right: none; text-align: right; padding-left: 10px;">	
							상품금액<span>0</span> + <span>배송비 2,500 = 합계</span>&nbsp;<span style="font-weight: bold; font-size: 15px;">0</span>
						</td>
					</tr>
				</tfoot>
			
				</table>
				
				<div style="border:solid 1px #e0e0eb; padding: 15px 0;">
					<img src="../resources/product/phone1.png" style="margin-left: 5px; position:relative; top: 4.5px;">
					<span style="font-size: 10pt; color: gray;">할인 적용 금액은 주문서 작성의 결제예정금액에서 확인 가능합니다</span>
				</div>
				</div>
				
				<div style="margin: 10px 0;">
					<span style="margin: 0 10px;" class = "btnfloat">선택상품을</span>
					<button class="btn default btnfloat" style="background-color: gray; color: #fff;">삭제하기</button>&nbsp;&nbsp;
					<button class="btn default backBtn btnfloat" style="background-color: lightblue; color: white;">해외배송 장바구니로 이동</button>
					
					<button class="btn default backBtn btnfloat2" style="background-color: #808080; color: white;">장바구니비우기</button>
					<button class="btn default backBtn btnfloat2" style="background-color: green; color: white; margin-left:100px;">견적서 출력</button>
					<span class="clearboath"></span>
				</div>
				<br/><br/>
				
				
				<%-- 결제금액 테이블 --%>
				<table class="calculation2">
					<tr>
						<th>총 상품금액</th>
						<th>총 배송비</th>
						<th style="width: 750px; padding: 22px 0;"><span>결제예정금액</span></th>
					</tr>
					
					<tr style="background-color: #fff;" >
						<td style="padding: 22px 0;"><span class="price">0</span>원</td>
						<td>+<span class="price">0</span>원</td>
						<td>=<span class="price">0</span>원</td>
					</tr>
				</table>
				<br/><br/>
				
				<div align="center">
					<button class="btn default" id="allProduct">전체상품주문</button>
					<button class="btn default backBtn" id="productClear">선택상품주문</button>
					<button class="btn default footerbtn" id="footerbtn">쇼핑계속하기</button>
					<span class="clearboth"></span>
				</div>
				<br/><br/><br/><br/><br/>
				
				<div style="border: solid 1px #e0e0eb; padding: 10px 0; font-size:12pt; background-color:#f5f5f0; padding-left: 10px;">
					이용안내
				</div>
				<div style="border: solid 1px #e0e0eb; height: 350px; font-size: 12pt; padding-left: 10px;">
					<br/>장바구니 이용안내
					<ol>
						<li class="lifont"> 해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로 결제해 주시기 바랍니다.</li>
						<li class="lifont"> 해외배송 가능 상품의 경우 국내배송 장바구니에 담았따가 해외배송 장바구니로 이동하여 결제하실 수 있습니다.</li>
						<li class="lifont"> 선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.</li>
						<li class="lifont"> [쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.</li>
						<li class="lifont"> 장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.</li>
					</ol>
					충전/결제 이용안내
					<ol>
						<li class="lifont"> 충전하기 버튼을 통해 미리 충전이 가능합니다.</li>
						<li class="lifont"> 충전을 하지 않고 바로 결제를 이용하실 수 있습니다.</li>
					</ol>
			</div>
			
		</form>
	</div>


</body>
</html>