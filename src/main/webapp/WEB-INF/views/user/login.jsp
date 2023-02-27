<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link href="/css/main.css" rel="stylesheet">	
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- 카카오 js -->
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.1.0/kakao.min.js"
    integrity="sha384-dpu02ieKC6NUeKFoGMOKz6102CLEWi9+5RQjWSV0ikYSFFd8M3Wp2reIcquJOemx" crossorigin="anonymous"></script>	
</head>
<body>
<!-- 헤더 include 부분 -->
	<jsp:include page="../include/header.jsp"></jsp:include>
	<!-- 네비게이터 include 부분 -->	
	<jsp:include page="../include/nav.jsp"></jsp:include>
	<div class="wrap">
		<main class="loginMain">
			<form action="/user/login" method="post">
<!-- 			testuser3
			test123@ <br>
			testuser2
			test123@ (ADMIN 계정) -->
			<span style="color: red">${exception }</span>
			<p>로그인</p>
			  <div class="form-floating">
				<input type="text" class="form-control" id="id" placeholder="name@example.com" name="id">
				<label for="id">ID</label>
			  </div>
			  <div class="form-floating">
				<input type="password" class="form-control" id="password" placeholder="Password" name="password">
				<label for="password">Password</label>
			  </div>
<!-- 			  <div class="checkbox mb-3">
				<label>
				  <input type="checkbox" value="remember-me"> Remember me
				</label>
			  </div> -->
			  <button class="w-100 btn btn-lg btn-dark" type="submit">Sign in</button>
			  
			  <!--카카오 로그인 버튼 작성 김도형  -->
			  <button class="w-100 btn btn-lg" style="background-color: #FEE500; margin-top: 5px" onclick="loginWithKakao()" type="button">
			  	<img alt="말풍선 아이콘" src="/img/pngegg.png" width="22px">
			  	카카오 로그인
			  </button>      
			</form>
			<hr>
			<button type="button" class="btn btn-light loginFormBtn">아이디 찾기</button>
			<button type="button" class="btn btn-light loginFormBtn">비밀번호 찾기</button>
		</main>
	</div>
	<script type="text/javascript">
		loginWithKakao = () => {
			
	        //발급받은 앱키를 입력
	        Kakao.init('635bed4d6fec96cfc9b8dd8e27301c1f');
	        Kakao.Auth.authorize({
	            redirectUri: 'http://localhost:8282/api/kakaoLogin',
	        });
		}
	</script>
</body>
</html>