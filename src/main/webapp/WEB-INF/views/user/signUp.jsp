<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원 가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="/css/main.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
	<!-- 헤더 include 부분 -->
	<jsp:include page="../include/header.jsp"></jsp:include>
	<!-- 네비게이터 include 부분 -->	
	<jsp:include page="../include/nav.jsp"></jsp:include>
	<!-- 회원가입 article 부분 -->
	<main class="loginMain">
		<form id="joinForm" action="/join" method="post" onsubmit="return valchk()"> 
		  <div class="form-floating">
			<input type="text" class="form-control" id="id" placeholder="id" name="id" maxlength="20">
			<label for="id">ID</label>
		  </div>
		  <div class="form-floating">
			<input type="password" class="form-control" id="password" placeholder="password" name="password" maxlength="30">
			<label for="password">Password</label>
		  </div>
		  <div class="form-floating">
			<input type="email" class="form-control" id="email" placeholder="name@example.com" name="email" maxlength="100">
			<label for="email">Email address</label>
		  </div>
		  <button class="w-100 btn btn-lg btn btn-dark">Sign up</button>
		</form>
	  </main>
	<br>
	<hr>
	<!-- Footer include 부분  -->
	<div class="footer">
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
	</div>
	<!-- signUp.jsp 작성자 : 박진영 -->
	<!-- signUp.jsp 수정 : 김도형 -->
	
	<script type="text/javascript">
		function valchk() {
			const form 		= document.getElementById('joinForm');
			const idregx 	= /^[a-z]+[a-z0-9]{6,19}$/g;
			const pwdregx	= /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,30}$/;
			const emailregx = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			
/* 			const phoneregx = /^\d{3}-\d{3,4}-\d{4}$/; */
		
			if (form.id.value == '' ) {
				alert('아이디를 입력해주세요');
				form.id.focus();
				return false;
			}
			if (!idregx.test(form.id.value)) {
				alert('아이디 형식을 지켜주세요.');
				form.id.focus();
				return false;
			}
			if (form.password.value == '' ) {
				alert('비밀번호 입력해주세요');
				form.password.focus();
				return false;
			}
			if (!idregx.test(form.password.value)) {
				alert('비밀번호 형식을 지켜주세요.');
				form.password.focus();
				return false;
			}
			if (form.email.value == '' ) {
				alert('이메일을 입력해주세요');
				form.email.focus();
				return false;
			}
			if (!idregx.test(form.email.value)) {
				alert('이메일 형식을 지켜주세요.');
				form.email.focus();
				return false;
			}
			
			alert('회원등록 완료 되었습니다!');
		}
	</script>
</body>
</html>