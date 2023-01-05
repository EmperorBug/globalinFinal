<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Brand page</title>
    <link
            href="https://fonts.googleapis.com/css2?family=Lobster&display=swap"
            rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <style>

        .top_banner {
            text-align: center;
            /* margin-top: 2em; */
        }

        .brandArticle {
            text-align: center;
            font-size: 2em;
        }

        .header button {
            color: black;
        }

        div.header {
            position: relative;
            top: 0;
            z-index: 3;
            width: 100%;
        }

        .header span {
            color: black;
        }

        div.mainNav {
            position: relative;
            margin-top: 5em;
            top: 0;
            width: 100%;
            z-index: 3;
            color: white;
            text-align: center;

        }

        article {
            margin-top: 0em;
        }


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
<!-- 최상위단 배너부분 -->
<div class="top_banner">
    <h1>BRAND STORY</h1>
    <h2>브랜드 스토리</h2>
</div>
<!-- 브랜드페이지 본문 내용 Article -->
<div class="brandArticle">
    <article>
        <div>
            <%--(이미지 넣기)--%>
            <img src="/brand_img/brand1.png" width="1200", height="1000">
        </div>
        <div>
            <%--(텍스트 이미지 넣기)--%>
            <img src="/brand_img/phrase.png" width="900", height="500">
        </div>
    </article>
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