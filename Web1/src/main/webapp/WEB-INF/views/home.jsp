<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>     
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    Object principal = auth.getPrincipal();
 
    String name = "";

    if(principal != null) {
        name = auth.getName();
    
    }

%>
<%-- <%
Authentication auth = (Authentication)request.getUserPrincipal();
String name="";
String money ="";
if(auth ==null){
	
}else{
	Object principal = auth.getPrincipal();
	if(principal != null && principal instanceof MemerInfo){
		name= ((MemberInfo)principal).getName();
	}
}
%> --%>



<!DOCTYPE html >
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Creative - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="./resources/assets2/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- Third party plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./resources/css2/styles.css" rel="stylesheet" />
        
        <!-- swiper 사용 -->
		 <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
		<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
		
		<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
		<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        

        
        <style>
        
        html {
    scroll-behavior: smooth;
}
	 
/* 로그인 성공 영역 */
.login_success_area{
    height: 62%;

    padding-top: 0px;
   margin-left:20px;
   margin-right:20px; 
   
}
.login_success_area>span{
    display : block;
    text-align: left;

    padding-top:0px;
}

.btn10{
	
	background-color:rgba(0,0,0,0);
	color: skyblue;
	 box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
	 border-top-left-radius:5px;
	 border-bottom--right-radius:5px;
	 border-width: 1px;
}
.btn10:hover{
	color:white;
	background-color:skyblue;
}

#btn01:hover{
	color:white;
}


#btn01 {
  display: inline-block;
  background: transparent;
  text-transform: uppercase;
  font-weight: 500;
  font-style: normal;
  letter-spacing: 0.15em;
  color: #F4623A;
  border-radius: 0;
  transition: all 0.7s ease-out;
  background: linear-gradient(270deg, rgba(223,190,106,0.8), rgba(146,111,52,0.8), rgba(34,34,34,0), rgba(34,34,34,0));
  background-position: 1% 50%;
  background-size: 300% 300%;
  text-decoration: none;
  border: none;
  border: 1px solid rgba(223,190,106,0.3);
}

#btn01:hover {

  border: 1px solid rgba(223,190,106,0);
  color: $white;
  background-position: 99% 50%;
}

#hiden10{

	font-weight:600;
}

.swiper-container {

	height:900px;
	width:100%;
	

	border-radius:5px;
}
.swiper-slide {
	text-align:center;
	display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items:center; /* 위아래 기준 중앙정렬 */
	justify-content:center; /* 좌우 기준 중앙정렬 */
}
.swiper-slide img {
	border:1px solid #000;
	box-shadow:7px 7px 2px #ccc;

	width: 100%;
	height: 100%;
}

 </style>


<style type="text/css">

ul,li{margin:0; padding:0;}

</style>
 
 <style>
 
.loading span {
  display: inline-block;
  margin: 0 -.05em;
  animation: loading 1.2s infinite alternate;
}
.loading span:nth-child(2) {
  animation-delay: .2s;
}
.loading span:nth-child(3) {
  animation-delay: .4s;
}
.loading span:nth-child(4) {
  animation-delay: .6s;
}
.loading span:nth-child(5) {
  animation-delay: .8s;
}
.loading span:nth-child(6) {
  animation-delay: 1s;
}
.loading span:nth-child(7) {
  animation-delay: 1.2s;
}
.loading span:nth-child(8) {
  animation-delay: 1.4s;
}
.loading span:nth-child(9) {
  animation-delay: 1.6s;
}
.loading span:nth-child(10) {
  animation-delay: 1.8s;
}


@keyframes loading {
  0% {
    filter: blur(0);
    opacity: 1;
  }
  100% {
    filter: blur(5px);
    opacity: .2;
  }
}
 
 </style>
 
 <style>
 .loading2 span {
  display: inline-block;
  margin: 0 -.075em;
  animation: loading .7s infinite alternate;
}
.loading2 span:nth-child(2) {
  animation-delay: .1s;
}
.loading2 span:nth-child(3) {
  animation-delay: .2s;
}
.loading2 span:nth-child(4) {
  animation-delay: .3s;
}
.loading2 span:nth-child(5) {
  animation-delay: .4s;
}
.loading2 span:nth-child(6) {
  animation-delay: .5s;
}

