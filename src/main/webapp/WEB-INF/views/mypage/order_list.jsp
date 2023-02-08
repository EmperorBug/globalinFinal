<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" integrity="sha512-T/tUfKSV1bihCnd+MxKD0Hm1uBBroVYBOYSk1knyvQ9VyZJpc/ALb4P0r6ubwVPSGB2GvjeoMAJJImBG12TiaQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- dayjs -->
<script src="https://cdn.jsdelivr.net/npm/dayjs@1/dayjs.min.js"></script>
<style type="text/css">
html, body {
	height: 100%
}
.container {
	overflow: hidden;
	margin-top: 5em;
	height: 100%
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
.form-control {
	display: inline-block;
	width: 20%
}
.period {
	color: #777777;
	border: 1px solid #d6d6d6;
	width: 54px;
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
				<h3 style="margin-bottom: 1em;">주문목록/배송조회</h3>
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
						<input type="text" id="startDate" class="datepicker_input form-control border-2" value="2023-01-21" width="20%"/> ~
						<input type="text" id="endDate" class="datepicker_input form-control border-2" value="2023-02-01" width="20%"/>
					</span>
					<button type="button">조회하기</button>
				</div>
			</div>
		</article>		
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
	<script type="text/javascript">
		$('#startDate').datepicker({
	        format: "yyyy-mm-dd",
	        language: "ko",
	        autoclose: true
	    }).on('change', ()=> {console.log('asd')})
	    
		$('#endDate').datepicker({
	        format: "yyyy-mm-dd",
	        language: "ko",
	        autoclose: true
	    })
	    
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
		
	</script>
</body>
</html>