<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>마이페이지</title>
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
.contents_article li:not(:first-child) {
	background-image: url('/img/mypgae_ing_next_bg.png');
	background-repeat: no-repeat;
	background-position: left 50px;
	padding: 0 0 0 30px;
	text-align: center;
}
.mypage_order_info {
	padding: 35px 0;
	text-align: center;
	border: 1px solid #e3e3e3;
}
.mypage_order_info strong {
	background-image:url('/img/mypgae_ing_list_bg.png');
	width: 52px;
	height: 52px;
	display: inline-block;
	text-align: center;
	padding-top: 13px;
	color: white;
}
</style>
</head>
<body>

	<jsp:include page="../include/header.jsp"></jsp:include>
	<!-- 네비게이터 include 부분 -->	
	
	<jsp:include page="../include/nav.jsp"></jsp:include>
	
	<div class="container">
		<jsp:include page="../include/mypage_left.jsp"></jsp:include>
		<article class="contents_article">
			<div>
				<h3 style="margin-bottom: 1em;">진행중인주문</h3>
				<div class="mypage_order_info">
					<ol>
						<li style="width: 100px">
							<p>결제완료</p>
							<c:if test="${not empty order_info[0].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">${order_info[0].INFO }</strong>
							</c:if>
							<c:if test="${empty order_info[0].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">0</strong>
							</c:if>
						</li>
						<li style="width: 100px">
							<p>상품준비중</p>
							<c:if test="${not empty order_info[1].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">${order_info[1].INFO }</strong>
							</c:if>
							<c:if test="${empty order_info[1].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">0</strong>
							</c:if>
						</li>
						<li style="width: 100px">
							<p>배송중</p>
							<c:if test="${not empty order_info[2].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">${order_info[2].INFO }</strong>
							</c:if>
							<c:if test="${empty order_info[2].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">0</strong>
							</c:if>
						</li>
						<li style="width: 100px">
							<p>배송완료</p>
							<c:if test="${not empty order_info[3].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">${order_info[3].INFO }</strong>
							</c:if>
							<c:if test="${empty order_info[3].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">0</strong>
							</c:if>						
						</li>
						<li style="width: 100px">
							<p>구매확정</p>
							<c:if test="${not empty order_info[4].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">${order_info[4].INFO }</strong>
							</c:if>
							<c:if test="${empty order_info[4].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">0</strong>
							</c:if>
						</li>
					</ol>
				</div>
			</div>
		</article>
		<article class="contents_article">
			<div style="margin-top: 2em">
				<h3 style="margin-bottom: 1em;">최근주문정보</h3>
				<table  style="text-align: center; 	border-top : 2px solid #cecece; border-bottom : 2px solid #cecece; caption-side: top;width: 100%;">
					<tr>
						<th width="15%" style="border-bottom: 1px solid #dbdbdb; background-color: #f7f7f7">날짜/주문정보</th>
						<th width="35%" style="border-bottom: 1px solid #dbdbdb; background-color: #f7f7f7">상품명/옵션</th>
						<th width="20%" style="border-bottom: 1px solid #dbdbdb; background-color: #f7f7f7">상품금액/수량</th>
						<th width="15%" style="border-bottom: 1px solid #dbdbdb; background-color: #f7f7f7" colspan="2">주문상태</th>
					</tr>
					<c:forEach items="${order_list }" var="item">
						<tr>
						
							<td>${item.order_date } <a>상세보기</a></td>
							<td><a href="/mypage/order/${item.order_no }" style="color: black;">${item.item_name }</a></td>
							<td><fmt:formatNumber pattern="###,###원" value="${item.total_price }"/> / ${item.quantity }개</td>
							<td>${item.order_status }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</article>
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>