@keyframes loading {
  0% {
    transform: scale(1);
  }
  100% {
    transform: scale(0.8);
  }
}

 
 </style>
 
 

 
 <script>

document.getElementById('currency').toLocaleString('en');

 
 </script>       
        
 <script src="http://code.jquery.com/jquery-1.12.0.min.js"></script> 
 <script>
 $(document).ready(function(){ 
	 $("#btn01").click(function(){ 
		 if($("#hiden1").is(":visible")){ 
			 $("#hiden1").slideUp(); 
			 }else{ 
				 $("#hiden1").slideDown();
			} 
		 }); 
	 });  
 

 </script>

        
    </head>
    <body id="page-top">
        <!-- Navigation-->
        
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
			
            <div class="container">
                <a class="navbar-brand ./resources/js2-scroll-trigger" href="#page-top" style="position:fixed; font-size:25px;" >AI World</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0" style=padiing-left:15px;>
                        <li class="nav-item"><a class="nav-link ./resources/js2-scroll-trigger" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link ./resources/js2-scroll-trigger" href="#swiper">Intro</a></li>
                        <li class="nav-item"><a class="nav-link ./resources/js2-scroll-trigger" href="#services">Services</a></li>
                        <li class="nav-item"><a class="nav-link ./resources/js2-scroll-trigger" href="#portfolio">Portfolio</a></li>
                        <li class="nav-item"><a class="nav-link ./resources/js2-scroll-trigger" href="#contact">Contact</a></li>
                          <li class="nav-item" id="btncol1"><a class="nav-link ./resources/js2-scroll-trigger" href="/product/index">AI SHOP</a></li>
			<li class="nav-item"><a class="nav-link ./resources/js2-scroll-trigger" href="/board/list">고객센터</a></li> <br>
						<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
					
	
						
 
                <!-- 로그인 하지 않은 상태 -->
               <sec:authorize access="isAnonymous()">
                    <div class="login_button"><a href="customLogin" style="font-weight:700;">로그인</a></div> &nbsp;&nbsp;&nbsp;
                    <span><a href="/member/join" style="font-weight:700;">회원가입</a></span>                
              </sec:authorize>
                
                
                  <!-- 로그인한 상태 -->
              <%--   <sec:authorize access="isAuthenticated()"> --%>
               <sec:authorize access="hasAnyRole('ROLE_USER, ROLE_MEMBER')"> 
                    <div class="login_success_area">
                    	
                    	<span><button id="btn01"  style="padding:0; border:none; outline:0; font-weight:700; margin-bottom:7px;">회원정보</button></span>
                    	<ul id="hiden1" class="hiden1" style="dlsplay:none; list-style-type:none; color:black;">
                    	<li style="margin-left:0;"><button class="btn10" onClick="location.href='/member/mypage'">내정보</button><button class="btn10" onClick="location.href='member/cartList'">장바구니</button></li>
                    	
             <%--       <li id="hiden10">ID : <%=name %></li> --%>
                        <li id="hiden10"><sec:authentication property="principal.member.name"/> 님</li>
                           
                         <li class="9" id="hiden10" >충전금액 : <sec:authentication property="principal.member.money"/>$</li>
                         <li id="hiden10">포인트 : <sec:authentication property="principal.member.point"/>$</li>
                         
                         </ul>
       
                    </div>
               		 <li><a href="/customLogout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
				 </sec:authorize>
				 
				 <%--관리자 로그인 --%>
			  <sec:authorize access="hasRole('ROLE_ADMIN')"> 
                    <div class="login_success_area">
                    	
                    	<span><button id="btn01"  style="padding:0; border:none; outline:0; font-weight:700; margin-bottom:7px;">회원정보</button></span>
                    	<ul id="hiden1" class="hiden1" style="dlsplay:none; list-style-type:none; color:black;">
                    	<li style="color:red; font-weight:700;">관리자</li>
                        <li id="hiden10">ID : <%=name %></li> 
                           
                         
                         </ul>
       
                    </div>
               		 <li><a href="/customLogout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
				 </sec:authorize>
				 
	
				     
               
