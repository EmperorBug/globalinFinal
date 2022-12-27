<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>매장 소개</title>
    <link
	href="https://fonts.googleapis.com/css2?family=Lobster&display=swap"
	rel="stylesheet">
</head>
<style>
	#direction_text {
		text-align : center;
	}
	#map {
		 width : 500px;
		 height : 350px;
		 margin : auto;		
	}
	.header {
	position: absolute;
	top: 0;
	z-index: 3;
	width: 100%;
	}
	.header span {
		color : black;
	}
	
	.nav {
	position: absolute;
	margin-top: 12em;
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

</style>
<body>


<h1 align="center">Store Information</h1>
<h2 align="center">매장 안내</h2>
<hr>
	<div class="header">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<!-- 헤더 include 부분 -->
	<div class="nav">
		<nav>
			<span><a>Brand</a></span>
			<span><a>Shop</a></span> 
			<span><a href="/" style="font-family: Lobster; font-size: 30px;">kepla</a></span>
			<span><a>Event</a></span> 
			<span><a href="/map">Store</a></span>
			</nav>
	</div>
	<!-- 네비게이터 부분 -->	
		
	<article>
	<!-- 지도를 표시할 article 부분 -->
	<!-- 지도를 표시할 div -->
	<div id="map"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c1c3e4cc123db1b267c99fc265d71a73">
	</script>
	<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    		mapOption = { 
       		center: new kakao.maps.LatLng(37.65242589349982, 127.02763883854806), // 지도의 중심좌표
        	level: 3 // 지도의 확대 레벨
    		};

			// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
			var map = new kakao.maps.Map(mapContainer, mapOption); 
	</script>
	</article>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- footer 부분 -->

</body>
</html>