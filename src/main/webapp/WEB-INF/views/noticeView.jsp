<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script src="https://kit.fontawesome.com/c179c056d7.js" crossorigin="anonymous"></script>
<link href="/css/main.css" rel="stylesheet">
<style>
	
	  a { color : #333; text-decoration: none; }
	  .board_tit a:hover { text-decoration : underline;}
	  
	  .sub_menu li { display : block; }
	  
	  th, td, input, select, textarea, button {
 	    font-size: 12px;
	    line-height: 1.5;
	    font-family: Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
	    color: #333;
	}
	
	  .header button { color: black; }
	
	  div.header {
	       position: relative;
	       top: 0;
	       z-index: 3;
	       width: 100%;
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
	
	.board_view_tit {
	    overflow: hidden;
	    padding: 15px 15px 15px 15px;
	    border-top: 1px solid #999999;
	    border-bottom: 1px solid #dbdbdb;
	    background: #f7f7f7;
	}
	.board_view_tit h3 {
	    display: inline-block;
	    color: #111111;
	    font-size: 14px;
	    font-weight: bold;
	}
	
	.board_zone_view .board_view_info {
	    overflow: hidden;
	    padding: 10px 15px 10px 15px;
	    border-bottom: 1px solid #dbdbdb;
	}
	
	.board_view_info .view_info_day {
	    display: inline-block;
	    height: 10px;
	    margin: 0 0 0 7px;
	    font-size: 11px;
	    border-left: 1px solid #dbdbdb;
	    vertical-align: middle;
	}
	
	.board_view_info .view_info_day em {
	    position: relative;
	    display: block;
	    top: -3px;
	    padding: 0 0 0 10px;
	}
	
	.board_view_info .view_info_hits {
	    display: inline-block;
	    float: right;
	    text-align: right;
	}
	
	.board_view_content .seem_cont {
	    padding: 30px 15px 30px 15px;
	    line-height: 1.8;
	}
	
	.btn_board_list {
	    height: 28px;
	    line-height: 26px;
	    margin: 0 0 0 5px;
	    padding: 0 12px 0 12px;
	    color: #666666;
	    border: 1px solid #a3a3a3;
	    text-align: center;
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
					<li><a href="../customerservice/notice">공지사항</a></li>
					<li><a href="../customerservice/qa">1:1문의하기</a></li>
			    	<li><a href="../customerservice/faq">FAQ</a></li>
		    	</ul>
			</div>
				<div class ="info_box">
				<dl>
      			 	<dt>고객상담센터</dt>
       				<dd>
            		<strong class="info_num">02-466-7941</strong><br>
           		    <a href="sales@kapla.co" class="info_mail_link">sales@kapla.co</a>
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
				<div class ="board_zone_title">
					<h2> 공지사항 </h2>
				</div>
				<div class ="board_zone_cont">
					<div class="board_zone_view">
						<div class="board_view_tit">
							<h3>${noticeView.title}</h3>
						</div>
						<div class="board_view_info">
							<span class="view_info_idip">
								<strong>${noticeView.writer}</strong>
							</span>
							<span class="view_info_day">
                    			<em>${noticeView.reg_date}</em>
                			</span>
                			<span class="view_info_hits">
								<strong>조회수</strong> 
								1
							</span>
						</div>
						
						<div class="board_view_content">
							<div class="seem_cont">
								${noticeView.content}
							</div>
						</div>
						
					</div>
				</div>
			</div>
			<hr>
				<div class="btn_right_box">
				<button type="button" class="btn_board_list" onclick="history.back()">
					<strong>목록</strong>
				</button>        
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