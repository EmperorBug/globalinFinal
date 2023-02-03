<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Kapla</title>
<script src="https://kit.fontawesome.com/c179c056d7.js" crossorigin="anonymous"></script>
<link href="/css/main.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&display=swap"
	rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
	span{
		display: inline-block;
	}


	.button_container { padding : 0; padding-top : 1em; }



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
					<div class="product_price populated_padding" >
						<h4 id="product_price" data-value="${product_view.price }">
						<fmt:formatNumber value="${product_view.price}" pattern="#,###" /> 원
						</h4>
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
					<hr>
						<div class="product_quantity_select">
							<form action="/order/order">
							수량 : 
							<button type="button" id="button_plus" onclick="plus()">
									<i class="fa-solid fa-plus"></i>
							</button>		
								<input type="number" name="quantity" id="product_cnt" value="1"  readonly="readonly">			
								<input type="hidden" name="item" id="product_number" value="${product_view.item_no}">
							<button type ="button" id="button_plus" onclick="minus()">
									<i class="fa-solid fa-minus"></i>
							</button>	
							<br><br>
							총 금액 :
							<input type="number" name="total_cost_js" id="total_cost_js" value="${product_view.price}"  readonly="readonly">	
							</form>
						</div>					
					<hr>
					<!-- plus / minus / 총금액 script 부분 -->
					<script>
					var cost = $('#product_price').data('value'); // 물건의 가격
					
						function plus() {
							var count = document.getElementById("product_cnt").value; // 물건 갯수
							var totalcost = document.getElementById("total_cost_js").value; // 총가격
							document.getElementById("product_cnt").value = parseInt(count) + 1; // 물건 카운트 + 1
							document.getElementById("total_cost_js").value = parseInt(totalcost)+parseInt(cost); // 총 가격 재합산
						}
						function minus() {
							var count = document.getElementById("product_cnt").value; // 물건 갯수
							var totalcost = document.getElementById("total_cost_js").value; // 총가격
							if(count > 0){
								document.getElementById("product_cnt").value = parseInt(count) - 1; // 물건 카운트 - 1
								document.getElementById("total_cost_js").value = parseInt(totalcost)-parseInt(cost); // 총 가격 재합산
							}
							else {
								count = 0;
								document.getElementById("total_cost_js").value = 0;
							}
						}
					</script>
					<!-- 제품 수량 설정 및 가격 나오는 곳 -->
					<div class="product_buy_phase populated_padding button_container">
						<form action="/product/cart" method="post" style="display:inline-block;">
						<input type="hidden" name="item_no" id="product_number" value="${product_view.item_no}">
						<!--  상품번호 -->
						<input type="hidden" name="user_no" id="user_number" value="11">
						<input type="hidden" name="quantity" id="total_quantity" value="1">
						
						<span class="product_buy_phase_button">
							<a href="javascript:void(0)">
	 							<button style="all:unset">
	 							장바구니
	 							</button>
	 						</a>
						</span>
						</form>
						<span class="product_buy_phase_button">
							<a href="/order/order" id="buylink">
	 							바로구매
	 						</a>
						</span>
						<!-- 상품의 수량개수와 상품번호를 넘기는 javascript 함수 -->
						<script>
						  $(function() {
							  $("#buylink").on("click", function(event) {
							  	$(this).attr("href",function(i,val){
							  		return val+"?quantity="+$("#product_cnt").val()+"&item="+$("#product_number").val();
							  	});
							  	});
							  })
						</script>
						
						<%--ADMIN 계정만 보이는 버튼 테스트--%>
						<sec:authorize access="hasRole('ADMIN')">
						<span class="product_buy_phase_button">
							<a href="/order/order">
	 							상품 변경
	 						</a>
						</span>
						</sec:authorize>

					</div>
					<!-- 버튼 부분 div -->
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