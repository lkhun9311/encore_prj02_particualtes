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
  
    <link rel = "stylesheet" href="${pageContext.request.contextPath}/resources/css/backgroundStyle3.css" />
</head>
<body>
    <div class="container background_img">
      <header>
      	<div class="row">
          <div class="col-md-10">      
      		<a href=index.jsp id="logo">DATA.air.kr</a>
      	  </div>
      	</div>
      </header>
      <div class="content">
          <div class="row">
          	  <div class="col-xs-3 col-xs-offset-3 col-sm-6 col-sm-offset-5 col-md-6 col-md-offset-5" id="box1" align="center">
       			  <form action="find1.do" method="post">
       		        	  <label><h2>아이디 찾기</h2><label>
					      <label for="id1">이름</label>
					      <input type="id" id="id1" placeholder="이름 입력" maxlength="20">
					      <label for="phone1">전화번호</label>
					      <input type="phone" id="phone1" placeholder="전화번호 입력" maxlength="20">
					      <input type="submit" value="확인" onclick="check1()">
			       </form>    
          	  </div>
          </div>
          <div class="row">
          	  <div class="col-xs-3 col-xs-offset-3 col-sm-6 col-sm-offset-5 col-md-6 col-md-offset-5" id="box2" align="center">
       			  <form action="find2.do" method="post">
       		        	  <label><h2>비밀번호 찾기</h2><label>
					      <label for="id2">아이디</label>
					      <input type="id" id="id2" placeholder="아이디 입력" maxlength="20">
					      <label for="phone2">전화번호</label>
					      <input type="phone" id="phone2" placeholder="전화번호 입력" maxlength="13">
					      <input type="submit" value="확인" onclick="check2()">
			       </form> 
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