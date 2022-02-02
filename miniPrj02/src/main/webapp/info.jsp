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
  
    <link rel = "stylesheet" href="${pageContext.request.contextPath}/resources/css/backgroundStyle4.css"/>
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
          	  <div class="col-xs-3 col-xs-offset-3 col-sm-6 col-sm-offset-5 col-md-6 col-md-offset-5" id="box">
       			  <form action="info.do" method="post">
       		      		<label><h2>개인정보</h2><label>
					    <label for="name">이름 : <%="홍길동"%></label>
					    <label for="id">아이디 : </label>
					    <label for="pwd1">새 비밀번호 입력 : </label>
					    <input type="password" id="pwd1" placeholder="새 비밀번호 입력" maxlength="20">
					    <label for="pwd2">새 비밀번호 확인 : </label>
					    <input type="password" id="pwd2" placeholder="새 비밀번호 다시입력" maxlength="20">
					    <label for="birth">생년월일 : </label>
					    <label for="address">주소 : </label>
					    <label for="gender">성별 : </label>
					    <label for="phone1">현재 전화번호 : </label>
					    <label for="phone2">새 전화번호 입력: </label>
					    <input type="phone2" id="phone2" placeholder="새 전화번호 ''-'' 없이 입력" maxlength="20">
					    <input type="submit" value="개인정보 수정" onclick="ModifyInfo()">
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