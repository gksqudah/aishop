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
<%@ include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>



<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">



<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 다음 우편번호 api -->


<style>
footer {
	padding: 35px 0;
	text-align: center;
	position: absolute;
	bottom: 25px;
	width: 88%;
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

	<div class="container" style="margin-right:27%;">
		<div class="row">
			<div class="col-sm-12">
				<div class="col-sm-2"></div>
				<div class="col-sm-9">
					<h2 class="text-center">내 정보 수정하기</h2>

					<form id="modify_form" method="post">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
						<table class="table table-striped">

							<tr>
								<td>이름</td>
								<td><input type="text" value="${member.name }" name="name"
									class="form-control" readonly></td>
							</tr>


							<tr>
								<td>아이디</td>
								<td><input type="text" value="${member.id }" name="id"
									class="form-control" id="id" style="margin-bottom: 10px;">
									<button id="btn-id" id="btn-id" style=""
										onclick="fn_id_check();">중복 확인</button>
									<br></td>
							</tr>

							<tr>
								<td>패스워드</td>
								<td><input type="password" value="${member.pw }" name="pw"
									id="pw" class="form-control"></td>
							</tr>
							

							

							<tr>
								<td>이메일</td>
								<td><input type="email" value="${member.email }"
									name="email" id="email" class="form-control"></td>
							</tr>

							<tr>
								<td>연락처</td>
								<td><input type="tel" class="form-control m-input"
									id="telInput" required pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}"
									maxlength="13" value="${member.tel }" name="tel"
									class="form-control"></td>
							</tr>

							<tr>
								<td>주소</td>
								<td><input type="text" name="post" class="w-px60" id="post"
									style="width: 100px; margin-bottom: 10px;"
									value="${member.post }" readonly />&nbsp;&nbsp;&nbsp;
									<button class='btn-fill-s' style="background-clor: gray;"
										onclick="daum_post()">우편번호 찾기</button>
									<br> <input type="text" name="address1"
									value="${member.address1 }" style="width: 49%" readonly />&nbsp;
									<input type="text" name="address2" placeholder="상세주소"
									style="width: 49%" id="address2" required /></td>
							</tr>



							<tr>
								<td colspan="2" class="text-center"><input value="회원 수정하기"
									class="btn btn-success" onclick="modify()">
									<button type="button" class="btn btn-warning"
										onclick="history.back()">뒤로 가기</button></td>
							</tr>

						</table>

					</form>

				</div>
			</div>
			<!-- col-sm-12 -->
		</div>
		<!-- row -->
	</div>
	<!-- container end-->

	<!-- Footer-->
	<footer class="py-5 bg-dark" style="border-top: 1px solid #ccc;">

		<div class="container">
			<p class="m-0 text-center text-white">
				kr.icia.com <br>Copyright &copy; Your Website 2021
			</p>
		</div>
	</footer>


	<script>
		function daum_post() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							$('[name=post]').val(data.zonecode); //우편번호
							//지번 주소 : J, 도로명 주소 : R
							var address = data.userSelectedType == 'J' ? data.jibunAddress
									: data.roadAddress; //클릭한 지번주소나, 도로명주소가 저장됨
							if (data.buildingName != '') {
								address += ' (' + data.buildingName + ')'; //건물 명이 있으면 건물 명을 붙여줌
							}
							$('[name=address1]').eq(0).val(address);
						}
					}).open();
		}

		function modify() {
			if ($("#id").val() == "") {
				alert("아이디를 입력해주세요.");
				$("#id").focus();
				return false;
			}
			if ($("#pw").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#pw").focus();
				return false;
			}
			if ($("#email").val() == "") {
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				return false;
			}
			if ($("#telInput").val() == "") {
				alert("연락처를 입력해주세요.");
				$("#telInput").focus();
				return false;
			}
			if ($("#post").val() == "") {
				alert("주소를 입력해주세요.");
				$("#name").focus();
				return false;
			}
			if ($("#address2").val() == "") {
				alert("상세주소를 입력해주세요.");
				$("#name").focus();
				return false;
			}

			if (confirm("정보 수정을 하시겠습니까?")) {
				alert("수정이 완료되었습니다. 감사합니다.");
				$("#modify_form").attr("action", "/member/modify");
				$('form').submit();
			}

		}

		//전화번호 입력 관련
		$('#telInput').keyup(function(event) {
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
	</script>



</body>
</html>

<%@ include file="../includes/footer.jsp"%>