<%--                <!-- 로그인 하지 않은 상태 -->
                 <c:if test = "${member == null }">
                    <div class="login_button"><a href="/member/login">로그인</a></div> &nbsp;&nbsp;&nbsp;
                    <span><a href="/member/join">회원가입</a></span>                
                     </c:if>    
                
                
                  <!-- 로그인한 상태 -->
                	  <c:if test="${ member != null }">
                    <div class="login_success_area">
                    	<span><a href="login.jsp">회원정보</a></span>
                        <span>ID : ${member.id}</span>
                         <span>충전금액 : <fmt:formatNumber value="${member.money }" pattern="#,###.##"/></span>
                           <span>포인트 : <fmt:formatNumber value="${member.point }" pattern="#,###" /></span>
                    </div>
               		 <li><a href="/customLogout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
				     </c:if>
				      --%>
				               
 
				
			
			
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead" >
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end">
                        <h1 class="text-uppercase text-white font-weight-bold"><div class="loading"><span>A.I</span> <span>will</span> <span>bring</span> <span>the</span> <span>biggest</span> <span>change</span> <span>to</span> <span>our</span> <span>lives</span> </div></h1>
                        <hr class="divider my-4" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 font-weight-light mb-5">In the 4th industrial revolution, A.I will bring huge changes to our lives! We need to know and prepare for those changes. All the information you need is here.</p>
                        
                       
                        <a class="btn btn-primary btn-xl ./resources/js2-scroll-trigger" href="/board/list">Learn more</a>
                        <a class="btn btn-primary btn-xl ./resources/js2-scroll-trigger" href="#about">Find Out More</a>
                    </div>
                </div>
            </div>
        </header>
        
        
        
        <section id="swiper">
