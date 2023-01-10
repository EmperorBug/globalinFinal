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
	
	img {
		max-width : 100%;
		height : auto;
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
		width : 100%;
		display : inline-block;
	}
	/* 제품 섹션 */

	.image_section {
		width : 50%;
		text-align: center;
	}
	/* 이미지 섹션 */
	
	.detail_section {
		width : 50%;
		text-align: center;
		font-family: sans-serif;
		padding : 20px;
	}

	.product_status {
		font-size : 16px;
	}
		
	.product_name  {
		font-size : large;
		font-weight: 700;
	}
	
	.product_buy_phase {
		margin-top: 20px;
	}
	
	.product_buy_button {
		color : black;
		border-style: solid;
		border-width : 1px 1px 1px 1px;
		box-shadow: none;
		padding : 10px;
	}
	
	.populated_padding {
		padding : 10px;
	}
	/* 각 div간 바깥쪽에 padding을 10씩 부여시켰다. */
	
	.spreadBtn {
		text-align: left;
	}
	
	.spreadBtn table {
		width : 100%;
	}
	.spreadBtn table th {
		width : 25%;
	}
	
	.spreadBtn table th,td {
		padding : 10px;
	}
	
	.spreadBtn table th {
		border-width: 1px;
	}
	
	.spreadBtn table td {
		border-width: 1px;
	}
	
	.product_detail_table {
		border : 1px solid black;
		border-collapse: collapse;
		
	}
	
	.spreadBtn p {
		
		text-align: left;
	}

</style>
<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
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
					<img src="${product_view.url}">
				</div>
				<!-- 상품 이미지 div -->
				<div class="product_section detail_section">
					<div class="product_status populated_padding">
						${product_view.item_status}					
					</div>
					<div class="product_name populated_padding">
						${product_view.name}	
					</div>
					<div class="product_price populated_padding">
						<h4>
						${product_view.price} 원			
						</h4>
					</div>
					<div class="product_buy_phase populated_padding">
						<span class="product_buy_button">
							<a href="/product_buy">
	 							구매하기
	 						</a>
						</span> 
					</div>
					<hr>
					<div class="spreadBtn populated_padding">
					<details>
					<summary>제품 세부 정보</summary>
						<table class="product_detail_table">
							<tr>
								<th>전성분</th>
								<td>
									<span>
										레몬 오일,레몬 테르펜,라임 테르펜,매그롤란(태산목꽃추출물),다이프로필렌글라이콜,테트라메틸아세틸옥타하이드로나프탈렌,에틸리날룰
										<br>
										(제품을 구성하는 주요 성분은 변경될 수 있습니다.)
									</span>
								</td>
							</tr>
							<tr>
								<th>사용방법</th>
								<td>설명2</td>
							</tr>
							<tr>
								<th>주의사항</th>
								<td>설명3</td>
							</tr>
							<tr>
								<th>상세정보</th>
								<td>설명4</td>
							</tr>
						</table>
					</details>					
					</div>
					<!-- 제품 세부 정보 div -->
					<hr>
					<div class="spreadBtn populated_padding">
					<details>
						<summary>배송 & 반품</summary>
						<p>
							배송비 : 3,000원 (4만원 이상 구매 시 무료배송)(로젠택배)
							<br>
							교환&반품비 : 6,000원
							<br>
							배송기간 : 보통 1~3일 정도 소요
							<br>
							(지역 택배사 사정에 따라 약간의 지연 될 수 있음.) 
						</p>
					</details>
					</div>
					<!-- 배송, 반품 설명 div -->
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