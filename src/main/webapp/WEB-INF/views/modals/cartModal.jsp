<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- <style>
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

input[type='number'] {
	text-align: center;
	size: 3;
}

.itemsum {
	display: inline-block;
}
</style> -->
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
				<div class="modal-body">
					<ul class="list-group list-group-flush">
						<li class="list-group-item"><img
							src="/item_img/1.Bombshell.png" class="itemimg">
							<div class="detailcontainer">
								<div class="itemname">상품명</div>
								<div class="space3"></div>
								<div class="horizontalcontainer">
									<div class="itemcost">가격</div>
									<input type="number" name="itemcount" min="1" max="200">
									<div class="itemsum">합계</div>
								</div>
							</div></li>
						<li class="list-group-item"><img
							src="/item_img/1.Bombshell.png" class="itemimg">
							<div class="detailcontainer">
								<div class="itemname">상품명</div>
								<div class="space3"></div>
								<div class="horizontalcontainer">
									<div class="itemcost">가격</div>
									<input type="number" name="itemcount" min="1" max="200">
									<div class="itemsum">합계</div>
								</div>
							</div></li>
						<li class="list-group-item"><img
							src="/item_img/1.Bombshell.png" class="itemimg">
							<div class="detailcontainer">
								<div class="itemname">상품명</div>
								<div class="space3"></div>
								<div class="horizontalcontainer">
									<div class="itemcost">가격</div>
									<input type="number" name="itemcount" min="1" max="200">
									<div class="itemsum">합계</div>
								</div>
							</div></li>
						<li class="list-group-item"><img
							src="/item_img/1.Bombshell.png" class="itemimg">
							<div class="detailcontainer">
								<div class="itemname">상품명</div>
								<div class="space3"></div>
								<div class="horizontalcontainer">
									<div class="itemcost">가격</div>
									<input type="number" name="itemcount" min="1" max="200">
									<div class="itemsum">합계</div>
								</div>
							</div></li>
						<li class="list-group-item"><img
							src="/item_img/1.Bombshell.png" class="itemimg">
							<div class="detailcontainer">
								<div class="itemname">상품명</div>
								<div class="space3"></div>
								<div class="horizontalcontainer">
									<div class="itemcost">가격</div>
									<input type="number" name="itemcount" min="1" max="200">
									<div class="itemsum">합계</div>
								</div>
							</div></li>
						<li class="list-group-item"><img
							src="/item_img/1.Bombshell.png" class="itemimg">
							<div class="detailcontainer">
								<div class="itemname">상품명</div>
								<div class="space3"></div>
								<div class="horizontalcontainer">
									<div class="itemcost">가격</div>
									<input type="number" name="itemcount" min="1" max="200">
									<div class="itemsum">합계</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="modal-footer">
					<div id="sum">총계 XX</div>
					<div id="space"></div>
					
					
				</div>
				
			</div>
		</div>
	</div>
