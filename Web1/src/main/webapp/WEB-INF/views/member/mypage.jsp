<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>     
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>
    <%@ page import="java.io.PrintWriter"%>
    <%@ include file="../includes/header.jsp"%>




<!DOCTYPE html>
<html>
<head>



<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">





<style>

footer{
	padding:35px 0; text-align: center; position:absolute; bottom:25px; width:88%;
}
button{
margin-top: 2.0em;
}
</style>

</head>
<body>
    <!-- 1.데이터 베이스에서 한회원의 정보를 가져옴 2. table태그를 이용하며 화면에 회원의 정보를 출력 -->

<div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#">AI WORLD</a>
        </div>     
</div>
 
<div class="container" style="margin-right:24%;">
    <div class="row">
        <div class="col-sm-12">
            <div class="col-sm-2"></div>
                <div class="col-sm-9">
                    <h2 class="text-center">내 정보 보기</h2>
                    <table class="table table-striped">
                      <tr>
                        <td>아이디</td>
                        <td>${member.id }</td>
                      </tr>
                      <tr>
                        <td>이름</td>
                        <td>${member.name }</td>
                      </tr>                      
                      <tr>
                        <td>성별</td>
                        <td>${member.gender }</td>
                      </tr>
                      <tr>
                        <td>생년월일</td>
                        <td>${member.birth }</td>
                      </tr>
                      <tr>
                        <td>이메일</td>
                        <td>${member.email }</td>
                      </tr>
                       
                      <tr>
                        <td>연락처</td>
                        <td>${member.tel }</td>
                      </tr>

                     
                      <tr>
                        <td>주소</td>
                        <td>(${member.post }) ${member.address1 }<br>${member.address2 }</td>
                        	
                      </tr>
                      <tr>
                        <td>MONEY</td>
                        <td>$ ${member.money }</td>
                      </tr>
                      <tr>
                        <td>POINT</td>
                        <td>$ ${member.point }</td>
                      </tr>                       
                      
                       
                    <tr>
                         <td class="text-center" colspan="2">
<button onclick="location.href='modify'" class="btn btn-primary">정보수정</button>
<button onclick="location.href='delete'" class="btn btn-danger">탈퇴하기</button>
<button onclick="location.href='cartList'" class="btn btn-warning">장바구니</button>
<button onclick="location.href='orderList'" class="btn btn-success">주문정보</button>
                          
                         </td>    
                    </tr> 
                 
                       
                    </table>
                </div>
        </div> <!-- col-sm-12 -->
    </div><!-- row -->
</div> <!-- container end-->

        <!-- Footer-->
        <footer class="py-5 bg-dark" style=" border-top:1px solid #ccc;">
            <div class="container"><p class="m-0 text-center text-white">kr.icia.com <br>Copyright &copy; Your Website 2021</p></div>
        </footer>
     
     

<%@ include file="../includes/footer.jsp"%>
