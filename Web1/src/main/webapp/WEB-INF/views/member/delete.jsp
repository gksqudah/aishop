<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <%@ include file="../includes/header.jsp"%>
<html>
	<head>

		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<title>회원탈퇴</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#userPass").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPass").focus();
					return false;
				}	
			});

				
			
		});

	 	
	</script>
	
	<style>
	footer{
		padding:35px 0; text-align: center; position:absolute; bottom:25px; width:88%;
	}
	</style>
	
	
	
	<body>
		<section id="container" >
			<form action="/member/delete" method="post">
			 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>    
			 		<h2 style="margin-top:20px; margin-bottom:20px;" >회원 탈퇴</h2>
			     <div class="form-group has-feedback">
					<label class="control-label" for="userName">성명</label>
					<input class="form-control" type="text" id="userName" name="name" value="${member.name}" readonly="readonly"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userId">아이디</label>
					<input class="form-control" type="text" id="userId" name="id" value="${member.id}" readonly="readonly"/>
				</div>

				<div class="form-group has-feedback">
					<label class="control-label" for="userPass">패스워드</label>
					<input class="form-control" type="password" id="userPass" name="pw" />
				</div>
				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원탈퇴</button>
					<button class="cencle btn btn-danger" type="button">취소</button>
				</div>
			</form>
			<div>
				<c:if test="${msg == false}">
					비밀번호가 맞지 않습니다.
				</c:if>
			</div>
		</section>
		
		        <!-- Footer-->
        <footer class="py-5 bg-dark" style=" border-top:1px solid #ccc;">
        
            <div class="container"><p class="m-0 text-center text-white">kr.icia.com <br>Copyright &copy; Your Website 2021</p></div>
        </footer>
     
		
		
		<script>
		
		$('#submit').on("click", function(){
			alert("회원탈퇴가 완료되었습니다.");
			document.location.href ="${url}"
			});
		</script>
		
		
	</body>
	
</html>
<%@ include file="../includes/footer.jsp"%>
