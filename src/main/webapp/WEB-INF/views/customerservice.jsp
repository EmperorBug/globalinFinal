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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
      
    .board_list_faq .board_hot_list { padding: 10px 0 20px 0; }
	.board_hot_list {
	    padding: 10px 0 50px 0;
	    font-size: 0;
	    text-align: left;
	    border-top: 1px solid #999999;
	}	
	
	.board_hot_list ul { display: inline-block; font-size: 12px; }
	
	.board_hot_list ul li {
	    display: inline-block;
	    width: auto;
	    margin: 0;
	    vertical-align: middle;
	}
	
	.board_hot_list ul li:first-child a { border-left: none 0; }
	.board_hot_list ul li a {
	    display: block;
	    height: 11px;
	    padding: 0 5px 0 5px;
	    border-left: 1px solid #cccccc;
	}
	
	.board_hot_list ul li a span { position: relative; top: -5px; }
	.board_hot_list ul li a span:hover {
	    font-weight: bold;
	    border-bottom: 1px solid #ab3e55;
	    color: #ab3e55;
	}
	
	.board_list_faq .board_list_table {
	    border-top: 1px solid #dbdbdb;
	}
	
	.board_list_table {
	    width: 100%;
	    margin: 0 0 20px 0;
	    border: 0;
	    border-spacing: 0;
	    border-collapse: collapse;
	    border-top: 1px solid #3c3c3c;
	    text-align: center;
	}
	
	.board_list_table th {
	    padding: 10px 10px 10px 14px;
	    border-bottom: 1px solid #dbdbdb;
	    background: #fbfbfb;
	}
	
	.board_list_table td {
	    padding: 13px 10px 15px 10px;
	    border-bottom: 1px solid #dbdbdb;
	}
	
	.board_list_faq .board_list_table .board_tit { padding-left: 42px; text-align : left; }
	
	.faq_answer { display : none; }
	
	.icon {
	    margin: 0 2px 0 2px;
	    vertical-align: middle;
	    padding : 0 10px 0 0 ;
	    text-decoration: none;
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
                                	<span class="btn_gray_list"><a href="qa" class="btn_gray_mid" target="_top"><span>1:1 문의하기</span></a></span>
                            		</p>
                        		</div>
							</form>
						</div>
						<div class ="board_zone_title">
							<h4>	BEST FAQ </h4>
						</div>
						<div class ="board_list_faq">
							<!-- <div class="board_hot_list">
		                        <ul>
		                            <li class="on"><a href="#"><span>전체</span></a></li>
		                            <li><a href="#"><span>회원가입/정보</span></a></li>
		                            <li><a href="#"><span>결제/배송</span></a></li>
		                            <li><a href="#"><span>교환/반품/환불</span></a></li>
		                            <li><a href=""><span>기타</span></a></li>
		                            <li><a href="faq.php?category=03001005&amp;noheader=y&amp;isBest=y&amp;searchField=&amp;searchWord="><span>기타</span></a></li>
		                        </ul>
		                    </div> -->
		                    <table id="faqList" class="board_list_table">
				                <colgroup>
		                            <col style="width:67px">
		                            <col style="width:144px">
		                            <col>
		                        </colgroup>
		                    	<thead>
                         			<tr>
                                		<th>번호</th>
                                		<th>분류</th>
                                		<th>내용</th>
                            		</tr>
                        		</thead>
                        		<tbody>
                        			<c:forEach var="board" items="${boards}">
								    	<tr class="toggle_taq">
											<td>${board.board_no}</td>
											<!-- 글번호 -->
											<%-- <td>${board.type_no}</td> --%>
											<td>${board.writer}</td>
											<!-- 고객센터 분류(일단은 string으로 된 writer 컬럼을 사용했음. 나중에 type_no로 수정할 예정)-->
											<td class="board_tit">
												<a href="javascript:void(0);" class="question"  id="que-${board.board_no}">
													<span class="icon icon_qan">
														<!-- <i class="fa-solid fa-q"></i> -->
														<img src="../img/icon_qna_q.png">
													</span>
													${board.title}
												</a>
											</td>
											<!-- 글제목 -->
										</tr>
										<tr class="faq_answer" id="ans-${board.board_no}">
											<td colspan="3">
							   					<div class="answer">${board.content}</div>
							   				</td>
							   			</tr>
							   			<!-- 숨겨진 부분 : 내용 (밑 javascript에 의해 더보기<->접기 활성화됨. ) -->
									</c:forEach>                                    			
                        		</tbody>
		                    </table>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<!-- 오른쪽 큰부분 메뉴 (메인 컨텐츠) div 부분 -->	
	</div>
</div>
	
<!-- 긁어온 javascript 부분 -->
<script>
  const items = document.querySelectorAll('.question');

  function openCloseAnswer() {
    const answerId = this.id.replace('que', 'ans');
    if(document.getElementById(answerId).style.display === 'block') {
      document.getElementById(answerId).style.display = 'none';
    }
    else if(document.getElementById(answerId).style.display === 'table-row') {
        document.getElementById(answerId).style.display = 'none';
      }
    
    else {
      $('.faq_answer').css('display','none');
      document.getElementById(answerId).style.display = 'table-row';
    }
  }

  items.forEach(item => item.addEventListener('click', openCloseAnswer));
</script>
<!-- 펼치고 접고 하게 해주는 script 부분. -->
<hr>
<!-- Footer include 부분  -->
<div class="footer">
    <footer>
        <jsp:include page="./include/footer.jsp"></jsp:include>
    </footer>
</div>

</body>
</html>