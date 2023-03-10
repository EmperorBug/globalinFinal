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
<script type="text/javascript" src="/js/aJax.js"></script>
<style type="text/css">

html, body { height: 100% }

.container { overflow: hidden; margin-top: 5em; height: 100% }

.my_page { float: left; width: 960px; padding: 0 0 0 40px; height : 100%; }

p { margin-top: -0.5em; }

.menu_section { margin: 0 0 30px 0; }

.leftMenu ul { width: 100%; }

.menu_section li { padding-left: 2em; }

.contents_article li:not(:first-child) {
	background-image: url('/img/mypgae_ing_next_bg.png');
	background-repeat: no-repeat;
	background-position: left 50px;
	padding: 0 0 0 30px;
	text-align: center;
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
							method="post" onsubmit="return test()">
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
												<th>
													<span class="important">비밀번호</span><br>
													<p class="password_rule">특수문자를 하나 포함하여 영문자+숫자 최소8자 ~ 최대 30자</p>
												</th>
												<td class="member_password">

													<div id="memberNewPw" class="member_pw_change">
														<dl class="">
															<dt>현재 비밀번호</dt>
															<dd>
																<div class="member_warning">
																	<input type="password" id="currentPassword">
																</div>
															</dd>
														</dl>
														<dl>
															<dt>새 비밀번호</dt>
															<dd>
																<div class="member_warning">
																	<input type="password" id="password" name="password">
																</div>
															</dd>
														</dl>
														<dl>
															<dt>새 비밀번호 확인</dt>
															<dd>
																<div class="member_warning">
																	<input type="password" id="newPasswordCheck">
																	<span id="passwordCheck_error">입력하신 비밀번호와 다릅니다</span>
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
															<input type="text" name="address1" id="address1"
																value="${user_info.address1}">
														</div>
														<div class="member_warning js_address_sub">
															<input type="text" name="address2" id="address2"
																 value="${user_info.address2}">
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
								<button id="update_commit" class="btn_comfirm js_btn_join"
									value="정보수정">정보수정</button>
							</div>
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
<script type="text/javascript">
	function test() {
		const newPwd = $('#password').val();
		const newPwdChk = $('#newPasswordCheck').val();
		
		if (!(newPwd == newPwdChk)){
			alert('동일한비밀번호를 입력해주세요.');
			$('#passwordCheck_error').css('display','block');	
			$('#password').focus();
			return false;	
		}
		
		if (pwdChk()) {
			if(valchk()){
					alert('수정이 완료되었습니다.');
					return true;
				}
			}
		else {
			alert('비밀번호가 다릅니다.');
		}
		return false;
	}
	
	function pwdChk() {
		const currPwd = $('#currentPassword').val();
		const data = {'password' : currPwd};
		const test = postAjax('/rest/pwdChk',data);
		return (test == 1) ? true : false; 
		
	}
	
	function valchk() {
		
		const form 		= document.getElementById('formJoin');
		const idregx 	= /^[a-z]+[a-z0-9]{6,19}$/g;
		const pwdregx	= /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,30}$/;
		const emailregx = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
		if (form.id.value == '' ) {
			alert('아이디를 입력해주세요');
			$('#memId').addClass('is-invalid');	//클래스추가
			form.id.focus();					//해당부분 포커스
			return false;
		}
		if (!idregx.test(form.id.value)) {
			alert('아이디 형식을 지켜주세요.');
			$('#memId').addClass('is-invalid');
			form.id.focus();
			return false;
		}
 		/* id 부분 */		
		if (form.currentPassword.value == '' ) {
			alert('비밀번호를 입력해주세요');
			$('#password').addClass('is-invalid');
			form.currentPassword.focus();
			return false;
		}
 		
		if (form.password.value == '' ) {
			alert('새 비밀번호를 입력해주세요');
			$('#password').addClass('is-invalid');
			form.password.focus();
			return false;
		}
 		
 		
		if (!pwdregx.test(form.password.value)) {
			console.log(form.password)
			alert('비밀번호 형식을 지켜주세요.');
			$('#password').addClass('is-invalid');
			form.password.focus();
			return false;
		}
		$('#password').removeClass('is-invalid');
		/* 비밀번호 부분 */
		
		if (form.email.value == '' ) {
			alert('이메일을 입력해주세요');
			$('#email').addClass('is-invalid');
			form.email.focus();
			return false;
		}
		if (!emailregx.test(form.email.value)) {
			alert('이메일 형식을 지켜주세요.');
			$('#email').addClass('is-invalid');
			form.email.focus();
			return false;
		}
		$('#email').removeClass('is-invalid');
		
		/* 이메일 부분 */
		
		return true;
	}
</script>
</body>
</html>