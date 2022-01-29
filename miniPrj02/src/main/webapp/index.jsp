<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>미세먼지</title>

  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&family=DM+Serif+Display&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&family=DM+Serif+Display&family=Roboto:wght@500&display=swap" rel="stylesheet">
  
    <link rel = "stylesheet" href="${pageContext.request.contextPath}/resources/css/indexStyle.css" />
      
  </head>
  <body>
    <div class="container background_img">
      <header>
      	<div class="row">
          <div class="col-xs-6 col-sm-8 col-md-8 col-lg-8">
            <a href=index.jsp id="logo">
             DATA.air.kr
            </a>
          </div>
          <div class="col-xs-3 col-sm-2 col-md-2 col-lg-2 col-lg-push-1" id="container_login">
            <a href="login.jsp" id="login">로그인</a>
          </div>
          <div class="col-xs-3 col-sm-2 col-md-2 col-lg-2" id="container_join">
            <a href="join.jsp" id="join">회원가입</a>
          </div>
        </div>
      </header>
      <div class="content">
        <p class="text-center">clean?</p>
      </div>
      <footer>
        <p>&copy; 2022. 미세먼지. all rights reserved.</p>
      </footer>
    </div>
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  </body>
</html>