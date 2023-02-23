<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>마이페이지 - 주문내역</title>
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
<style type="text/css">
html, body {
	height: 100%
}
.container {
	overflow:hidden;
	margin-top: 5em;
	margin-bottom:3em;
}
p {
	margin-top: -0.5em;
}
.menu_section {
	margin: 0 0 30px 0;
}
.leftMenu ul {
	width: 100%;
}
.menu_section li{
	padding-left: 2em;
}
</style>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<!-- 네비게이터 include 부분 -->	
	
	<jsp:include page="../include/nav.jsp"></jsp:include>
	<div class="container">
		<jsp:include page="../include/mypage_left.jsp"></jsp:include>	
		<c:forEach items="${order }" var="item">
			<article class="contents_article">
				<div>
					<h3>
						<strong>주문상세</strong>
						<h5>${item.order_date }&nbsp주문&nbsp&nbsp<span style="font-size: 12pt">(주문번호&nbsp${item.order_no })</span></h5>
					</h3>
				</div>
				<div class="order_list">
					<table style="min-width: 100%">
					<c:forEach items="${item.order_list }" var="list">
						<tr style="border: 1px solid #e6e6e6;">
							<td style="width: 10%">
								<div>
									<img src="${list.item_url }" width="100px" height="100px">
								</div>
							</td>
							<td>	
								<div>
									<span>${list.item_name }</span>
									<h6><fmt:formatNumber pattern="###,###원" value="${list.sum_price }"/></h6>
									<h6><strong>주문수량&nbsp${list.quantity }개</strong></h6>
									<small>${list.order_status }</small>
								</div>
							</td>
						</tr>
					</c:forEach>
					</table>
				</div>
				<div class="receiver_info" style="margin-top: 5em">
					<h3 style="border-bottom: 1px solid;">
						<strong>받는사람 정보</strong>
					</h3>
					<table>
						<tr>
							<td>받는사람</td>
							<td>${item.receiver }</td>
						</tr>
						<tr>
							<td>주소</td>
							<td>${item.receiver_addr }</td>
						</tr>
						<tr>
							<td>휴대폰번호</td>
							<td>${item.receiver_phone }</td>
						</tr>
						<tr>
							<td>요청사항</td>
							<td>${item.comment }</td>
						</tr>
					</table>
				</div>	
				<div class="order_info" style="margin-top: 5em">
					<h3 style="border-bottom: 1px solid;">
						<strong>결제 정보</strong>
					</h3>
					<table>
						<tr>
							<td>결제수단</td>
							<td>${item.payment_method }</td>
						</tr>
						<tr>
							<td>결제금액</td>
							<td><fmt:formatNumber pattern="###,###원" value="${item.total_price }"/></td>
						</tr>
					</table>
				</div>				
			</article>
			
		</c:forEach>
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>