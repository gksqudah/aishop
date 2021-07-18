<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>       

<% String ctxPath = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
	/* 장바구니 body */
	div#backbody{
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
		padding-bottom: 20px 0;
	}
	
	.home{
		folat: right;
		clear: both;
	}
	
	table.calculation1{
		clear: both;
		border: solid 1px #e0e0eb;
		border-collapse: collapse;
		background-color: #f5f5f0;
		width: 100%;
		font-size: 10pt;
	}
	table.calculation1 th{
		border: solid 1px #e0e0eb;
		padding: 10px 0;
		text-align: center;
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
		text-align: center;
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
	
	.delivery{
		border: solide 1px gray;
		border-collapse: collapse;
		width: 100%;
		font-size: 12pt;
	}
	table.delivery th, td{
		border: solid 1px #e0e0eb;
		padding: 12px 10px;
	}
	
	.deliverytd{
		font-size: 12pt; background-color: #f5f5f0;
	}
	
	/*결제카드*/
	.payArea{
		height: 218px;
		position: relative;
		padding: 0 245px 0 0;
		border: 1px solid #777;
		color: #353535;
		line-height: 1.5;
	}
	
	.payment{
		border-right: solid 1px gray;
		float: left;
		width: 100%;
		height: 100%;
	}
	
	.total{
		float: right;
		width: 240px;
		margin: 0 -240px 0 0;
		text-align: right;
		background: #fbfafa;
		font-size: 11pt;
	}
	
	/*bootstrap 버튼 */
	.btn{
		border: none;
		color: white;
		padding: 5px 10px;
		font-size: 13px;
		cursor: pointer;
		border-radius: 5px;
	}
	
	.default{background-color: #264d73; border: solid 1px gray; color: #fff;}
	.default:hover{background: #ddd;}
	.backBtn{background: #fff; border: solid 1px gray;}
	
	.btnfloat{float: left;}
	
	.btnfloat2{float: right;}
	
	.clearboth{clear: both;}
	
/* 	.footerbtn{float:right; font-weight: bolder; font-size: 12pt; border-radius:3px;}
	
	#allProduct, #productClear, #footerbtn{padding: 11px 25px;}
	
	#allProduct{margin-left: 140px; background-color: #264d73; color: #fff; font-weight: bold; font-size: 12pt;}
	#productClear{background-color: gray; color:#fff; font-weight: bold; font-size: 12pt;}
	
	.aa:hover{ cursor: pointer; }
	
	#btnarray{
		display: table-cell;
		vertical-align: middle;
		width:10%
	} */
	

</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

<script type="text/javascript"  src="http://code.jquery.com/jquery-1.12.0.min.js"></script> 

<script type="text/javascript" src="/resources/member/join_check.js?v=<%=new java.util.Date().getTime()%>"></script>
<script type="text/javascript" src="https://cdnjs.cㄹㄱloudflare.com/ajax/libs/font-awesome/5.13.1/js/all.min.js"></script> <!-- cdnjs.com에서 가져온 fontawesome cdn 라이브러리 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>	<!-- jQuery ui -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	<!-- 다음 우편번호 api -->

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
		
		$("#emailChoice").bind("change", function(){
			$("#domainName").val($(this).val());
		});
		
	});
	</script>
	<script>
	
	function daum_post() {
	    new daum.Postcode({
	        oncomplete: function(data) {
				$('[name=post]').val( data.zonecode );	//우편번호
	            //지번 주소 : J, 도로명 주소 : R
	            var address = data.userSelectedType == 'J' ? data.jibunAddress : data.roadAddress;	//클릭한 지번주소나, 도로명주소가 저장됨
	            if(data.buildingName != '') {
					address += ' (' + data.buildingName + ')';	//건물 명이 있으면 건물 명을 붙여줌
	            }
	            $('[name=address1]').eq(0).val( address );
	        }
	    }).open();
	}
	


</script>

<link href="./resources/product/css/styles.css" rel="stylesheet" />
    
</head>

<div id="backbody">

          <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/product/list" ><img src="./resources/img/aishoplogo.png" style="width:100px;"></a>
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



	<div id="frame">
		<form>
			<div id="frame2">
				<span style="font-size: 16pt; font-weight: bold;">장바구니</span>
				<span class="home"> 홈 > 장바구니</span>
				<span></span>
				
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
					</tr>
				</thead>
				
				<tbody>
					<tr style="height: 90px; background-color: #fff;" >
						<td style="text-align: left; text-align:center; border-right: none;">
							<input type="checkbox" name="checkbox" />
						</td>
						<td style="border-left: none; border-right: none;"><img style="height:100px;" src="../resources/img/phone/phone1.png"></td>
						
						<td style="text-align:left; padding-left: 10px; border-left: none; font-weight: bold;">JOYMENT-COTTON LOGO J BALL CAP</td>
						
						<td><span style="padding-left: 10px;">0</span>원</td>
						
						<td style="width: 80px;">
							<span>1</span>
						</td>
						
						<td>-</td>
						<td>기본배송</td>
						<td>고정</td>
						<td><span>0</span>원</td>
						
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
				
				<div style="border:solid 1px #e0e0eb; border-right:none; border-left:none; padding:11px 0; background-color:gray;">
					<img src="../resources/product/phone1.png" style="margin-left: 5px; position:relative; top: 4.5px;">
					<span style="font-size: 10pt; color: red;">상품의 옵션 및 수량 변경은 상품상세 페이지 또는 장바구니에서 가능합니다.</span>
				</div>
				</div>
				
				<div style="margin: 10px 0; padding-bottom:50px; border-bottom:solid 1px gray;">
					<span style="margin: 0 10px;" class = "btnfloat">선택상품을</span>
					<button type="button" class="btn default btnfloat" style="background-color: gray; color: #fff;">삭제하기</button>&nbsp;&nbsp;
					
					<button type="button" class="btn default backBtn btnfloat2" onclick="javascript:history.back()">이전페이지</button>
					<span class="clearboath"></span>
				</div>
				<br/><br/>
				
				<%--배송정보 --%>
				<span style="font-size:12pt; display: inline-block; padding-bottom: 10px; ">&nbsp;배송정보</span>
				<table class="delivery">
					<thead>
						<tr>
							<td class="deliverytd">배송지 선택</td>
							<td>
								<input type="radio" name="bb"/>
								<label>회원정보와 동일</label>
								
								<input type="radio" name="bb"/>
								<label>새로운배송지</label>&nbsp;
								<button type="button" style="background-color: #fff; cursor: pointer; border-width:0px; border-height:10px;">주소록</button>
							</td>
						</tr>
						
						<tr>
							<td class="deliverytd ">받으시는 분&nbsp;;<span style="color: red;">*</span></td>
							<td><input type="text" /></td>
						</tr>
						
						<tr>
							<td class="deliverytd">주소&nbsp;<span style="color: red;">*</span>
							</td>
							<td>
								<input type="text" name="post"  class="w-px60" style="width:100px;" placeholder="우편번호" readonly />
								&nbsp;
								<button class='btn-fill-s' style="background-clor:gray; margin-bottom:7px;" onclick="daum_post()">우편번호 찾기</button><br/>
								<input style="margin-bottom: 10px;" type="text" name="address1" size="50" placeholder="도로명주소" readonly/><br/>
								<input type="text" name="address2" size="50" placeholder="상세주소" required/>
								
											
							</td>
						</tr>
						
						<tr>
							<td class="deliverytd">휴대전화&nbsp;<span style="color: red;">*</span></td>
							<td><input type="text" size="5"/>-<input type="text" size="5"/>-<input type="text" size="5"/></td>
						</tr>
						<tr>
							<td class="deliverytd">이메일&nbsp;<span style="color: red">*</span></td>
							<td><input type="text"/>@<input id="domainName" type="text"/>&nbsp;
								<select id="emailChoice" style="height: 25px;">
									<option>-이메일 선택-</option>
									<option>-naver.com-</option>
									<option>-daum.net-</option>
									<option>-nate.com-</option>
									<option>-hotmail.com-</option>
									<option>-yahoo.com-</option>
									<option>-korea.com-</option>
									<option>-gmail.com-</option>
								</select>
								<span style="font-size: 10pt; color: gray;">
									<p>이메일을 통해 주문처리과정을 보내드립니다.<br/>
										이메일 주소란에는 반드시 수신가능한 이메일주소를 입력해 주세요.</p>
								</span>
							</td>
						</tr>
						<tr>
							<td class="deliverytd">배송메시지</td>
							<td><textarea rows="5" cols="100" ></textarea></td>
						</tr>
					</thead>
				</table>
				<br/> <br/>				
				
				<%-- 결제금액 테이블 --%>
				<table class="calculation2">
					<tr>
						<th>총 상품금액</th>
						<th>총 배송비</th>
						<th style="width: 750px; padding: 22px 0;"><span>결제예정금액</span></th>
					</tr>
					
					<tr style="background-color: #fff;" >
						<td style="padding: 23px 0;"><span class="price">0</span>원</td>
						<td><span class="price">0</span>원</td>
						<td><span class="price">0</span>원</td>
					</tr>
				</table>
				<br/><br/>
				
				<%-- 결제하기 --%>
				<div class="payArea">
					<div class="payment">
						<div style="padding: 18px 10px; font-size: 10pt; border-bottom: solid 1px #e0e0eb;">
							<input type="radio" name="cardradio" checked/><label>카드결제</label>&nbsp;&nbsp;
							<input type="radio" name="cardradio" checked/><label>실시간 계좌이체</label>&nbsp;&nbsp;
							<input type="radio" name="cardradio" checked/><label>휴대폰 결제</label>&nbsp;&nbsp;
							<input type="radio" name="cardradio" checked/><label>무통장 입금</label>&nbsp;&nbsp;
							<input type="radio" name="cardradio" checked/><label>에스크로(가상계좌)</label>&nbsp;&nbsp;
					</div>
					
					<div align="left">
						<img src="#" style="margin-left: 5px; position: relative; top: 6px;">
						<span style="font-size: 10pt; color: gray;">최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</span></div>
						<img src="#" style="margin-left: 5px; position: relative; top: 6px;">
						<span style="font-size: 10pt; color: gray;">소액 결제의 경우 PG사 정책에 따라 결제 금액 제한이 있을 수 있습니다.</span>
					</div>
				</div>
				
				<div class="total">
					<span style="display:inline-block; padding: 20px 10px;">최종결제 금액</span><br/>
					<span style="font-size: 25pt; font-weight: bold; padding: 0px 10px;">0원</span><br/><br/>
					<button type="button" class="btn default" style="width: 90%; height: 60px; margin-right:10px; font-size:15">결제하기</button>
				</div>
				
				<br/><br/>
				
			
				<%--이용안내 --%>
				<div style="border: solid 1px #e0e0eb; padding: 10px 0; font-size:12pt; background-color:#f5f5f0; padding-left: 10px;">
					무이자할부 이용안내
				</div>
				<div style="border: solid 1px #e0e0eb; font-size: 12pt; padding-left: 10px;">
					<span>-</span> 	<span style="font-size: 10pt; color: gray;">무이자할부가 적용되지 않은 상품과 무이자 할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에 대해 무이자할부가 적용되지 않습니다.</span><br/>
					<span>-</span>	<span style="font-size: 10pt; color: gray;">무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문해 주시기 바랍니다.</span>
				</div>
				<br/>
				<div style="border: 1px #e0e0eb; padding: 10px 0; font-size: 12pt; background-color:#f5f5f0; padding-left: 10px">
					이용안내
				</div>
				<div style="border: solid 1px #e0e0eb; height: 400px; font-size: 12pt; padding-left: 10px;">
					<br/>세금계산서 발행 안내
					<ol style="padding-left: 30px; padding-top: 8px;">
						<li class="lifont"> 부가가치법 제 54조에 의거하여 세금계산서는 배송완료일로부터 다음달 10일까지만 요청하실 수 있습니다.</li>
						<li class="lifont"> 배송이 완료된 주문에 한하여 세금계산서 발행신청이 가능합니다.</li>
						<li class="lifont">	[세금계산서 신청] 버튼을 눌러 세금계산서 신청양식을 작성한 후 팩스로 사업자등록증사본을 보내셔야 세금계산서 발행이 가능합니다.</li>
						<li class="lifont"> [세금계산서 인쇄] 버튼을 누르면 발행된 세금계산서를 인쇄하실 수 있습니다.</li>
						<li class="lifont"> 장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.</li>
					</ol><br/>
					현금영수증 이용안내
					<ol style="padding-left: 30px; padding-top: 8px;">
						<li class="lifont"> 현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체, 에스크로, 예치금)에 대해 발행이 됩니다.</li>
						<li class="lifont"> 현금영수증 발행 금액에는 배송비는 포함되고, 적립금 사용액은 포함되지 않습니다.</li>
						<li class="lifont">	발행신청 기간제한 현금영수증은 입금확인일로부터 48시간안에 발행을 해야 합니다.</li>
						<li class="lifont"> 현금영수증 발행 취소의 경우는 시간 제한이 없습니다. </li>
						<li class="lifont"> 현금영수증이나 세금계산서 중 하나만 발행 가능 합니다. </li>
					</ol><br/>
			</div>
			
		</form>
	</div>
	</div>


</body>
</html>
<%@ include file="/WEB-INF/views/member/footer.jsp"%>