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
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="/js/aJax.js"></script>
<!-- dayjs -->
<script src="https://cdn.jsdelivr.net/npm/dayjs@1/dayjs.min.js"></script>
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
.mypage_order_table {
	text-align: center;
	border-top : 2px solid #cecece;
	border-bottom : 2px solid #cecece;
	caption-side: top;
	width: 100%;
}
.mypage_order_table tr:not(:last-child) {
	border-bottom: 1px solid #cecece;
}
.order_detail {
	text-decoration: none;
	display: block;
	color: rgb(52, 106, 255);
}
.form-control {
	display: inline-block;
	width: 20%
}
.period {
	color: #777777;
	border: 1px solid #d6d6d6;
	width: 60px;
	height: 31px;
	margin: 0;
	background-color: transparent;
}
.focus {
	color: white;
	background-color: #aeaeae;
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
				<h3>진행중인주문<span style="font-size: 12px; margin-left: 1em">최근 30일 내에 진행중인 주문정보</span></h3>

				<div class="mypage_order_info">
					<ol>
						<li style="width: 150px">
							<p>결제완료</p>
							<c:if test="${not empty order_info[0].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">${order_info[0].INFO }</strong>
							</c:if>
							<c:if test="${empty order_info[0].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">0</strong>
							</c:if>
						</li>
						<li style="width: 150px">
							<p>상품준비중</p>
							<c:if test="${not empty order_info[1].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">${order_info[1].INFO }</strong>
							</c:if>
							<c:if test="${empty order_info[1].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">0</strong>
							</c:if>
						</li>
						<li style="width: 150px">
							<p>배송중</p>
							<c:if test="${not empty order_info[2].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">${order_info[2].INFO }</strong>
							</c:if>
							<c:if test="${empty order_info[2].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">0</strong>
							</c:if>
						</li>
						<li style="width: 150px">
							<p>배송완료</p>
							<c:if test="${not empty order_info[3].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">${order_info[3].INFO }</strong>
							</c:if>
							<c:if test="${empty order_info[3].INFO }">
								<strong style="background-image:url('/img/mypgae_ing_list_bg.png'); width: 52px; height: 52px; display: inline-block; text-align: center; padding-top: 13px;">0</strong>
							</c:if>						
						</li>
						<li style="width: 150px">
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
			<h3 style="margin-top: 1em">주문내역</h3>
			<div class="date_select">
				<div class="mypage_order_info">
					<p style="display: inline-block;">조회기간</p>
					<span>
						<button class="period" data-date='today'>오늘</button>
						<button class="period focus" data-date='day'>7일</button>
						<button class="period" data-date='month'>1개월</button>
						<button class="period" data-date='half-month'>6개월</button>
						<button class="period" data-date='year'>1년</button>
					</span>
					<span>
						<input type="text" id="startDate" class="datepicker_input form-control border-2" width="20%"/> ~
						<input type="text" id="endDate" class="datepicker_input form-control border-2" width="20%"/>
					</span>
					<button type="button" id="search">조회하기</button>
				</div>
			</div>
			<div style="margin-top: 1em">

				<table class="mypage_order_table">
					<tr>
						<th width="15%" style="border-bottom: 1px solid #dbdbdb; background-color: #f7f7f7">주문날짜</th>
						<th width="35%" style="border-bottom: 1px solid #dbdbdb; background-color: #f7f7f7">상품명/옵션</th>
						<th width="20%" style="border-bottom: 1px solid #dbdbdb; background-color: #f7f7f7">상품금액/수량</th>
						<th width="15%" style="border-bottom: 1px solid #dbdbdb; background-color: #f7f7f7" colspan="2">주문상태</th>
					</tr>
					<tbody id="order_list">
					<c:if test="${fn:length(order_list) == 0 }">
						<tr>
							<td>주문내역이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach items="${order_list }" var="item">
						<tr>
							<td>
								${item.order_date }
								<a href="/mypage/order/${item.order_no}" class="order_detail">주문상세</a>
							</td>
							<td>${item.item_name }</td>
							<td><fmt:formatNumber pattern="###,###원" value="${item.total_price }"/> / ${item.quantity }개</td>
							<td>${item.order_status }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</article>
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
<script>

<%--데이트피커 설정--%>
	$('#startDate').datepicker({
		dateFormat: "yy-mm-dd",
		monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'], //달력의 월 부분 텍스트
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], //달력의 월 부분 Tooltip 텍스트
		dayNamesMin: ['일','월','화','수','목','금','토'], //달력의 요일 부분 텍스트
		dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
	}).on('change', ()=> {console.log('asd')})
	$('#startDate').datepicker('setDate','-7d');


	$('#endDate').datepicker({
		dateFormat: "yy-mm-dd",
		monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'], //달력의 월 부분 텍스트
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], //달력의 월 부분 Tooltip 텍스트
		dayNamesMin: ['일','월','화','수','목','금','토'], //달력의 요일 부분 텍스트
		dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
	})
	$('#endDate').datepicker('setDate','today');

	/*
        기간 선택시 이벤트
        기존에 존재하는 클래스 제거후 새로 추가하는방식
        dayjs사용하여 날짜 datepicker에 입력후 버튼 클릭하여 데이터 불러오는 방식
    */
	$('.period').on('click', function (){
		$('.period').removeClass('focus');
		$(this).addClass('focus');
		const type = $(this).data('date');
		const currDate = dayjs();
		let newDate;

		switch (type) {
			case 'today':

				$('#startDate').val(currDate.format('YYYY-MM-DD'));
				$('#endDate').val(currDate.format('YYYY-MM-DD'));
				break;

			case 'day':
				newDate = currDate.subtract(7,'day').format('YYYY-MM-DD');

				$('#startDate').val(newDate);
				$('#endDate').val(currDate.format('YYYY-MM-DD'));
				break;

			case 'month':
				newDate = currDate.subtract(1,'month').format('YYYY-MM-DD');

				$('#startDate').val(newDate);
				$('#endDate').val(currDate.format('YYYY-MM-DD'));
				break;

			case 'half-month':
				newDate = currDate.subtract(6,'month').format('YYYY-MM-DD');

				$('#startDate').val(newDate);
				$('#endDate').val(currDate.format('YYYY-MM-DD'));
				break;

			case 'year':
				newDate = currDate.subtract(1,'year').format('YYYY-MM-DD');

				$('#startDate').val(newDate);
				$('#endDate').val(currDate.format('YYYY-MM-DD'));
				break;
		}
	});
	$('#search').on('click',function() {
		const url = '/rest/order/list';
		const data = {'startDate' : $('#startDate').val(),
						'endDate': $('#endDate').val()
						}
		getAjax(url, data, test);
		
	})
	
	test = (result) => {
		console.log(result);
	}
</script>
</body>
</html>