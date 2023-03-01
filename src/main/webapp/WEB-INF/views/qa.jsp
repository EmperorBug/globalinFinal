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
      
	 .board_zone_tit {
	    margin: 0 0 10px 0;
	    padding: 0 0 10px 0;
	    font-size: 16px;
	}
	
	.board_write_table {
	    width: 100%;
	    margin: 0 0 20px 0;
	    border: 0;
	    border-spacing: 0;
	    border-collapse: collapse;
	    border-top: 1px solid #999999;
	}
	
	.board_write_table th {
	    padding: 13px 0 7px 25px;
	    font-weight: bold;
	    border-bottom: 1px solid #dbdbdb;
	    background: #fbfbfb;
	    text-align: left;
	    vertical-align: top;
	}
	
	.board_write_table td {
	    height: 32px;
	    margin: 0;
	    padding: 7px 0 7px 15px;
	    border-bottom: 1px solid #dbdbdb;
	    background: #ffffff;
	}
	
	select {
	    height: 31px;
	    color: #717171;
	    vertical-align: top;
	    outline: none;
	}

	input[type="text"], input[type="password"] {
	    height: 31px;
	    padding: 0 5px;
	    color: #333333;
	    border: 1px solid #d6d6d6;
	    line-height: 31px;
	    -webkit-box-sizing: border-box;
	    -moz-box-sizing: border-box;
	    box-sizing: border-box;
	}
	
	.btn_center_box { text-align: center; }
	.btn_before {
	    display: inline-block;
	    width: 100px;
	    height: 42px;
	    padding: 0 5px 0 5px;
	    color: #3e3d3c;
	    font-size: 14px;
	    border: 1px solid #cccccc;
	    text-align: center;
	    cursor: pointer;
	}
	.btn_write_ok {
	    display: inline-block;
	    min-width: 90px;
	    height: 42px;
	    padding: 0 10px 0 10px;
	    color: #ffffff;
	    font-size: 14px;
	    border: 1px solid #1a2e2d;
	    background: #1a2e2d;
	    text-align: center;
	    cursor: pointer;
	}
	
	.board_write_table td > input { width: 312px; }
	
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
<div class="content">
	<div class="board_zone_sec">
		<div class="board_zone_tit">
			<h2>상품문의</h2>
		</div>
		<div class="board_zone_cont">
			<form name="frmWrite" id="frmWrite" action="/" method="post" enctype="multipart/form-data" class="frmWrite" novalidate="novalidate">
				<input type="hidden" name="bdId" value="qa">
				<input type="hidden" name="sno" value="">
				<input type="hidden" name="mode" value="write">
				<input type="hidden" name="returnUrl" value="bdId=qa&amp;noheader=y&amp;memNo=&amp;nopopup=y">
			<div class="board_zone_write">
				<div class="board_write_box">
					<table class="board_write_table">
						<colgroup>
							<col style="width:15%">
							<col style="width:85%">
						</colgroup>
						<tbody>
						<tr>
							<th scope="row">말머리</th>
							<td>
								<div class="category_select">
									<select class=" tune" id="category" name="category" style="width:127px;"><option value="">문의내용</option><option value="회원/정보관리">회원/정보관리</option><option value="주문/결제">주문/결제</option><option value="배송">배송</option><option value="반품/환불/교환/AS">반품/환불/교환/AS</option><option value="기타">기타</option><option value="상품">상품</option></select>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">작성자</th>
							<td>
								<input type="text" class="text" name="writerNm" value="">
							</td>
						</tr>
						<tr>
							<th scope="row">비밀번호</th>
							<td><input type="password" class="text" name="writerPw"></td>
						</tr>
						<tr>
							<th scope="row">상품명</th>
							<td>
								<input type="text" class="text" name="writerItem" value="">
							</td>
						</tr>
						<tr>
							<th scope="row">휴대폰</th>
							<td><input type="text" id="time" class="write_title" name="writerMobile" value="" placeholder="- -없이 입력하세요" autocomplete="off"></td>
						</tr>
						<tr>
							<th scope="row">제목
							</th><td><input type="text" name="subject" value=""></td>
						</tr>
						<tr>
							<th scope="row">본문</th>
							<td class="write_editor">
								<div class="form_element">
									<em>해당글은 비밀글로만 작성이 됩니다.</em>
								</div>
								<textarea id="editor" name="contents" cols="30" rows="10"></textarea>
							</td>
						</tr>
						</tbody>
					</table>
				</div>
				<!-- //board_write_box -->

			</div>
			<!-- //board_zone_write -->

			<div class="btn_center_box">
				<button type="button" class="btn_before" onclick="javascript:history.back()"><strong>이전</strong></button>
				<button type="submit" class="btn_write_ok"><strong>저장</strong></button>
			</div>

		</form>
	</div>
	<!-- //board_zone_cont -->

</div>
<!-- //board_zone_sec -->


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