<div class="swiper-container">
	<div class="swiper-wrapper">
		<div class="swiper-slide"><img data-src="./resources/img/tec/tec1.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="./resources/img/tec/aicar.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="./resources/img/product/ar1.png" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="./resources/img/product/tablet1.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="./resources/img/tec/tec4.jpg" class="swiper-lazy"></div>
		
		<div class="swiper-slide"><img data-src="./resources/img/tec/ai1.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="./resources/img/tec/ai2.png" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="./resources/img/tec/tec7.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="./resources/img/tec/tec6.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="./resources/img/tec/tec8.jpg" class="swiper-lazy"></div>
	

	</div>
	
		<!-- 네비게이션 버튼 -->
	<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
	<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
	
		<!-- 페이징 -->
	<div class="swiper-pagination"></div>
	</div>

	
	  </section>
        
        
        
        
        <!-- About-->
        <section class="page-section bg-primary" id="about">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="text-white mt-0"><div class="loading2"><span>We've</span> <span>got</span> <span>what</span> <span>you</span> <span>need!</span></div></h2>
                        <hr class="divider light my-4" />
                        <p class="text-white-50 mb-4">If you're looking for information on cutting-edge technologies like AI, check it out. You will be able to understand and feel the latest trends. There is no time.  Come on!</p>
                        <a class="btn btn-light btn-xl ./resources/js2-scroll-trigger" href="/product/index2">Get Started!</a>
                    </div>
                </div>
            </div>
        </section>
        
        
        <!-- Services-->
        
        
        <section class="page-section" id="services">
            <div class="container">
                <h2 class="text-center mt-0">At Your Service</h2>
                <hr class="divider my-4" />
                <div class="row">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-gem text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Sturdy Themes</h3>
                            <p class="text-muted mb-0">Our themes are updated regularly to keep them bug free!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-laptop-code text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Up to Date</h3>
                            <p class="text-muted mb-0">All dependencies are kept current to keep things fresh.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-globe text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Ready to Publish</h3>
                            <p class="text-muted mb-0">You can use this design as is, or you can make changes!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-heart text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Made with Love</h3>
                            <p class="text-muted mb-0">Is it really open source if it's not made with love?</p>
                        </div>
                    </div>
                    
                </div>
            </div>
        </section>
        <!-- Portfolio-->
        <div id="portfolio">
            <div class="container-fluid p-0">
                <div class="row no-gutters">
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="./resources/assets2/img/portfolio/fullsize/1.jpg">
                            <img class="img-fluid" src="./resources/assets2/img/portfolio/thumbnails/1.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="./resources/assets2/img/portfolio/fullsize/2.jpg">
                            <img class="img-fluid" src="./resources/assets2/img/portfolio/thumbnails/2.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="./resources/assets2/img/portfolio/fullsize/3.jpg">
                            <img class="img-fluid" src="./resources/assets2/img/portfolio/thumbnails/3.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="./resources/assets2/img/portfolio/fullsize/4.jpg">
                            <img class="img-fluid" src="./resources/assets2/img/portfolio/thumbnails/4.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="./resources/assets2/img/portfolio/fullsize/5.jpg">
                            <img class="img-fluid" src="./resources/assets2/img/portfolio/thumbnails/5.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6" style="margin-bottom:50px;">
                        <a class="portfolio-box" href="./resources/assets2/img/portfolio/fullsize/6.jpg">
                            <img class="img-fluid" src="./resources/assets2/img/portfolio/thumbnails/6.jpg" alt="..." />
                            <div class="portfolio-box-caption p-3">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                            
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Call to action-->
        <section class="page-section bg-dark text-white">
            <div class="container text-center">
                <h2 class="mb-4">Enjoy shopping to your heart's content!</h2>
                <a class="btn btn-light btn-xl" href="/product/index">GO TO SHOPINGMALL!</a>
            </div>
        </section>
        <!-- Contact-->
        <section class="page-section" id="contact">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="mt-0">Let's Get In Touch!</h2>
                        <hr class="divider my-4" />
                        <p class="text-muted mb-5">Ready to start your next project with us? Give us a call or send us an email and we will get back to you as soon as possible!</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
                        <i class="fas fa-phone fa-3x mb-3 text-muted"></i>
                        <div>+1 (555) 123-4567</div>
                    </div>
                    <div class="col-lg-4 mr-auto text-center">
                        <i class="fas fa-envelope fa-3x mb-3 text-muted"></i>
                        <!-- Make sure to change the email address in BOTH the anchor text and the link target below!-->
                        <a class="d-block" href="mailto:contact@yourwebsite.com">contact@yourwebsite.com</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="bg-light py-5">
            <div class="container">
                <div class="small text-center text-muted">
                    Copyright &copy;
                    <!-- This script automatically adds the current year to your website footer-->
                    <!-- (credit: https://updateyourfooter.com/)-->
                    <script>
                        document.write(new Date().getFullYear());
                    </script>
                    - kr.icia.com
                </div><br>
            </div>
            <div class="small text-center text-muted"><a href="/admin/main" style="color:gray">ADMIN VERSION</a></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
        <!-- Core theme JS-->
        <script src="./resources/js2/scripts.js"></script>
        
        
        <script>
        function onDisplay(){
        	$('#hideDiv').show();
        }
        </script>
        
		<script type="module">
  import Swiper from 'https://unpkg.com/swiper/swiper-bundle.esm.browser.min.js'
		</script>
		<script>
	
var swiper = new Swiper('.swiper-container', {

	// ★동적로딩 설정
	lazy : {
		loadPrevNext : true // 이전, 다음 이미지는 미리 로딩
	},
	

	// 페이징 설정
	pagination : {
		el : '.swiper-pagination',
		clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
	},

	// 네비게이션 설정
	navigation : {
		nextEl : '.swiper-button-next', // 다음 버튼 클래스명
		prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
	},
	
	autoplay:{
		delay:2900,
		disableOnInteraction: false,
	},
});

		</script>
    </body>
</html>

