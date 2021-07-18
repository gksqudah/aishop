<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="./includes/header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Bootstrap Admin Theme</title>

<!-- Bootstrap Core CSS -->
<link href="./resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="./resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="./resources/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="./resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<style>
/* 로그인 실패시 경고글 */
.login_warn{
    margin-top: 30px;
    text-align: center;
    color : red;
}
 
</style>

<script>


</script>



</head>

<body>

	<div class="container">
		
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
			 <h2 class="text-center" STYLE="MArgin-TOP:2.5em;">로그인</h2>
				<div class="login-panel panel panel-default">
				
					<div class="panel-heading">
					 
						<h3 class="panel-title">Please Sign In</h3>
					</div>
					<div class="panel-body">
						<form role="form" method='post' action="/login" >
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="userid"
										id="id" name="username" type="text" autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Password"
										id="pw" name="password" type="password" value="">
								</div>
								
					            <c:if test = "${result == 0 }">
					                <div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
					            </c:if>
							
								
								<div class="checkbox">
									<label> <input name="remember-me" type="checkbox">Remember
										Me
									</label>
								</div>
								<!-- Change this to a button or input when using this as a form -->
								<a href="/customLogin" class="btn btn-lg btn-success btn-block" id="login_button">Login</a>
								<a href="/member/join" class="btn">회원가입</a>
								<a href="/" class="btn">홈으로</a>
							</fieldset>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container" style="text-align:center;">
	<fieldset>
		<label></label> <br>
		<div id="googleLoginBtn" style="cursor: pointer">
			<img id="googleLoginImg" src="./resources/img/google.png" width="30%" margin:auto;>
		</div>
	</fieldset>
	</div>



	<!-- jQuery -->
	<script src="./resources/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="./resources/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="./resources/dist/js/sb-admin-2.js"></script>
	
  <script>
  
  
//엔터를 누를 경우
  $('#pw').on('keypress', function(e) {
  	if(e.keyCode == 13) {
  		if(necessary()) {$('form').submit(); }
  		else {return false;}
  	}
  });
  
  $(".btn-success").on("click", function(e){
    
    e.preventDefault();
    $("form").submit();
    
    var userId = $("#id").val();
    var userPw = $("#pw").val();
    if(userId == ""){
    	alert("아이디를 입력하세요.");
    	$("#id").focus();
    	return;
    }
    if(userPw == ""){
    	alert("비밀번호를 입력하세요.");
    	$("#pw").focus();
    	return;
    }
    
    if($(result) == 0){
    	alert("아이디나 비밀번호를 확인해주세요");
    	return;
    }
/*  	$.ajax({
		type: 'post',
		url: '/customLogin',
		data: { id:$('#id').val(), pw:$('#pw').val() },
		success: function(data) {
			if(data == 'true') {
				location.reload();
			} else {
				alert('아이디나 비밀번호가 일치하지 않습니다!');
				$("#id").focus();
			}
		},
		error: function(req, text) {
			 alert(text + ': ' + req.status);
	 	}
	});
    document.form.action="${path}/loginCheck.do" */ 
  });
  
  $("#login_button").click(function(){
	  $("#login_form").attr("action", "/customLogin");
	  $("#login_form").submit();
  })
  
  </script>
  
<c:if test="${param.logout != null}">
      <script>
      $(document).ready(function(){
      	alert("로그아웃하였습니다.");
      });
      </script>
</c:if>  

</body>

</html>

<%@ include file="/WEB-INF/views/member/footer.jsp"%>
