<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Kapla</title>
<style>
.header {
	top: 0;
	z-index: 3;
	width: 100%;
}


.btn.btn-outline-light.border-none {
	border: none;
	box-shadow: none;
}
</style>
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&display=swap"
	rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
		<!-- 헤더 -->
		<div class="header">
		<header style="position: relative; text-align: right; color: white; margin-top: 3em;">
			<c:if test="${id == null }">
				<span>
					<button type="button" class="btn btn-outline-light border-none" data-bs-toggle="modal" data-bs-target="#loginModal">
	 				로그인
					</button>
				</span> 
				<span>
					<button type="button" class="btn btn-outline-light border-none" onclick="location.href='signup'">
	 				회원가입
					</button>
				</span> 
			</c:if>
			<c:if test="${id != null }">
			<span>
				<button type="button" class="btn btn-outline-light border-none" onclick="location.href='/user/logout'">
	 			로그아웃
				</button>
			</span> 
			<span>
				<button type="button" class="btn btn-outline-light border-none" onclick="location.href='signup'">
	 			마이페이지
				</button>
			</span> 
			</c:if>
			<span>
				<button type="button" class="btn btn-outline-light border-none" data-bs-toggle="modal" data-bs-target="#cartModal">
 				장바구니
				</button>
			</span> 
			<span>
				<button type="button" class="btn btn-outline-light border-none" onclick="location.href='customercenter'">
					고객센터
				</button>
			</span>
		</header>
	</div>
	<jsp:include page="../modals/loginModal.jsp" ></jsp:include>
	<jsp:include page="../modals/cartModal.jsp" ></jsp:include>
	<!-- 작성자 : 김형우 -->
	<!-- include file, modal 담당 : 박진영 -->
	<!-- 버튼 디자인 담당 : 김도형 -->
</body>
</html>