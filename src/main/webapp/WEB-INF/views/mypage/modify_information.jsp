<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>마이페이지 - 회원 정보 변경</title>
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

	.mypage_password .mypage_zone_title {
    margin: 0 0 50px 0;
    padding: 0 0 10px 0;
    font-size: 14px;
    border-bottom: 1px solid #999999;
}

.mypage_password p {
    font-size: 14px;
    text-align: center;
}

.mypage_password .id_pw_cont {
    overflow: hidden;
    margin: 30px 0 30px 0;
    padding: 26px 0 24px 0;
    border: 1px solid #dadada;
    background: #f7f9f8;
    text-align: center;
}

.mypage_password .id_pw_cont dl {
    display: inline-block;
    padding: 5px 30px 5px 0;
    font-size: 0;
    text-align: center;
    vertical-align: top;
}

.mypage_password .id_pw_cont dd {
    display: inline-block;
    font-size: 14px;
    text-align: left;
}

.mypage_password .id_pw_cont dt {
    display: inline-block;
    padding: 5px 10px 0 0;
    font-size: 14px;
    font-weight: bold;
    vertical-align: top;
}

.mypage_password .id_pw_cont dd strong {
    display: block;
    padding: 5px 0 0 0;
    color: #ab3e55;
}

.btn_center_box { text-align: center; }
.text_warning { display: none; letter-spacing: -1px; }

.btn_pw_cancel {
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
    cursor: pointer;
    text-decoration: none;
}

.btn_pw_certify {
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
		
		
		<div class= "content">
			<div class="mypage_content">
				<div class="mypage_password">
					<div class="mypage_zone_title">
						<h2>회원정보 변경</h2>
					</div>
					<p>
						<strong>회원님의 정보를 안전하게 보호하기 위해서 비밀번호를 다시 한번 확인해주세요.</strong>
					</p>
					<form id="formFind" novalidate="novalidate">
                <div class="id_pw_cont">
                    <dl>
                        <dt>아이디</dt>
                        <dd><strong>${user_info.id}</strong></dd>
                    </dl>
                    <dl>
                        <dt>비밀번호</dt>
                        <dd>
                            <div class="member_warning">
                                <input type="password" name="findPassword" id="findPassword">
                                <div class="text_warning">
                                    비밀번호가 일치하지 않습니다.
                            </div>
                            </div>
                        </dd>
                    </dl>
                </div>
                <div class="btn_center_box">
                    <a class="btn_pw_cancel" onclick="history.back()"><em>취소</em></a>
                    <button type="submit" class="btn_pw_certify"><em>인증하기</em></button>
                </div>
            </form>
				</div>
			</div>
		</div>
 
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>

</body>
</html>