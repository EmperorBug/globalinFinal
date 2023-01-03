<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Kepla</title>
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<style>
	#sum {
		text-align: left;
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
		width: 105%;
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
</head>
<body>
	<!-- Modal 작성 박진영-->
	<div class="modal fade" id="cartModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Cart</h5>
					<div id="space2"></div>
					<span class="badge bg-primary rounded-pill">N항목</span>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<form action="">
					<div class="modal-body" >
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
					</div>
					<div class="modal-footer">
						<div id="sum">
							총계 XX
						</div>
						<div id="space"></div>
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">더 담기</button>
						<button type="submit" class="btn btn-dark" >주문서 작성</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>