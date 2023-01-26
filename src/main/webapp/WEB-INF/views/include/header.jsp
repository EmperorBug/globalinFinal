<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

	<div class="header">
		<header class="headerMenu">
            <sec:authorize access="isAnonymous()">
				<span>
					<button type="button" class="btn border-none" onclick="location.href='/user/login'">
	 				로그인
					</button>
				</span>
				<span>
					<button type="button" class="btn border-none" onclick="location.href='/signup'">
	 				회원가입
					</button>
				</span>
			</sec:authorize>
            <sec:authorize access="isAuthenticated()">
			<span>
				<button type="button" class="btn border-none" onclick="location.href='/user/logout'">
	 			로그아웃
				</button>
			</span>
			<span>
				<button type="button" class="btn border-none" onclick="location.href='/signup'">
	 			마이페이지
				</button>
			</span>
			</sec:authorize>
			<span>
				<button type="button" class="btn border-none" onclick="location.href='/cart'">
 				장바구니
				</button>
			</span>
			<span>
				<button type="button" class="btn border-none" onclick="location.href='/customerservice/main'">
					고객센터
				</button>
			</span>
		</header>
	</div>
