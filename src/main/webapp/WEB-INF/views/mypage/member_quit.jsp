<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>마이페이지 - 회원 탈퇴</title>
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
	overflow: hidden;
	margin-top: 5em;
	height: 100%
}
.my_page {
	float: left;
	width: 960px;
	padding: 0 0 0 40px;
	height: 100%;
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
.menu_section li {
	padding-left: 2em;
}
.contents_article li:not(:first-child) {
	background-image: url('/img/mypgae_ing_next_bg.png');
	background-repeat: no-repeat;
	background-position: left 50px;
	padding: 0 0 0 30px;
	text-align: center;
}
/* 고유 css */
a { text-decoration:  none;}
.hack_out .mypage_zone_tit {
    margin: 0 0 50px 0;
    padding: 0 0 10px 0;
    font-size: 14px;
    border-bottom: 1px solid #999999;
}
.hack_out .mypage_unregister .unregister_info {
    margin: 0 0 40px 0;
    padding: 15px 15px 15px 15px;
    color: #717171;
    border: 1px solid #dadada;
}
.hack_out .mypage_unregister .mypage_zone_tit {
    margin: 0;
    padding: 0 0 10px 0;
    font-size: 14px;
    border-bottom: none 0;
}
h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.mypage_zone_tit h3 {
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.hack_out .mypage_unregister .mypage_zone_tit {
    margin: 0;
    padding: 0 0 10px 0;
    font-size: 14px;
    border-bottom: none 0;
}
/* 테이블 */
.mypage_table_type table {
    width: 100%;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
    text-align: center;
}
.mypage_table_type .table_left {
    border-top: 1px solid #999999;
}
.mypage_table_type .table_left th {
    padding: 15px 10px 14px 20px;
    border-top: none 0;
    background: #f7f7f7;
    text-align: left;
}
.mypage_table_type .table_left td {
    height: 31px;
    padding: 12px 10px 11px 15px;
    text-align: left;
}
input[type="text"], input[type="password"] {
    padding: 0 10px;
    outline: none;
    font-size: 12px;
}
/* 버튼부 */
.btn_center_box {
    text-align: center;
}
.btn_claim_cancel {
    display: inline-block;
    min-width: 80px;
    height: 42px;
    padding: 0 10px 0 10px;
    line-height: 40px;
    color: #3e3d3c;
    font-size: 14px;
    border: 1px solid #cccccc;
    background: #ffffff;
    text-align: center;
}
.btn_claim_cancel:hover {
    color: #333333;
    border: 1px solid #bbbbbb;
}
.btn_claim_ok {
    min-width: 100px;
    height: 44px;
    padding: 0 10px 0 10px;
    color: #ffffff;
    font-size: 14px;
    font-weight: bold;
    border: 1px solid #1a2e2d;
    background: #1a2e2d;
    text-align: center;
    vertical-align: top;
}
</style>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<!-- 네비게이터 include 부분 -->

	<jsp:include page="../include/nav.jsp"></jsp:include>
	<div class="container">
		<jsp:include page="../include/mypage_left.jsp"></jsp:include>
		<div class="content">
			<div class="mypage_cont">
				<!-- Form start -->
				<form id="formHackOut" name="formHackOut"
					action="/rest/ispwdcorrect_byquit" method="post"
					novalidate="novalidate">
					<div class="hack_out">
						<div class="mypage_zone_tit">
							<h2>회원탈퇴</h2>
						</div>

						<div class="mypage_unregister">
							<div class="mypage_zone_tit">
								<h3>01.회원탈퇴 안내</h3>
							</div>

							<div class="unregister_info">
								kapla 탈퇴안내<br> <br> 회원님께서 회원 탈퇴를 원하신다니 저희 쇼핑몰의 서비스가
								많이 부족하고 미흡했나 봅니다.<br> 불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서 고객님의
								불편함을 해결해 드리도록 노력하겠습니다.<br> <br> ■ 아울러 회원 탈퇴시의 아래 사항을
								숙지하시기 바랍니다.<br> 1. 회원 탈퇴 시 회원님의 정보는 상품 반품 및 A/S를 위해 전자상거래
								등에서의 소비자 보호에 관한 법률에 의거한 <br> 고객정보 보호정책에따라 관리 됩니다.
								<br> 2. 탈퇴 시 14일 동안 재가입이 불가합니다.
							</div>
							<!-- //unregister_info -->

							<div class="mypage_zone_tit">
								<h3>02.회원탈퇴 하기</h3>
							</div>

							<div class="mypage_table_type">
								<table class="table_left">
									<colgroup>
										<col style="width: 15%;">
										<col style="width: 85%;">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row">비밀번호</th>
											<td><input type="password" name="memberPassword"
												aria-required="true" class="error" id="memberPassword"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- //mypage_unregister -->

					</div>
					<!-- //hack_out -->

					<div class="btn_center_box">
						<a href="/mypage" class="btn_claim_cancel btn_prev"><em>이전으로</em></a>
						<button type="submit" class="btn_claim_ok" id="quit_commit">
							<em>탈퇴</em>
						</button>
						<script>
						$(document).ready(function (){
							
							$("#formHackOut").submit(function(event) {
								//prevendDefault()는 href로 연결해 주지 않고 
								//단순히 click에 대한 처리를 하도록 해준다.
								event.preventDefault();
								
								let password = $("#memberPassword").val();
																
								let form={
									password : password			
								};
								$.ajax({
								    type : "POST",
								    url : "/rest/ispwdcorrect_byquit",
								    contentType:'application/json; charset=UTF-8',
								    data: JSON.stringify(form),
									data_type : 'json',
								    success: function (result) {       
										   // 1 : 탈퇴완료, 2: 비밀번호틀림
										if (result == 1) {
											alert("탈퇴가 완료되었습니다. 지금까지 kapla를 이용해주셔서 감사합니다.");
											location.href='/logout';
										}
										else if (result == 2) {
											alert("비밀번호가 틀렸습니다.");
										}
								    },
								    error: function (e) {
								        console.log(e);
								        alert('서버오류');
								    }
								});
								return false;
							});
						});
						</script>
					</div>
				</form>
			</div>
			<!-- //mypage_cont -->

		</div>
		<!-- //my_page -->

	</div>
	
	<hr>
	<jsp:include page="../include/footer.jsp"></jsp:include>

</body>
</html>