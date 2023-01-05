<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Kapla</title>
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&display=swap"
	rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style>
	
	.header button {
		color : black;
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
	
	.section_line { 
	
		margin-top : 50px;
		margin-bottom : 50px;
		padding : 0px 200px 0px 200px;
		position : relative;
		flex-wrap : wrap;	
		width : 100%;
		display : flex;
		
	}
	
	.product_section {
		width : 50%;
	}
	
	.image_section {
		width : 50%;
		text-align: center;
	}
	
	.detail_section {
		text-align: center;
		font-family: sans-serif;
	}
	
	img {
		max-width : 100%;
		height : auto;
	}	
	

</style>
</head>
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
	
	<!-- 상품 설명 페이지 본문 내용 Article -->
	<div class="product_detail">
		<article>
			<div class="section_line">
				<div class="product_section image_section image_file_property">
					<img src="/item_img/9.Signature.png">
				</div>
				<!-- 상품 이미지 div -->
				<div class="product_section detail_section">
					<div class="product_status">
						<h4>
						${product_view.item_status}					
						</h4>
					</div>
					<div class="product_name">
						<h3>
						상품명 : ${product_view.name}	
						</h3>
					</div>
					<div class="product_price">
						<h4>
						가격 : ${product_view.price}					
						</h4>
					</div>
				</div>
				<!-- 상품 설명 div -->
			</div>
			<!-- 상단 div -->
		</article>
	</div>
	<hr>
	<!-- Footer include 부분  -->
	<div class="footer">
	<footer>
		<jsp:include page="./include/footer.jsp"></jsp:include>
	</footer>
	</div>

</body>
</html>