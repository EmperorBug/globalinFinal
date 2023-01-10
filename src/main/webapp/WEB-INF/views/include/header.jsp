<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

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
					<button type="button" class="btn btn-outline-light border-none" onclick="location.href='/signup'">
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
				<button type="button" class="btn btn-outline-light border-none" onclick="location.href='/signup'">
	 			마이페이지
				</button>
			</span> 
			</c:if>
			<span>
				<button type="button" class="btn btn-outline-light border-none" onclick="location.href='/cart'">
 				장바구니
				</button>
			</span> 
			<span>
				<button type="button" class="btn btn-outline-light border-none" onclick="location.href='/customercenter'">
					고객센터
				</button>
			</span>
		</header>
	</div>
	<jsp:include page="../modals/loginModal.jsp" ></jsp:include>
	<!-- 작성자 : 김형우 -->
	<!-- include file, modal 담당 : 박진영 -->
	<!-- 버튼 디자인 담당 : 김도형 -->
