<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원 가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/signup.css">
</head>
<style>
	
	.top_banner {
		text-align : center;
		margin-top: 2em;
	}

	#direction_text {
		text-align : center;
	}
	#map {
		 width : 500px;
		 height : 350px;
		 margin : auto;		
	}
	div.header {
	position: absolute;
	top: 0;
	z-index: 3;
	width: 100%;
	}
	.header span {
		color : black;
	}
	
	.header button {
		color : black;
	}
	
	div.mainNav {
	position: absolute;
	margin-top: 5em;
	top: 0;
	width: 100%;
	z-index: 3;
	color : white;
	text-align: center;
	
	}
	
	article {
		margin-top : 10em;
	}
	

	span a {
		margin: 2em;
		text-decoration: none;
		color : black;
	}
	
	.way_to_come {
		text-align: center;
	}

</style>
<body>
	<!-- 최상위단 배너부분 -->
	<div class="top_banner">
		<h1 align="center">Sign Up</h1>
		<h2 align="center">회원 가입</h2>
	</div>
	<hr>
	<!-- 헤더 include 부분 -->
	<div class="header">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<!-- 네비게이터 include 부분 -->	
	<div class="mainNav">
		<nav>
			<jsp:include page="nav.jsp"></jsp:include>
		</nav>
	</div>
	<!-- 회원가입 article 부분 -->
	<article>
		<main class="form-signup">
			<form>
			  <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
		  
			  <div class="form-floating">
				<input type="text" class="form-control" id="floatingInput" placeholder="ID" name="ID">
				<label for="floatingInput">ID</label>
			  </div>
			  <div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="PW">
				<label for="floatingPassword">Password</label>
			  </div>
			  <div class="form-floating">
				<input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="MAIL">
				<label for="floatingInput">Email address</label>
			  </div>
			  <div class="checkbox mb-3">
				<label>
				  <input type="checkbox" value="remember-me"> Remember me
				</label>
			  </div>
			  <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
			</form>
		  </main>
	</article>
	<br>
	<hr>
	<!-- Footer include 부분  -->
	<div class="footer">
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	</div>
	<!-- directions.jsp 작성자 : 김형우 -->
</body>
</html>