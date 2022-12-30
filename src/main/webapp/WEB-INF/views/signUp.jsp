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
	#form-signup {
		 width : 500px;
		 height : 350px;
		 margin : auto;		
	}
	div.header {
	position: absolute;
	top: 0;
	width: 100%;
	}
	.header span {
		color : black;
	}
	
	.header button {
		color : black;
	}
	
	article {
		margin-top : 5em;
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
	</div>
	<hr>
	<!-- 네비게이터 include 부분 -->	
	<div class="mainNav">
		<nav>
			<jsp:include page="nav.jsp"></jsp:include>
		</nav>
	</div>
	<!-- 회원가입 article 부분 -->
	<article>
		<main class="form-signup" id="form-signup">
			<form>
			  <div class="form-floating">
				<input type="text" class="form-control" id="floatingInput" placeholder="ID" name="ID">
				<label for="floatingInput">ID</label>
			  </div>
			  <div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="PW">
				<label for="floatingPassword">Password</label>
			  </div>
			  <div class="form-floating">
				<input type="text" class="form-control" id="floatingInput" placeholder="name" name="NAME">
				<label for="floatingInput">Name</label>
			  </div>
			  <div class="form-floating">
				<input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="MAIL">
				<label for="floatingInput">Email address</label>
			  </div>
			  <button class="w-100 btn btn-lg btn btn-dark" type="submit">Sign up</button>
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