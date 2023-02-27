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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"
	integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js"
	integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
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

.my_page {
    float: left;
    width: 960px;
    padding: 0 0 0 40px;
    height : 100%;
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

.member_pw_change dl { display: flex; margin : 0; }
.member_pw_change dt { padding : 5px; }
.member_pw_change dd { padding : 5px; }

.my_page .mypage_zone_tit {
	margin: 0 0 50px 0;
	padding: 0 0 10px 0;
	font-size: 14px;
	border-bottom: 1px solid #3c3c3c;
}

.base_info_sec table th:first-child, .base_info_sec table td:first-child
	{
	border-left: none;
}
.base_info_box { position : relative; }

.base_info_sec table th {
	text-align: left;
	border-bottom: 1px solid #dcdcdc;
	background: #fbfbfb;
}

.join_base_wrap table th {
	padding: 10px 25px;
}

.base_info_sec table td {
	padding: 15px 0 15px 15px;
	border-bottom: 1px solid #dcdcdc;
}

.location_wrap {
    position: relative;
    width: 100%;
    border-bottom: 1px solid #ededed;
}

#contents .member_address .address_postcode input {
	float: left;
	width: 190px;
}

input[type="text"], input[type="password"] {
	padding: 0 10px;
	outline: none;
	font-size: 12px;
}

.join_base_wrap .member_cont h3 {
    padding: 0 0 17px 0;
    font-size: 18px;
    color: #222222;
}

.base_info_box h3 {
    display: inline-block;
}

.base_info_sec table {
    width: 100%;
}

.base_info_box .base_info_sec {
    border-top: 1px solid #999999;
}

.btn_member_cancel {
    width: 150px;
    height: 45px;
    color: #3e3d3c;
    font-weight: bold;
    font-size: 13px;
    border: 1px solid #cccccc;
    background: #fff;
    cursor: pointer;
}

.btn_comfirm {
    width: 150px;
    height: 45px;
    margin: 0;
    color: #ffffff;
    font-size: 14px;
    border: 1px solid #1a2e2d;
    background: #1a2e2d;
    cursor: pointer;
    font-weight: bold;
}

.base_info_box > span {
    float: right;
    padding: 0 0 0 10px;
    line-height: 40px;
    color: #ab3e55;
}

.member_cont .btn_center_box, .member_warning + .btn_center_box {
    margin: 35px 0 0 0;
}
.btn_center_box {
    text-align: center;
}

.base_info_sec table td {
    padding: 15px 0 15px 15px;
    border-bottom: 1px solid #dcdcdc;
}

.mypage_main, .mypage_cont {
    padding: 0 0 50px 0;
}

.member_address .address_input input {
    margin: 10px 0 0 0;
}
.base_info_sec table input[type="text"] {
    width: 380px;
}

</style>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<!-- 네비게이터 include 부분 -->

	<jsp:include page="../include/nav.jsp"></jsp:include>
	<div class="container">
		<jsp:include page="../include/mypage_left.jsp"></jsp:include>
		<div class="mypage_cont">
			<div class="my_page">
				<div class="mypage_zone_tit">
					<h2>회원정보 변경</h2>
				</div>
				<div class="join_base_wrap">
					<div class="member_cont">
						<form id="formJoin" name="formJoin"
							action="/mypage/updatecomplete"
							method="post" novalidate="novalidate">
							<input type="hidden" name="memNo" value="22516"> <input
								type="hidden" name="memberFl" value="personal"> <input
								type="hidden" name="dupeinfo"
								value="MC0GCCqGSIb3DQIJAyEA5XXkMvooKdrHbRb9L67X62wSeLQEH36oOI7lLqSXg4k=">
							<input type="hidden" name="rncheck" value="authCellphone">
							<input type="hidden" name="mode" value="modify">

							<!-- 회원가입/정보 기본정보 -->
							<div class="base_info_box">
								<h3>기본정보</h3>
								<!-- <span class="important">표시는 반드시 입력하셔야 하는 항목입니다.</span> -->
								<div class="base_info_sec">
									<table border="0" cellpadding="0" cellspacing="0">
										<colgroup>
											<col width="25%">
											<col width="75%">
										</colgroup>
										<tbody>
											<tr>
												<th><span class="important">아이디</span></th>
												<td><input type="hidden" name="memId" value="${user_info.id}">${user_info.id}</td>
											</tr>
											<tr class="">
												<th><span class="important">비밀번호</span></th>
												<td class="member_password">

													<div id="memberNewPw" class="member_pw_change">
														<dl class="">
															<dt>현재 비밀번호</dt>
															<dd>
																<div class="member_warning">
																	<input type="password" id="currentPassword"
																		name="oldMemPw">
																</div>
															</dd>
														</dl>
														<dl>
															<dt>새 비밀번호</dt>
															<dd>
																<div class="member_warning">
																	<input type="password" id="password" name="memPw">
																</div>
															</dd>
														</dl>
														<dl>
															<dt>새 비밀번호 확인</dt>
															<dd>
																<div class="member_warning">
																	<input type="password" id="newPasswordCheck"
																		name="memPwRe">
																</div>
															</dd>
														</dl>
													</div> <!-- //member_pw_change -->
												</td>
											</tr>
											<tr>
												<th><span class="important">이름</span></th>
												<td>
													<div class="member_warning">
														<input type="text" name="name"
															data-pattern="gdMemberNmGlobal" value="${user_info.name}"
															maxlength="30" >
													</div>
												</td>
											</tr>
											<tr>
												<th><span>이메일</span></th>
												<td class="member_email">
													<div class="member_warning">
														<input type="text" name="email" id="email"
															value="${user_info.email}" tabindex="-1">
														</div>
													<div class="member_warning js_email"></div>
												</td>
											</tr>
											<tr>
												<th><span class="important">휴대폰번호</span></th>
												<td class="member_address">
													<div class="address_postcode">
														<input type="text" id="phone" name="phone"
															maxlength="12" placeholder="- 없이 입력하세요."
															data-pattern="gdNum" value="${user_info.phone}">
													</div>
												</td>
											</tr>
											<tr>
												<th><span>주소</span></th>
												<td class="member_address">
													<div class="address_input">
														<div class="member_warning">
															<input type="text" name="address1"
																value="${user_info.address1}">
														</div>
														<div class="member_warning js_address_sub">
															<input type="text" name="address2" value="${user_info.address2}">
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- //base_info_sec -->
							</div>
							<!-- //base_info_box -->

							<div class="btn_center_box">
								<button type="button" class="btn_member_cancel" onclick="history.back()">취소</button>
								<button type="submit" id="update_commit" class="btn_comfirm js_btn_join"
									value="정보수정">정보수정</button>
							</div>
							<script>
								 document.getElementById('update_commit').addEventListener('click', function() {
									alert("수정이 완료되었습니다."); 
								 });
							</script>
							<!-- //btn_center_box -->
						</form>
					</div>
					<!-- //member_cont -->
				</div>
				<!-- //join_base_wrap -->

			</div>
			<!-- //my_page -->

		</div>

	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>

</body>
</html>