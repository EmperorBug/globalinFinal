<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
		
	<div class="header">
		<header class="headerMenu">
			<c:if test="${id == null }">
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
			</c:if>
			<c:if test="${id != null }">
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
			</c:if>
			<span>
				<button type="button" class="btn border-none" onclick="location.href='/cart'">
 				장바구니
				</button>
			</span> 
			<span>
				<button type="button" class="btn border-none" onclick="location.href='/customerservice'">
					고객센터
				</button>
			</span>
		</header>
	</div>
