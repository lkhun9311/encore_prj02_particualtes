<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
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
  
    <link rel = "stylesheet" href="${pageContext.request.contextPath}/resources/css/backgroundStyle5.css" />
</head>
<body>
    <div class="container background_img">
      <header>
      	<div class="row">
          <div class="col-md-12">      
      		<a href=newIndex.jsp id="logo">DATA.air.kr</a>
      	  </div>
      	</div>
      </header>
      <div class="content">
          <div class="row">
          	  <div class="col-md-6 col-aligncenter" id="box">
       
          	  </div>
          </div>
      </div>
      <footer>
        <p>&copy; 2022. 미세먼지. all rights reserved.</p>
      </footer>
    </div>
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>