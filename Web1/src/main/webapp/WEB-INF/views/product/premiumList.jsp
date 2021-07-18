<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>     
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%!// 변수 선언
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String uid = "admin";
	String pwd = "1234";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String sql = "select * from tbl_product";%>

    
<!DOCTYPE html>
<html lang="en">
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
        
        
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
        
        
        <script>


        body { margin:0; padding:0; font-family:'맑은 고딕', verdana;}
        a { color:#05f; text-decoration:none; }
        a:hover { text-decoration:underline; }
        
        h1, h2, h3, h4, h5, h6 { margin:0; padding:0; }
        ul, lo, li { margin:0; padding:0; list-style:none; }

        /* ---------- */
        
        div#root { width:900px; margin:0 auto; }
        header#header { }
        nav#nav { }
        section#container { }
         section#content { float:right; width:700px; }
         aside#aside { float:left; width:180px; }
         section#container::after { content:""; display:block; clear:both; } 
        footer#footer { background:#eee; padding:20px; }
        
        /* ---------- */
        
        header#header div#header_box { text-align:center; padding:30px 0; }
        header#header div#header_box h1 { font-size:50px; }
        header#header div#header_box h1 a { color:#000; }
        
        nav#nav div#nav_box { font-size:14px; padding:10px; text-align:right; }
        nav#nav div#nav_box li { display:inline-block; margin:0 10px; }
        nav#nav div#nav_box li a { color:#333; }
        
        section#container { }
        
        aside#aside h3 { font-size:22px; margin-bottom:20px; text-align:center; }
        aside#aside li { font-size:16px; text-align:center; }
        aside#aside li a { color:#000; display:block; padding:10px 0; }
        aside#aside li a:hover { text-decoration:none; background:#eee; }
        
        footer#footer { margin-top:100px; border-radius:50px 50px 0 0; }
        footer#footer div#footer_box { padding:0 20px; }
        
       </script>
       
       <script>

      $("#slideshow > div:gt(0)").hide();
      setInterval(function(){
    	  $('#slideshow > div:first')
    	  .fadeOut(1000)
    	  .next()
    	  .fadeIn(1000)
    	  .end()
    	  .appendTo('#slideshow');
      }, 3000);
        
       
       
       </script>
       
  <script>
    
	$(document).ready(function(){ 
		$('.bxslider').bxSlider({ 
			auto: true, 
			speed: 500, 
			pause: 4000, 
			mode:'horizontal', 
			autoControls: true, 
			pager:true, 
			controls : true,
			loop : true,
		}); 
	});
    
  </script>
       
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
      
      
     a:link { color: black; text-decoration: none;}
	 a:visited { color: black; text-decoration: none;}
	 a:hover { color: blue; }

      
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
                                <li><a class="dropdown-item" href="/product/index">Popular Items</a></li>
                                <li><a class="dropdown-item" href="/product/phoneList">Phone</a></li>
                                 <li><a class="dropdown-item" href="/product/wearableList">Wearable</a></li>
                                  <li><a class="dropdown-item" href="/product/premiumList">Premium</a></li>
                                   <li><a class="dropdown-item" href="/product/index">New Arrivals</a></li>
                            </ul>
                        </li>
                    </ul>
                        <button class="btn btn-outline-dark" onClick="location.href='/member/cartList'" >
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill" ></span>
                        </button>
                </div>
            </div>
        </nav>
        
        <!-- Header-->
                <div class="jb-box">
      <video muted autoplay loop>
        <source src="../resources/video/Network.mp4" type="video/mp4">
        <strong>Your browser does not support the video tag.</strong>
      </video>
      <div class="jb-text">
        <p>Shop In Style</p>
      </div>
    </div>
        
        

        
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
            
             
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                
          <c:forEach items ="${list }" var="list">
          
                    <div class="col mb-5">
                        <div class="card h-100"  style="background-color:#eeeeee; " >
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            
                            
                          <ul class="bxslider" >
                         	   <li><img height="150px;" class="card-img-top" style="height:200px;" src="../resources/img/product/${list.gdsImg }1.jpg" alt="..." /></li>
                           	   <li><img height="150px;" class="card-img-top" style="height:200px;"src="../resources/img/product/${list.gdsImg }2.jpg" alt="..." /></li>
                       	
                          </ul>
                          
                          
                            <!-- Product details-->
                            <div class="card-body p-4" >
                                <div class="text-center" style="padding-top:0px;" >
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">	   <a class="move1" href='<c:out value="${list.gdsNum}"/>'>
	                    					<c:out value="${list.gdsName}"></c:out>
	                    				</a> 	   </h5>
                                       $${list.gdsPrice }<br>
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                              <!--       <span class="text-muted text-decoration-line-through">$120.00</span> -->
                                 
   								 <div>${list.gdsContent }</div>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" id="detail"  href='<c:out value="${list.gdsName}"/>'>Add to cart</a></div>
       
                            </div>
                            
                        </div>
                        
                    </div>

  
                       </c:forEach>
                </div>
                <form id="moveForm" action="/product/detail" method="get" >
						
					</form>   
   
             
            </div>
                          
        </section>
        

        
        
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
   
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/product/js/scripts.js"></script>
<script type="text/javascript"> 
//<![CDATA[ 
	$(document).ready(function(){ 
		$('.bxslider').bxSlider(); 
		}); 
	//]]> 
</script>

<script>

let moveForm = $("#moveForm");
$("#detail").on("click", function(e){
	
	e.preventDefault();
	
	moveForm.append("<input type='hidden' name='gdsNum' value='"+ $(this).attr("href") + "'>");
	moveForm.attr("action", "/product/detail");
	moveForm.submit();
	
});



/* 회원 상세 페이지 이동 */
$(".move1").on("click", function(e){
	
	e.preventDefault();
	
	moveForm.append("<input type='hidden' name='gdsNum' value='"+ $(this).attr("href") + "'>");
	moveForm.attr("action", "/product/detail");
	moveForm.submit();
	
});


</script>



    </body>
</html>
