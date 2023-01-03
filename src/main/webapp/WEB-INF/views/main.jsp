<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>kapla - 카플라</title>

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

</style>
</head>
<body>
	<video id="main_video" src="./img/mainVideo.mp4" autoplay loop muted="muted" width="100%" height="100%"></video>

	<!-- 헤더 -->
	<div>
		<header>
		<jsp:include page="./include/header.jsp"></jsp:include>
		</header>
	</div>
	
	<!-- 네비 -->
	<div class="mainNav">
		<nav>
		<jsp:include page="./include/nav.jsp"></jsp:include>
		</nav>
	</div>
	
	<!-- 푸터 -->
	<div>
		<jsp:include page="./include/footer.jsp"></jsp:include>
	</div>
	<script type="text/javascript">
		document.getElementById('main_video').play();
	</script>
</body>
</html>