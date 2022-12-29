<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>매장 소개</title>
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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
		<h1 align="center">Store Information</h1>
		<h2 align="center">매장 안내</h2>
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
		<h2>찾아오시는길</h2>
		<h3>쌍문역 4번출구 도보 15분</h3>
		<h4>추후 수정예정</h4>
	</div>
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