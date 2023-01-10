<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
	<!-- Modal 작성 박진영-->
	<div class="modal fade" id="loginModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Sign in</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<main class="form-signin">
						<form>
						  <div class="form-floating">
							<input type="text" class="form-control" id="floatingInput" placeholder="name@example.com">
							<label for="floatingInput">ID</label>
						  </div>
						  <div class="form-floating">
							<input type="password" class="form-control" id="floatingPassword" placeholder="Password">
							<label for="floatingPassword">Password</label>
						  </div>
						  <div class="checkbox mb-3">
							<label>
							  <input type="checkbox" value="remember-me"> Remember me
							</label>
						  </div>
						  <button class="w-100 btn btn-lg btn-dark" type="submit">Sign in</button>
						  
						  <!--카카오 로그인 버튼 작성 김도형  -->
						  <button class="w-100 btn btn-lg" style="background-color: #FEE500; margin-top: 5px" onclick="loginWithKakao()" type="button">
						  	<img alt="말풍선 아이콘" src="/img/pngegg.png" width="22px">
						  	카카오 로그인
						  </button>      
						</form>
					  </main>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	loginWithKakao = () => {
		
        //발급받은 앱키를 입력
        Kakao.init('635bed4d6fec96cfc9b8dd8e27301c1f');
        Kakao.Auth.authorize({
            redirectUri: 'http://localhost:8282/api/kakaoLogin',
        });
	}
	</script>
