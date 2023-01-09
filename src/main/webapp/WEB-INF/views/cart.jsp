<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원 가입</title>
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
	#form-signup {
		 width : 500px;
		 height : 350px;
		 margin : auto;		
	}
	div.header {
	position: absolute;
	top: 0;
	width: 100%;
	}
	.header span {
		color : black;
	}
	
	.header button {
		color : black;
	}
	
	article {
		margin-top : 2em;
		width: 50%;
	}
	
	span a {
		margin: 2em;
		text-decoration: none;
		color : black;
	}
	
	.way_to_come {
		text-align: center;
	}

	.form-floating {
 		margin-bottom: 5px;
	}

	#space {
		width: 40%;
	}
	#space2 {
		width: 80%;
	}
	.space3 {
		display: block;
		height: 25px;
	}

	.itemimg {
		margin: 0;
		padding: 0;
		display: inline-block;
		width: 50px;
		height: 50px;
	}

	input[type='number']{
		text-align: center;
		size: 3;
	}

	.table {
		text-align: center;
		margin-left: 12.5%;
	}
</style>

<body>
	<!-- 최상위단 배너부분 -->
	<div class="top_banner">
		<h1 align="center">Cart</h1>
	</div>
	<hr>
	<!-- 네비게이터 include 부분 -->	
	<div class="mainNav">
		<nav>
			<jsp:include page="./include/nav.jsp"></jsp:include>
		</nav>
	</div>
	<!-- 찜 목록 article 부분 -->
	<article class="w-100">
		<form action="order" method="post">
			<table class="table table-hover w-75" >
				<thead class="table-light">
					<tr>
						<th><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" name="checkAll"></th>
						<th colspan="3">상품정보</th>
						<th>수량</th>
						<th>가격</th>
						<th>할인</th>
						<th>상품합계</th>
						<th>배송비</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" name="checkList"></td>
						<td><img src="/item_img/1.Bombshell.png" class="itemimg"></td>
						<td>상품명</td>
						<td>상품정보</td>
						<td><input type="number" name="itemcount" min="1" max="200"></td>
						<td>가격</td>
						<td>할인</td>
						<td>상품합계</td>
						<td>배송비</td>
					</tr>
					<tr>
						<td><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" name="checkList"></td>
						<td><img src="/item_img/1.Bombshell.png" class="itemimg"></td>
						<td>상품명</td>
						<td>상품정보</td>
						<td><input type="number" name="itemcount" min="1" max="200"></td>
						<td>가격</td>
						<td>할인</td>
						<td>상품합계</td>
						<td>배송비</td>
					</tr>
					<tr>
						<td><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" name="checkList"></td>
						<td><img src="/item_img/1.Bombshell.png" class="itemimg"></td>
						<td>상품명</td>
						<td>상품정보</td>
						<td><input type="number" name="itemcount" min="1" max="200"></td>
						<td>가격</td>
						<td>할인</td>
						<td>상품합계</td>
						<td>배송비</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<tr>
							<td colspan="3"></td>
							<td>총 상품금액</td>
							<td>\</td>
							<td>총 배송비</td>
							<td>\</td>
							<td>총 합계</td>
							<td>\</td>
						</tr>
					</tr>
					<tr>
						<tr>
							<td><button type="button" class="btn btn-danger">선택삭제</button></td>
							<td><button type="button" class="btn btn-primary">선택찜</button></td>
							<td colspan="5"></td>
							<td><button type="button" class="btn btn-secondary">선택주문</button></td>
							<td><button class="btn btn-lg btn-dark" type="submit">전체주문</button></td>
						</tr>
					</tr>
				</tfoot>
			</table>
		</form>
	</article>
	<br>
	<hr>
	<!-- Footer include 부분  -->
	<div class="footer">
	<footer>
		<jsp:include page="./include/footer.jsp"></jsp:include>
	</footer>
	</div>
	<!-- signUp.jsp 작성자 : 박진영 -->
</body>
</html>