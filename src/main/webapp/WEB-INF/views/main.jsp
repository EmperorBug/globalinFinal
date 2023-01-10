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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<!-- 카카오 js -->
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.1.0/kakao.min.js"
    integrity="sha384-dpu02ieKC6NUeKFoGMOKz6102CLEWi9+5RQjWSV0ikYSFFd8M3Wp2reIcquJOemx" crossorigin="anonymous"></script>
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



.mainNav {
	position: absolute;
	margin-top: 5em;
	top: 0;
	width: 100%;
	z-index: 3;
	color: white;
	text-align: center;
}


</style>
</head>
<body>
	<video id="main_video" src="./img/mainVideo.mp4" autoplay loop muted="muted" width="100%" height="100%"></video>

	<!-- 헤더 -->
	<jsp:include page="./include/header.jsp"></jsp:include>

	
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