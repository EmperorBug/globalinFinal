<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/include/js"/>
<link href="/css/main.css" rel="stylesheet">
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
	<!-- 헤더 include 부분 -->
	<jsp:include page="../include/header.jsp"></jsp:include>
	<!-- 네비게이터 include 부분 -->	
	<jsp:include page="../include/nav.jsp"></jsp:include>
	
	<div class="wrap">
		<main class="orderMain">
			<table class="orderTable">
				<caption>상품정보</caption>
				<thead class="table-light">
					<tr>
						<th width="45%" colspan="2">상품정보</th>
						<th width="10%">수량</th>
						<th width="10%">상품가격</th>
						<th width="10%">할인</th>
						<th width="15%">합계금액</th>
						<th width="10%">배송비</th>
					</tr>
				</thead>
				<c:forEach items="${cart_list }" var="item">
					<tr>
						<td>
							<img src="${item.url }" class="itemimg">
						</td>
 						<td>${item.item_name }</td> 
						<td>${item.quantity }개</td>
						<td><fmt:formatNumber value="${item.price }" pattern="#,###원"/></td>
						<td>${item.discount }</td>
						<td><fmt:formatNumber value="${item.sum_price }" pattern="#,###원"/></td>
					</tr>
				</c:forEach>
			</table>
					
			<table class="orderTable">
				<caption>주문자 정보</caption>
				<tr>
					<td>주문하시는 분</td>
					<td>
						<input type="text" name="name" value="${user.name }" id="user_name">
					</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>
						<input type="text" name="phone" id="user_phone">
					</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>
						<input type="email" name="email" value="${user.email }" id="user_email">
					</td>
				</tr>
			</table>
			
			<form action="/order/pay" name="order_form" id="order_form">
			<input type="hidden" value="${order_no  }" name="order_no">
				<table class="orderTable">
					<caption>배송 정보</caption>
					
					<tr>
						<td>배송지 확인</td>
						<td>
							<input type="radio" name="addr_chk" value="N" checked>직접입력
							<input type="radio" name="addr_chk" value="Y" onclick="write_cust()">주문자 정보와 동일
						</td>
					</tr>
					<tr>
						<td>받으실 분</td>
						<td>
							<input type="text" name="name" id="cust_name">
						</td>
					</tr>
					<tr>
						<td>받으실 곳</td>
						<td>
							<input type="text" name="addr" placeholder="주소를 검색해주세요." id="addr">
							<input type="text" name="addr2" placeholder="나머지 주소를 입력해주세요." id="addr2">
							<button type="button" onclick="openPost()">우편번호검색</button>
						</td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td>
							<input type="text" name="phone" id="cust_phone">
						</td>
					</tr>	
					<tr>
						<td>이메일</td>
						<td>
							<input type="text" name="email" id="cust_email">
						</td>
					</tr>					
					<tr>
						<td>남기실 말씀</td>
						<td>
							<input type="text" name="comment">
						</td>
					</tr>					
					<tr>
						<td>회원정보 반영</td>
						<td class="form-switch">
							<input type="checkbox" name="remember" id="remember" class="form-check-input">
							<label for="remember"><p>배송 정보를 저장합니다.</p></label>
							
						</td>
					</tr>					
				</table>
			</form>
			<table class="orderTable">
				<caption>결제수단 선택 / 결제</caption>
				<tr>
					<td>
						<input type="radio" name="pay_btn" value="card" checked>에스크로
					</td>
				</tr>
			</table>
			
				<div class="totalPrice"> 
					최종결제금액 <h3 id="total_price" data-price="${total_price }"><fmt:formatNumber pattern="###,###" value="${total_price }"/></h3></div>
			<div style="text-align: center;">
				<button type="button" class="btn btn-primary" style="padding: 20px; width: 226px; margin-top: 20px" id="pay_btn">결제</button>
			</div>
			
		</main>
	</div>
<script>
const form = document.getElementById('order_form');

	openPost = () => {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
	            
	           console.log(data);
	           form.addr.value = '('+data.zonecode+')　'+data.address;
	           form.addr2.focus();
	        }
	    }).open();
	}
	
	write_cust = () => {
		const name = $('#user_name').val();
		const phone = $('#user_phone').val();
		const email = $('#user_email').val();
		
		$('#cust_name').val(name);
		$('#cust_phone').val(phone);
		$('#cust_email').val(email);
	}
	
	$('#pay_btn').on('click', () => {
		var IMP = window.IMP; 
        IMP.init("imp11043101"); 

        
        IMP.request_pay({
            pg : 'kcp',
            // kcp
            // kakaopay
            // nice
            pay_method : 'card',
            merchant_uid: $('#order_no').val(), 
            name : '당근 10kg',
            amount : $('#total_price').data('price'),
            buyer_email : $('#cust_email').val(),
            buyer_name : $('#cust_name').val(),
            buyer_tel : $('#cust_phone').val(),
            buyer_addr : $('#cust_addr').val()+$('#cust_addr2').val(),
            buyer_postcode : '123-456'
        }, function (rsp) { // callback
            if (rsp.success) {
                console.log(rsp);
            } else {
                console.log(rsp);
            }
        });
	})
</script>	
</body>
</html>