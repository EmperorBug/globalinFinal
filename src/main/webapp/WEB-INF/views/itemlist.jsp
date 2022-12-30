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
<%@ include file="modals/loginModal.jsp" %>
<%@ include file="modals/signUpModal.jsp" %>
<%@ include file="modals/cartModal.jsp" %>
<style>
	
	img {
	  width: 200px;
	  height: 250px;
	  object-fit: cover;
	}

	
	.top_banner {
		text-align : center;
		margin-top: 2em;
	}
	
	.brandArticle {
		text-align : center;
		font-size: 2em;
	}
	
	.header button {
		color : black;
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
	
	.section_line { 
	
		margin-top : 50px;
		margin-bottom : 50px;
		padding : 0px 200px 0px 200px;
		position : relative;
		flex-wrap : wrap;	
		width : 100%;
		
	}
	
	h4 {
		text-align : center;
		margin : 0;
		line-height : 100px;
	}
	
	.populated_padding {
		padding : 10px;
	}
	
	.items {
		height : 400px;
		width : 250px;		
	}
	
	.item_widget_container {
		display : inline-block;
	}
	

</style>
</head>
<body>
	<!-- 최상위단 배너부분 -->
	<div class="top_banner">
		<h1>kapla</h1>
		<h2>ITEM VIEW</h2>
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
	
	<!-- 상품 쇼핑 페이지 본문 내용 Article -->
	<div class="itemList">
		<article>
			<section class="section_line">
			<div class="populated_padding">
				<div class="items populated_padding item_widget_container">
					<h4 class="item_heading_title">
						<img src="/item_img/9.Signature.png">
						<a href="/" style="text-decoration : none;">
						김도형
						<br>
						조장
						</a>				
					</h4>
					<h4 class="item_price">
						100원
					</h4>
				</div>	
				<div class="items populated_padding item_widget_container">
					<h4 class="item_heading_title">
						<img src="/item_img/2.Magnolia Lake.png">
						<a href="/" style="text-decoration : none;">
						김형우
						<br>
						부조장
						</a>
					</h4>
					<h4 class="item_price">
						200원
					</h4>
				</div>
				<div class="items populated_padding item_widget_container">
					<h4 class="item_heading_title">
						<img src="/item_img/3.Blue Sage & Sea Salt.png">
						<a href="/" style="text-decoration : none;">
						김상현
						<br>
						총무
						</a>				
					</h4>
					<h4 class="item_price">
						300원
					</h4>
				</div>	
				<div class="items populated_padding item_widget_container">
					<h4 class="item_heading_title">
						<img src="/item_img/4.Ojai Garden.png">
						<a href="/" style="text-decoration : none;">
						박진영
						<br>
						조원
						</a>
					</h4>
					<h4 class="item_price">
						400원
					</h4>
				</div>						
			</div>
			</section>
			<!--  두번째 줄 구분선  -->
			<section class="section_line">
				<div class="populated_padding">
				<div class="items populated_padding item_widget_container">
					<h4 class="item_heading_title">
						<img src="/item_img/5.Sea Moss.png">
						<a href="/" style="text-decoration : none;">
						강준일
						<br>
						외부자
						</a>				
					</h4>
					<h4 class="item_price">
						500원
					</h4>
				</div>	
				<div class="items populated_padding item_widget_container">
					<h4 class="item_heading_title">
						<img src="/item_img/6.Calabria Bergamot.png">
						<a href="/" style="text-decoration : none;">
						강준2
						<br>
						외부자2
						</a>
					</h4>
					<h4 class="item_price">
						600원
					</h4>
				</div>			
			</div>
			</section>
		</article>
	</div>
	<hr>
	<!-- Footer include 부분  -->
	<div class="footer">
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	</div>

</body>
</html>