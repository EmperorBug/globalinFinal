<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>고객센터</title>
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<link href="/css/main.css" rel="stylesheet">
<style>
	
	  
	
	  .header button { color: black; }
	
	  div.header {
	       position: relative;
	       top: 0;
	       z-index: 3;
	       width: 100%;
	   }

      .header span { color: black; }

      div.mainNav {
          position: relative;
          margin-top: 5em;
          top: 0;
          width: 100%;
          z-index: 3;
          color: white;
          text-align: center;
      }

      article { margin-top: 0em; }

      span a {
          margin: 2em;
          text-decoration: none;
          color: black;
      }


  </style>
</head>
<body>

<!-- 헤더 include 부분 -->
<div class="header">
    <jsp:include page="./include/header.jsp"></jsp:include>
</div>
<!-- 네비게이터 include 부분 -->
<div class="mainNav">
    <nav>
        <jsp:include page="./include/nav.jsp"></jsp:include>
    </nav>
</div>
<hr>

<div class ="contents">
	<div class ="sub_content">
		<div class ="side_cont">
			<div class ="sub_menu_box">
				<h4>고객센터</h4>
				<ul class="sub_menu">
					<li><a href="../service/notice.jsp">공지사항</a></li>
					<li><a href="../service/qa.jsp">1:1문의하기</a></li>
			    	<li><a href="../service/faq.jsp">FAQ</a></li>
		    	</ul>
			</div>
				<div class ="info_box">
				<dl>
      			 	<dt>고객상담센터</dt>
       				<dd>
            		<strong class="info_num">02-466-7941</strong><br>
           		    <a href="mailto:sales@dmcosmetics.co" class="info_mail_link">sales@kapla.co</a>
            			<p style="text-align: left;">
            				MON-FRI : 10:00 ~ 16:00<br>
							LUNCH : 11:30 ~ 13:00<br>
							OFF : SAT, SUN, HOLIDAY
						</p>
       				 </dd>
  				  </dl>
  				  <dl>
  			     	 <dt>은행계좌 안내</dt>
        		     <dd>
            			<strong class="info_num">68660201283644</strong>
           			    <p style="text-align: left;">
                			<em>국민은행</em><br>
 			                <span>[예금주 : 카플라]</span>
           				</p>
			        </dd>
    			</dl>
			</div>
		</div>
		<!-- 왼쪽 메뉴 div부분 -->	
		<div class ="content">
			<div class ="board_zone_sec">
				<div class ="board_zone_cont">
					<div class ="board_zone_list index">
						<div class="date_check_box">
							<form name="frmList" id="frmList" action="faq.jsp" method="get">
								<div class="date_faq_list">
                                	<h2>자주묻는 질문 검색</h2>
                                	<input type="hidden" name="searchField" value="all">
                                	<input type="text" id="time" name="searchWord" class="text" placeholder="검색어를 입력하세요">
                                	<button type="submit" class="btn_date_check"><em>검색</em></button>
                        		</div>
                        		<div class="date_faq_txt">
                            		<p>
                                	<strong>찾으시는 질문이 없다면?</strong>
                                	<span class="btn_gray_list"><a href="qa.php" class="btn_gray_mid" target="_top"><span>1:1 문의하기</span></a></span>
                            		</p>
                        		</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 오른쪽 큰부분 메뉴 (메인 컨텐츠) div 부분 -->	
	</div>
</div>
	


<hr>
<!-- Footer include 부분  -->
<div class="footer">
    <footer>
        <jsp:include page="./include/footer.jsp"></jsp:include>
    </footer>
</div>

</body>
</html>