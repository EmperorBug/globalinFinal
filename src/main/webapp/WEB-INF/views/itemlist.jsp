<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>kapla - 카플라</title>
<link href="/css/main.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&display=swap"
	rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@ include file="modals/loginModal.jsp" %>
<%@ include file="modals/cartModal.jsp" %>
<style>
	
		 .menu_bar {
            width: 100%;
            margin: auto;
        }

        article ul {
            font-size: 0;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        article ul li {
            display: inline-block;
            position: relative;
            width : 25%;
        }

        article ul li a {
            color: black;
            display: block;
            font-size: 14px;
            padding: 15px 14px;
            transition: 0.3s linear;
            text-decoration: none;
        }

        /* article ul li:hover { background: #a4e68e; } */
        /* 메뉴에 갖다댔을때 뜨는 색 */

        article ul li ul {
            display: none;
            position: absolute;
            width: 100%;
        }

        article ul li ul li {
            border-top: 1px solid white;
            display: block;
            width : 100%;
        }

        article ul li ul li:first-child { border-top: none; }

        article ul li ul li a {
            background: #E6E6E6;
            display: block;
            padding: 10px 14px;
           
        }

        article ul li ul li a:hover { background: white; }

        article .fa.fa-angle-down { margin-left: 6px; }
	
	img {
	    height: auto;
	    max-width: 100%;
	    border: none;
	    border-radius: 0;
	    box-shadow: none;
	}
	
	.brandArticle {
		text-align : center;
		font-size: 2em;
	}
	
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
	margin-top: 3em;
	top: 0;
	width: 100%;
	z-index: 3;
	color : white;
	text-align: center;
	
	}
	
	article .list_top_margin {
		margin-top : 7em;
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
		line-height : 1.2em;
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
	<!-- 상품 쇼핑 페이지 본문 내용 Article -->
	<div class="itemList">
		<article>
			<section class="section_line">
		    <div class="menu_bar populated_padding">
		        <ul>
		            <li><a href="#">Oil Perfume<br>오일 퍼퓸</a></li>
		            <li><a href="#">Hand Perfume<br>핸드 퍼퓸<br></a></li>
		            <li><a href="#">Home & Travel<br>홈 & 여행<i class='fa fa-angle-down'></i></a>
		                <ul>
		                    <li><a href="#">디퓨저</a></li>
		                    <li><a href="#">카 디퓨저</a></li>
		                    <li><a href="#">캔들</a></li>
		                </ul>
		            </li>
		            <li><a href="#">Hand Perfume<br>기프트<br></a></li>
		        </ul>
		    </div>
		    <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
			<script>
			    $('article li').hover(
			        function() {
			            $('ul', this).stop().slideDown(200);
			        },
			        function() {
			            $('ul', this).stop().slideUp(200);
			        }
			    );
			</script>
			<!-- 메뉴바 부분 -->
			
			<div class="populated_padding item_widget_container list_top_margin" >
			<!-- flex 정렬시켜줄 역할을 하는 div, 컨테이너로 묶는다. -->
			<c:forEach var="product" items="${products}">
				<div class="items populated_padding item_flex_width item_detail">
					<div class="populated_padding image_contained item_detail">
						<a href="product_view?item_no=${product.item_no}">
							<img src="${product.url}">
						</a>
					</div>
					<div class="populated_padding item_detail">
						<h4 class ="item_status">
							${product.item_status}
						</h4>
					</div>
					<div class="populated_padding linked_item_list item_detail">
						<h4 class="item_heading_title">
							<a href="product_view?item_no=${product.item_no}" style="text-decoration : none;">
								${product.name}
							</a>		
						</h4>
					</div>
					<div class="populated_padding item_price item_detail">
						<h4 class="item_heading_title">
							<fmt:formatNumber value="${product.price}" pattern="#,###" /> 원
						</h4>
					</div>
				</div>
			</c:forEach>
			
			</div>

			</section>
			
		</article>
	</div>
	<hr>
	<!-- Footer include 부분  -->
	<div class="footer">
	<footer>
		<jsp:include page="./include/footer.jsp"></jsp:include>
	</footer>
	</div>

	<script>
	window.onload = function(){
		
		const elements = document.getElementsByClassName('item_status');
		
		for(let i=0; i < elements.length; i++)  {
			  if(elements[i].innerText == "Limited Edition"){
			  	 elements[i].style.color = "#00ff00";
			  	 /* db에서 불러온 Limited Edition은 연두색 */
			  }
			  else if(elements[i].innerText == "Signature"){
				  elements[i].style.color = "#ff0000"; 
			  	  /* db에서 불러온 Signature는 빨간색 (수정가능) */
			  }
			  else if(elements[i].innerText == "New"){
				  elements[i].style.color = "#ffff00"; 
			  	  /* db에서 불러온 New는 주황색 (수정가능) */
			  }
			  else {
				  elements[i].style.color = "#ffffff";	  
				  /* db에서 불러온 /는 흰색으로 */
			  }
			}
	};
	</script>

 
</body>
</html>