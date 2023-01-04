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
		margin: auto;
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

	.itemimg {
	margin: 0;
	padding: 0;
	width: 150px;
	height: 150px;
}
</style>
<body>
	<!-- 최상위단 배너부분 -->
	<div class="top_banner">
		<h1 align="center">Favorite</h1>
	</div>
	<hr>
	<!-- 네비게이터 include 부분 -->	
	<div class="mainNav">
		<nav>
			<jsp:include page="./include/nav.jsp"></jsp:include>
		</nav>
	</div>
	<!-- 찜 목록 article 부분 -->
	<article>
		<table class="table table-hover">
			<thead class="table-light">
			  <tr>
				<th>
					체크
				</th>
				<th>
					상품
				</th>
				<th>
					옵션 정보
				</th>
				<th>
					수량
				</th>
				<th>
					금액
				</th>
				<th>
					할인/적립
				</th>
				<th>
					합계금액
				</th>
				<th>
					배송비
				</th>
			  </tr>
			</thead>
			<tbody>
				<tr>
					<td>
						체크
					</td>
					<td>
						<img src="/item_img/1.Bombshell.png" class="itemimg">
					</td>
					<td>
						옵션 정보
					</td>
					<td>
						수량
					</td>
					<td>
						금액
					</td>
					<td>
						할인/적립
					</td>
					<td>
						합계금액
					</td>
					<td>
						배송비
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td>
						체크
					</td>
					<td>
						상품
					</td>
					<td>
						옵션 정보
					</td>
					<td>
						수량
					</td>
					<td>
						금액
					</td>
					<td>
						<button type="button" class="btn btn-secondary">더 담기</button>
					</td>
					<td colspan="2">
						<button type="submit" class="btn btn-dark">주문서 작성</button>
					</td>
				</tr>
			</tfoot>
		</table>
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