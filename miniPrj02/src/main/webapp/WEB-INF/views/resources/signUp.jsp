<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>미세먼지111</title>

  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&family=DM+Serif+Display&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&family=DM+Serif+Display&family=Roboto:wght@500&display=swap" rel="stylesheet">
  
    <link rel = "stylesheet" href="resources/css/backgroundStyle.css" />
</head>
<body>
    <div class="container background_img">
      <header>
      	<div class="row">
          <div class="col-md-12">      
      		<a href=index.jsp id="logo">DATA.air.kr</a>
      	  </div>
      	</div>
      </header>
      <div class="regform">
        <h1>회원가입</h1>
      </div>
      <div class="main">
        <form action="signup" method="post" name="signup">
          <div id="name">
            <h2 class="name">Name</h2>
            <input class="firstname" type="text" name="first_name" /> <br />
            <label class="firstlabel">firstname</label>
            <input class="lastname" type="text" name="last_name" /> <br />
            <label class="lastlabel">lastname</label>
            <h2 class="name">Company</h2>
            <input class="company" type="text" name="company" />
            <h2 class="name">Email</h2>
            <input class="email" type="text" name="email" />
            <h2 class="name">Phone</h2>
            <input class="code" type="text" name="area_code" />
            <label className="area-code">Area Code</label>
            <input class="number" type="text" name="phone" />
            <label className="phone-number">Phone Number</label>
            <h2 class="name">Subject</h2>
            <select class="option" name="subject">
              <option disabled="disabled" selected="selected">
                {" "}
                --Choose Option{" "}
              </option>
              <option> subject1 </option>
              <option> subject2 </option>
              <option> subject3 </option>
            </select>
            <h2 id="student"> Are You beginner ? </h2>
            <label class="radio">
              <input
                class="radio-one"
                type="radio"
                checked="checked"
                name=""
              />
              <span class="checkmark" />
              Yes
            </label>
            <label class="radio">
              <input
                class="radio-two"
                type="radio"
                checked="checked"
                name=""
              />
              <span class="checkmark" />
              No
            </label>
            <button type="submit">Register</button>
          </div>
        </form>
      </div>
    
      <footer>
        <p>&copy; 2022. 미세먼지. all rights reserved.</p>
      </footer>
    </div>
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>