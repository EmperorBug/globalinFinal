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
		width: 30%;
		height: 100%;
	}
	
	.detailcontainer {
		margin: 0;
		padding: 0;
		display: inline-block;
		width: 68%;
		height: 100%;
		text-align: center;
	}
	.itemname {
		width: 100%;
		display: block;
	}

	.horizontalcontainer {
		display: flex;
		justify-content: space-between;
		width: 100%;
	}

	.itemcost {
		display: inline-block;
	}

	input[type='number']{
		text-align: center;
		size: 3;
	}

	.itemsum {
		display: inline-block;
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
		<table>
			<thead>

			</thead>
			<tbody>
				
			</tbody>
		</table>
		<ul class="list-group list-group-flush">
			<li class="list-group-item">
				<img src="/item_img/1.Bombshell.png" class="itemimg">
				<div class="detailcontainer">
					<div class="itemname">
						상품명
					</div>
					<div class="space3">
					</div>
					<div class="horizontalcontainer">
						<div class="itemcost">
							가격
						</div>
						<input type="number" name="itemcount" min="1" max="200">
						<div class="itemsum">
							합계
						</div>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<img src="/item_img/1.Bombshell.png" class="itemimg">
				<div class="detailcontainer">
					<div class="itemname">
						상품명
					</div>
					<div class="space3">
					</div>
					<div class="horizontalcontainer">
						<div class="itemcost">
							가격
						</div>
						<input type="number" name="itemcount" min="1" max="200">
						<div class="itemsum">
							합계
						</div>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<img src="/item_img/1.Bombshell.png" class="itemimg">
				<div class="detailcontainer">
					<div class="itemname">
						상품명
					</div>
					<div class="space3">
					</div>
					<div class="horizontalcontainer">
						<div class="itemcost">
							가격
						</div>
						<input type="number" name="itemcount" min="1" max="200">
						<div class="itemsum">
							합계
						</div>
					</div>
				</div>
			</li>
			<li class="list-group-item">
				<img src="/item_img/1.Bombshell.png" class="itemimg">
				<div class="detailcontainer">
					<div class="itemname">
						상품명
					</div>
					<div class="space3">
					</div>
					<div class="horizontalcontainer">
						<div class="itemcost">
							가격
						</div>
						<input type="number" name="itemcount" min="1" max="200">
						<div class="itemsum">
							합계
						</div>
					</div>
				</div>
			</li>
		</ul>
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