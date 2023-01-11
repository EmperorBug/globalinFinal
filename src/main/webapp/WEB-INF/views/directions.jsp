<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/css/main.css" rel="stylesheet">
<title>매장 소개</title>
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/c179c056d7.js" crossorigin="anonymous"></script>
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
	position: relative;
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
	position: relative;
	margin-top: 5em;
	top: 0;
	width: 100%;
	z-index: 3;
	color : white;
	text-align: center;
	
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

	.fa-solid {
		color : green;
		font-size : 1em;
	}	
	.icon {
		font-size : 1.2em;
	}

</style>
<body>

	
	<!-- 헤더 include 부분 -->
	<div class="header">
		<jsp:include page="./include/header.jsp"></jsp:include>
	</div>
	<!-- 네비게이터 include 부분 -->	
	<div class="mainNav">
		<nav>
			<jsp:include page="./include/nav.jsp"></jsp:include>
		</nav>
	</div>
	<hr>
	<!-- 상단 배너부분 -->
	<div class="top_banner">
		<h1 align="center">Store Information</h1>
		<h2 align="center">매장 안내</h2>
	</div>
	<!-- 지도를 표시할 article 부분 -->
	<article>
	<!-- 지도를 표시할 div -->
	<div id="map"></div>
	<br>
	<!-- 카카오 지도를 받아오는 자바스크립트 키 -->
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
	<!-- 오시는길 text 부분 -->
	<div class="way_to_come">
		
		<div class="icon">
			<i class="fa-solid fa-store"></i>
			<span>롯데백화점 쌍문점</span>
		</div>
		<div class="icon">
			<i class="fa-solid fa-location-pin"></i>
			<span>매장주소 : 서울 도봉구 둘리길 둘리뮤지엄 2층 카플라</span>
		</div>
		<div class="icon">
			<i class="fa-solid fa-phone-flip"></i>
			<span>전화번호 : 010-2601-2281</span>			
		</div>
		<div class="icon">
			<i class="fa-solid fa-circle-dot"></i>
			<span>영업시간 : 09:30 ~ 18:20</span>
		</div>
		
	</div>
	</article>
	
	<br>
	<hr>
	<!-- Footer include 부분  -->
	<div class="footer">
	<footer>
		<jsp:include page="./include/footer.jsp"></jsp:include>
	</footer>
	</div>
	<!-- directions.jsp 작성자 : 김형우 -->
</body>
</html>