<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문완료</title>
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
	<script type="text/javascript" src="/js/aJax.js"></script>
<style type="text/css">
html,body{
	width: 100%;
	height: 100%;
}
.container {
	text-align: center;
}
.order_info {
	padding: 3em 0;
 	border: 1px solid rgb(238,238,238);
	border-radius: 8px; 
}
#order_table tr td{
	border: 1px solid #e6e6e6;
}
#order_table td:nth-child(even) {
	text-align: left
}
</style>	
</head>
<body>
	<!-- 헤더 include 부분 -->
	<jsp:include page="../include/header.jsp"></jsp:include>
	<!-- 네비게이터 include 부분 -->	
	<jsp:include page="../include/nav.jsp"></jsp:include>
	<div class="container">
		<article class="order_info">
			<strong style="font-size: 28pt;">고객님의 주문이 정상적으로 완료되었습니다</strong>
			<br><br>
<!-- 			<div style="display: inline-block; text-align: left;">
				<span>주문번호&nbsp&nbsp${order.order_no }</span>
				<br>
				<span>주문일자&nbsp&nbsp${order.order_date }</span>
			</div> -->
		</article>
		<article>
			<table style="caption-side: top; width: 100%" id="order_table">
				<caption>결제정보</caption>	
				<tr>
					<td>주문번호</td>
					<td colspan="5">${order.order_no }</td>
				</tr>		
				<tr>
					<td>결제방법</td>
					<td>${order.payment_method }</td>
					<td>주문일시</td>
					<td>${order.order_date }</td>
					<td>주문금액</td>
					<td><fmt:formatNumber pattern="###,###원" value="${order.total_price }"></fmt:formatNumber></td>
				</tr>
				<tr>
					<td>고객명</td>
					<td>${order.receiver }</td>
					<td>배송지</td>
					<td>${order.receiver_addr }</td>
					<td>전화번호</td>
					<td>${order.receiver_phone }</td>
				</tr>
			</table>
		</article>
		<div style="margin-top: 2em">
			<button type="button" class="btn btn-primary btn-lg " style="width: 15%; margin-right: 5px" onclick="location.href='/'">홈</button>
			<button type="button" class="btn btn-secondary btn-lg " style="width: 15%" onclick="location.href='/product/itemlist?category_num=1'">쇼핑계속하기</button>
		</div>
	</div>
</body>
</html>