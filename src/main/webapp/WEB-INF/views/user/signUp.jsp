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

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/aJax.js"></script>
<style type="text/css">
.join_placeholder {
	font-size: 0.8em;
	text-align: left;
	margin-bottom: 0;
}
</style>
</head>
<body>
	<!-- 헤더 include 부분 -->
	<jsp:include page="../include/header.jsp"></jsp:include>
	<!-- 네비게이터 include 부분 -->	
	<jsp:include page="../include/nav.jsp"></jsp:include>
	<!-- 회원가입 article 부분 -->
	<main class="loginMain">
	<input type="hidden" id="idchk" value="false">
		<form id="joinForm" action="/user/join" method="post" onsubmit="return valchk()"> 
		  <div class="form-floating">
			<input type="text" class="form-control" id="id" placeholder="최소6자이상 최대 19자이하" name="id" maxlength="20">
			<label for="id">ID</label>
			<p class="join_placeholder">최소6자 ~ 최대19자</p>
		  </div>
		  <div class="form-floating">
			<input type="password" class="form-control" id="password" placeholder="password" name="password" maxlength="30">
			<label for="password">Password</label>
			<p class="join_placeholder">특수문자를 하나 포함하여 대소문자+숫자</p>
		  </div>
		  <div class="form-floating">
			<input type="email" class="form-control" id="email" placeholder="name@example.com" name="email" maxlength="100">
			<label for="email">Email address</label>
			<p class="join_placeholder">비밀번호찾기시 이용됩니다</p>
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
	
	$('#id').on('change', function() {
		const id = this.value;
		const data = {'id':id};
		const result = postAjax('/rest/idchk',data);
		if (result == 0) {
			$('#idchk').val('');
		} 
		else {
			$('#idchk').val('false');
		}
	});
		function valchk() {
			
			const form 		= document.getElementById('joinForm');
			const idregx 	= /^[a-z]+[a-z0-9]{6,19}$/g;
			const pwdregx	= /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,30}$/;
			const emailregx = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			
/* 			const phoneregx = /^\d{3}-\d{3,4}-\d{4}$/; */
		
			if (form.id.value == '' ) {
				alert('아이디를 입력해주세요');
				$('#id').addClass('is-invalid');	//클래스추가
				form.id.focus();					//해당부분 포커스
				return false;
			}
			if (!idregx.test(form.id.value)) {
				alert('아이디 형식을 지켜주세요.');
				$('#id').addClass('is-invalid');
				form.id.focus();
				return false;
			}
			//아이디 중복시
			if ($('#idchk').val() == 'false') {
				alert('중복된 아이디입니다. 다른아이디를 입력해주세요!');
				$('#id').addClass('is-invalid');
				form.id.focus();
				return false;
			}
			//유효성검사 통과시 클래스 지움
			$('#id').removeClass('is-invalid');
			
			if (form.password.value == '' ) {
				alert('비밀번호 입력해주세요');
				$('#password').addClass('is-invalid');
				form.password.focus();
				return false;
			}
			if (!pwdregx.test(form.password.value)) {
				console.log(form.password)
				alert('비밀번호 형식을 지켜주세요.');
				$('#password').addClass('is-invalid');
				form.password.focus();
				return false;
			}
			$('#password').removeClass('is-invalid');
			
			if (form.email.value == '' ) {
				alert('이메일을 입력해주세요');
				$('#email').addClass('is-invalid');
				form.email.focus();
				return false;
			}
			if (!emailregx.test(form.email.value)) {
				alert('이메일 형식을 지켜주세요.');
				$('#email').addClass('is-invalid');
				form.email.focus();
				return false;
			}
			$('#email').removeClass('is-invalid');
		}
	</script>
</body>
</html>