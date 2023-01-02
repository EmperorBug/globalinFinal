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
<%@ include file="modals/cartModal.jsp" %>
<style>
	
	img {
	    height: auto;
	    max-width: 100%;
	    border: none;
	    border-radius: 0;
	    box-shadow: none;
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
	
	h4 .item_price {
		font-size: 0.5em;
	}
	
	.populated_padding {
		padding : 10px;
	}
	/* 각 div간 바깥쪽에 padding을 10씩 부여시켰다. */
	
	.items {
		height : 30em;
		width : 15em;		
	}
	
	/* item 한 div의 크기는 450px, 250px으로 고정시켰다. */
	
	.item_widget_container {
		display : flex;
		position : relative;
		flex-wrap: wrap;
	}
	/* 플렉스 정렬 */
	
	.item_flex_width {
		position : relative;
		width : 25%;
	}
	/* 각각의 품목 25%씩 너비를 줌 */

 	.item_detail {
		/* display : inline-block; */
		letter-spacing: -1px;
	}
	/* detail들 간에는 inline-block으로 정렬되게 함*/
 
	
	

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
			<div class="populated_padding item_widget_container" >
			<!-- flex 정렬시켜줄 역할을 하는 div, 컨테이너로 묶는다. -->
				<div class="items populated_padding item_flex_width item_detail">
				<!--
					   최상위단 div부분이며, 1개의 item에 담긴 아래의 4개의 정보들을 담음
					   1. 각각 링크가 달린 이미지
					   2. 상품의 등급(Signature/Limited Edition등을 담을 구역)
					   3. 링크가 달린 상품명 
					   4. 상품의 가격
				 	-->
					<div class="image_contained item_detail populated_padding">
					<!-- 1. 이미지가 포함된 div. 링크를 누르면 상품 detail / 주문 페이지로 연결시켜줌 -->
						<a href="">
							<img src="/item_img/9.Signature.png">
						</a>
					</div>
					<div class="item_status item_detail populated_padding">
					<!--  2. 상품의 등급(상태)를 설정해줄 곳 -->
						<h4 class="item_heading_title">
							Limited Edition
						</h4>
					</div>
					<div class="linked_item_list item_detail populated_padding">
					<!-- 3. 링크가 포함된 상품명 -->
						<h4 class="item_heading_title">
							<a href="/" style="text-decoration : none;">
								Pure Oil Perfume (30ml)
								<br>
								퓨어 오일 퍼퓸
							</a>		
						</h4>
					</div>
					<div class="item_price item_detail populated_padding">
						<h4 class="item_heading_title">
							Sold Out
						</h4>
					</div>
				</div>	
				<!-- 2번째 아이템 -->
				<div class="items populated_padding item_flex_width item_detail">
					<div class="populated_padding image_contained item_detail">
						<a href="">
							<img src="/item_img/1.Bombshell.png">
						</a>
					</div>
					<div class="populated_padding item_status item_detail">
						<h4 class="item_heading_title">
							Signature
						</h4>
					</div>
					<div class="populated_padding linked_item_list item_detail">
						<h4 class="item_heading_title">
							<a href="/" style="text-decoration : none;">
								Bombshell
								<br>
								밤쉘
							</a>		
						</h4>
					</div>
					<div class="populated_padding item_price item_detail">
						<h4 class="item_heading_title">
							54,000원
						</h4>
					</div>
				</div>
				<div class="items populated_padding item_flex_width item_detail">
					<div class="populated_padding image_contained item_detail">
						<a href="">
							<img src="/item_img/2.Magnolia Lake.png">
						</a>
					</div>
					<div class="populated_padding item_status item_detail">
						<h4 class="item_heading_title">
							/
						</h4>
					</div>
					<div class="populated_padding linked_item_list item_detail">
						<h4 class="item_heading_title">
							<a href="/" style="text-decoration : none;">
								Magnolia Lake
								<br>
								매그놀리아 레이크
							</a>		
						</h4>
					</div>
					<h4 class="item_price item_detail">
						54,000원
					</h4>
				</div>
				<div class="items populated_padding item_flex_width item_detail">
					<div class="populated_padding image_contained item_detail">
						<a href="">
							<img src="/item_img/3.Blue Sage & Sea Salt.png">
						</a>
					</div>
					<div class="populated_padding item_status item_detail">
						<h4 class="item_heading_title">
							/
						</h4>
					</div>
					<div class="populated_padding linked_item_list item_detail">
						<h4 class="item_heading_title">
							<a href="/" style="text-decoration : none;">
								Blue Sage & Sea Salt
								<br>
								블루 세이지 & 씨 솔트
							</a>		
						</h4>
					</div>
					<h4 class="item_price item_detail">
						54,000원
					</h4>
				</div>	
							<div class="items populated_padding item_flex_width item_detail">
					<div class="populated_padding image_contained item_detail">
						<a href="">
							<img src="/item_img/4.Ojai Garden.png">
						</a>
					</div>
					<div class="populated_padding item_status item_detail">
						<h4 class="item_heading_title">
							/
						</h4>
					</div>
					<div class="populated_padding linked_item_list item_detail">
						<h4 class="item_heading_title">
							<a href="/" style="text-decoration : none;">
								Ojai Garden
								<br>
								오하이 가든
							</a>		
						</h4>
					</div>
					<div class="populated_padding item_price item_detail">
						<h4 class="item_heading_title">
							54,000원
						</h4>
					</div>
				</div>
				<div class="items populated_padding item_flex_width item_detail">
					<div class="populated_padding image_contained item_detail">
						<a href="">
							<img src="/item_img/5.Sea Moss.png">
						</a>
					</div>
					<div class="populated_padding item_status item_detail">
						<h4 class="item_heading_title">
							/
						</h4>
					</div>
					<div class="populated_padding linked_item_list item_detail">
						<h4 class="item_heading_title">
							<a href="/" style="text-decoration : none;">
								Sea Moss
								<br>
								씨 모스
							</a>		
						</h4>
					</div>
					<div class="populated_padding item_price item_detail">
						<h4 class="item_heading_title">
							54,000원
						</h4>
					</div>
				</div>
				<div class="items populated_padding item_flex_width item_detail">
					<div class="populated_padding image_contained item_detail">
						<a href="">
							<img src="/item_img/6.Calabria Bergamot.png">
						</a>
					</div>
					<div class="populated_padding item_status item_detail">
						<h4 class="item_heading_title">
							/
						</h4>
					</div>
					<div class="populated_padding linked_item_list item_detail">
						<h4 class="item_heading_title">
							<a href="/" style="text-decoration : none;">
								Calabria Bergamot
								<br>
								칼라브리아 버가못
							</a>		
						</h4>
					</div>
					<div class="populated_padding item_price item_detail">
						<h4 class="item_heading_title">
							54,000원
						</h4>
					</div>
				</div>
				<div class="items populated_padding item_flex_width item_detail">
					<div class="populated_padding image_contained item_detail">
						<a href="">
							<img src="/item_img/7.Bulgarian Rose.png">
						</a>
					</div>
					<div class="populated_padding item_status item_detail">
						<h4 class="item_heading_title">
							/
						</h4>
					</div>
					<div class="populated_padding linked_item_list item_detail">
						<h4 class="item_heading_title">
							<a href="/" style="text-decoration : none;">
								Bulgarian Rose
								<br>
								불가리안 로즈
							</a>		
						</h4>
					</div>
					<div class="populated_padding item_price item_detail">
						<h4 class="item_heading_title">
							54,000원
						</h4>
					</div>
				</div>
				
				<div class="items populated_padding item_flex_width item_detail">
					<div class="populated_padding image_contained item_detail">
						<a href="">
							<img src="/item_img/8.Eucalyptus Lavender.png">
						</a>
					</div>
					<div class="populated_padding item_status item_detail">
						<h4 class="item_heading_title">
							/
						</h4>
					</div>
					<div class="populated_padding linked_item_list item_detail">
						<h4 class="item_heading_title">
							<a href="/" style="text-decoration : none;">
								Eucalyptus Lavender
								<br>
								유칼립투스 라벤더
							</a>		
						</h4>
					</div>
					<div class="populated_padding item_price item_detail">
						<h4 class="item_heading_title">
							54,000원
						</h4>
					</div>
				</div>
				<!-- container END -->	
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

<!-- 개체 추가 양식

				<div class="items populated_padding item_flex_width item_detail">
					<div class="populated_padding image_contained item_detail">
						<a href="(링크)">
							<img src="/item_img/(이미지명)">
						</a>
					</div>
					<div class="populated_padding item_status item_detail">
						<h4 class="item_heading_title">
							(item의 status)
						</h4>
					</div>
					<div class="populated_padding linked_item_list item_detail">
						<h4 class="item_heading_title">
							<a href="(상품 페이지로 들어갈 링크)" style="text-decoration : none;">
								(영문 상품명)
								<br>
								(한글 상품명)
							</a>		
						</h4>
					</div>
					<div class="populated_padding item_price item_detail">
						<h4 class="item_heading_title">
						(가격)
						</h4>
					</div>
				</div>
 -->
</body>
</html>

