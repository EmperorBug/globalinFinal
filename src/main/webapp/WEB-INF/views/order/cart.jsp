<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>장바구니</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link href="/css/main.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/aJax.js"></script>
</head>


<body>

	<jsp:include page="../include/header.jsp"></jsp:include>
	<!-- 네비게이터 include 부분 -->	
	
	<jsp:include page="../include/nav.jsp"></jsp:include>
	<!-- 찜 목록 article 부분 -->
	<article class="wrap">
		<c:if test="${fn:length(list) != 0 }">
			<form action="/order/order" id="cartForm">
		
				<table class="center table table-hover w-75">
					<thead class="table-light">
						<tr>
							<th width="3%"><input class="form-check-input" type="checkbox" value="" id="allChecked" name="checkAll"></th>
							<th width="40%">상품정보</th>
							<th width="10%">수량</th>
							<th width="10%">상품가격</th>
							<th width="10%">할인</th>
							<th width="15%">합계금액</th>
							<th width="10%">배송비</th>
						</tr>
					</thead>
					<tbody>
				
						<c:forEach var="item" items="${list }">
							<tr>
								<td>
									<input class="form-check-input" type="checkbox" value="${item.item_no }" name="item">
								</td>
								
								<td>
									<img src="${item.url }" class="itemimg">
									${item.item_name }
								</td>
								<td>
									<input type="number" name="quantity" min="1" max="200" value="${item.quantity }" onchange="changeCount(this)">
									<span class="btn_area">
										<button class="cart_btn up" type="button" onclick="increase(this);"></button>
										<button class="cart_btn down" type="button" onclick="decrease(this);"></button>
									</span>
								</td>
								<td name="price" data-value="${item.price }"><fmt:formatNumber pattern="#,###원" value="${item.price }"></fmt:formatNumber></td>
								<td name="discount"><fmt:formatNumber pattern="#,###원" value="${item.discount }"></fmt:formatNumber></td>
								<td name="sumPrice" data-item_no="${item.item_no }"><fmt:formatNumber pattern="#,###원" value="${item.price * item.quantity }"></fmt:formatNumber></td>
								<td name="fee">무료배송</td>
							</tr>
						</c:forEach>
						
					</tbody>
				</table>
			</form>
		</c:if>
		<c:if test="${fn:length(list) == 0 }">
			<p style="text-align: center;">장바구니에 담긴 상품이 없습니다.</p>	
		</c:if>	
		<div class="totalPrice w-75">
			<dl>
				<dt>총<strong id="chkLen">0</strong>개의 상품금액</dt>
				<dd id="totalPrice">0원</dd>
			</dl>
			<span class="priceIcon">
				<img src="/img/plus.png">
			</span>
			<dl>
				<dt>배송비</dt>
				<dd id="fee">0원</dd>
			</dl>
			<span class="priceIcon">
				<img src="/img/equal.png">
			</span>			
			<dl>
				<dt>합계</dt>
				<dd id="totalPriceSumFee">0원</dd>
			</dl>
		</div>
		<c:if test="${fn:length(list) != 0 }">
			<div class="center w-75">
				<button class="btn btn-danger" type="button" onclick="delete_cart();">선택 상품 삭제</button>
				<button class="btn btn-lg btn-dark" style="float: right" type="button" onclick="goOrder();">상품 주문</button>
			</div>
		</c:if>
	</article>
	<br>
	<hr>
	<!-- Footer include 부분  -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
	
	<script type="text/javascript">
		/* 페이지 로드시 전체 체크하기*/
		$(document).ready(() => {
			$('#allChecked').click();
		});

		$('#allChecked').on('click', () => {
			const checkbox = $('input:checkbox[name="item"]');
			
			(checkbox.is(':checked')) ? checkbox.prop('checked',false) : checkbox.prop('checked',true); 
		})
		
		/* 밑에꺼랑 나중에 정리 필요 */
		changeCount = (e) => {
			const parent = $(e).closest('td');	//부모노드
			
			const target = parent.siblings('td[name=sumPrice]');	//타겟
			const price = parent.siblings('td[name=price]').data('value');	//물건 가격
			
			const quantity = $(e).val();
			
			price_replace(target, quantity, price)

		}

		//증가 버튼 클릭시
		increase = (e) => {
			const parent = $(e).closest('td');
			
			//개수 변경
			const add = Number(parent.find('input[name=quantity]').val())+1;
			parent.find('input[name=quantity]').val(add);
			
			//물건 가격
			const target = parent.siblings('td[name=sumPrice]');	//타겟
			const price = parent.siblings('td[name=price]').data('value');	//물건 가격
			
			price_replace(target, add, price);

		}

		//감소 버튼 클릭시
		decrease = (e) => {
			const parent = $(e).closest('td');
			
			//개수 변경
			if (Number(parent.find('input[name=quantity]').val()) == 1) {
				alert('최소수량은 1개입니다.'); 
				return;
			}
			const sub = Number(parent.find('input[name=quantity]').val())-1;
			parent.find('input[name=quantity]').val(sub);
			
			//물건 가격
			const target = parent.siblings('td[name=sumPrice]');	//타겟
			const price = parent.siblings('td[name=price]').data('value');	//물건 가격
			
			price_replace(target, sub, price);
		}

		//수량 변경시 가격 증감하기
		price_replace = (target, quantity, price) => {
			//가격 변경전에 db에 수량정보 업데이트
			const result = update_cart(quantity, target.data('item_no'));
			const newPrice = quantity * price;
			$(target).text(comma(newPrice)+'원');
			totalPrice();
		}

		//수량 변경시 총 가격 증감
		totalPrice = () => {
			let price 	= 0;		//선택된물건의 합계 저장하는 변수
			let fee 	= 0;		//배송비 저장하는 변수
			$('td[name=sumPrice]').each(function() {
				if ($(this).closest('tr').find('.form-check-input').is(':checked')) {
					price +=Number($(this).text().replaceAll(',','').replace('원',''));
				}
			});
			
			if (price > 1000000000) {
				fee = 3000;
			}
			
			$('#totalPrice').text(comma(price)+'원');
			$('#fee').text(comma(fee)+'원');
			$('#totalPriceSumFee').text(comma(price+fee)+'원');
		}

		// 모든 체크박스가 체크되어있으면 최상단 체크박스 체크 아니면 체크해기
		$('.form-check-input').on('change', () => {
			const chkLen = $('input[name=item]:checked').length;
			const boxLen = $('input[name=item]').length;
			
			if (chkLen == boxLen) {
				$('#allChecked').prop('checked',true);
			}
			else {
				$('#allChecked').prop('checked',false);
			}
			
			//몇개 체크 되어있는지
			$('#chkLen').text(chkLen);
			totalPrice();
		})

		comma = (num) => {
			return num.toLocaleString('ko-KR');
		}
		
		goOrder = () => {
			if ($('input[name=item]:checked').length == 0) {
				alert('선택된 상품이 없습니다.')
				return;
			}

			//이거 주문수량 변경시 서버에 업데이트 해야할듯
			//서버로 보낼 데이터 만들기
			const arr = new Array();
			const obj = new Object();
			
			$('input[name=item]:checked').each(function() {
				obj.item_no 	= $(this).val();
				obj.quantity	= $(this).closest('tr').find('input[name=quantity]').val();
				
				arr.push(obj);
			})
			$('#cartForm').submit();
		}
		
		update_cart = (quantity, item_no) => {
			const data = {'quantity' : quantity,
						'item_no' : item_no	
						}
			
			updateAjax('/rest/cart',data);
		}
		
		delete_cart = () => {
			if ($('input[name=item]:checked').length == 0) {
				alert('선택된 상품이 없습니다.')
				return;
			}

			//이거 주문수량 변경시 서버에 업데이트 해야할듯
			//서버로 보낼 데이터 만들기
			const arr = new Array();
			const obj = new Object;
			$('input[name=item]:checked').each(function() {
				arr.push({
					'item_no':$(this).val()
				})
			})
			
			console.log(arr);
			obj.cart_list = arr;
			delAjax('/rest/cart',obj);
		}
	</script>
</body>
</html>