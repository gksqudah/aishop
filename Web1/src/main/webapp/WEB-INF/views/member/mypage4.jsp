<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>     
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>
    <%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP JSW 게시판 웹사이트 </title>
</head>
<body>


	<nav class="navbar navbar-default">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
		data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
		aria-expanded="false">
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="main.jsp">JSP 게시판 메인</a>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ui class="nav navbar-nav">
			<li><a href="main.jsp">메인</a></li>
			<li><a href="bbs.jsp">게시판</a></li>	
		</ui>
		<ui class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></</span></a>
				<ul class="dropdown-menu">
					<li><a href="login.jsp">로그인</a></li>
					<li class="active"><a href="join.jsp">회원가입</a></li>
				</ul>	
			</li>
		</ui>
	</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
			<form method="post" action="userUpdateAction.jsp" >
				<h3 style="text-align: center;">회원정보 수정</h3>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20" value="${member.id }" readonly>
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20" value="">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20" value="${member.name }">
				</div>
				<div class="form-group" style="text-align: center;">
					<div class="btn-group" data-toggle="buttons">
						


					</div>
				</div>
				<div class="form-group">
					<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="50" value="${member.email }">
				</div>
				<input type="submit" class="btn btn-primary form-control" value="수정완료">
			</form>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>