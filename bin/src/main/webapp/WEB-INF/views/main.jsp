<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>kapla - 카플라</title>
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&display=swap"
	rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style>
html, body {
	margin: 0;
}

span a {
	margin: 2em;
	text-decoration: none;
	color : white;
}

.main {
	font-size: 30px;
}

.#main_video {
	position: relative; 
	top: 0; 
	left: 0; 
	object-fit: cover;
}

.mainNav {
	position: absolute;
	margin-top: 5em;
	top: 0;
	width: 100%;
	z-index: 3;
	color: white;
	text-align: center;
}

.header {
	position: absolute;
	top: 0;
	z-index: 3;
	width: 100%;
}

.btn.btn-outline-light.border-none {
	border: none;
	box-shadow: none;
}
</style>
</head>
<body>
	<video id="main_video" src="/img/mainVideo.mp4" autoplay loop muted="muted" width="100%" height="100%"></video>

	<!-- 헤더 -->
	<div>
		<header>
		<jsp:include page="header.jsp"></jsp:include>
		</header>
	</div>
	
	<!-- 네비 -->
	<div class="mainNav">
		<nav>
		<jsp:include page="nav.jsp"></jsp:include>
		</nav>
	</div>
	
	<!-- 푸터 -->
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<script type="text/javascript">
		document.getElementById('main_video').play();
	</script>
</body>
</html>