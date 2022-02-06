<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />


<title>미세먼지</title>
<link rel = "stylesheet" href="${pageContext.request.contextPath}/resources/css/CheckBox.css" />

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&family=DM+Serif+Display&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&family=DM+Serif+Display&family=Roboto:wght@500&display=swap" rel="stylesheet">
 
</head>

<body style ="overflow:hidden;">
<header>
<div class="container background_img">
      	<div class="row">
          <div class="col-md-12">      
      		<a href=newIndex.jsp id="logo">DATA.air.kr</a>
      	  </div>
      	</div>
      	</div>
      </header>

<form>
<div class="h1">
  <label for="act">
    결과 확인하기 ☞
  </label>
  <select onchange="if(this.value) location.href=(this.value);">
  <option value = "">------- 1가지 이상 선택 -------</option>
  <optgroup label="전국단위">
  <option value = "resources/dta/result1.jsp">월별 미세먼지 발생 현황</option>
  <option value = "resources/dta/result2.jsp">일별 미세먼지 발생 현황</option>
  <option value = "resources/dta/result3.jsp">시간별 미세먼지 발생 현황</option>
  </optgroup>
  <optgroup label="지역단위">
  <option value = "resources/dta/result4.jsp">월별 미세먼지 발생 현황</option>
  <option value = "resources/dta/result5.jsp">일별 미세먼지 발생 현황</option>
  <option value = "resources/dta/result6.jsp">시간별 미세먼지 발생 현황</option>	
  </optgroup>
  <optgroup label="권역단위">
  <option value = "resources/dta/result7.jsp">서울 미세먼지 발생 현황</option>	
  <option value = "resources/dta/result8.jsp">경기 미세먼지 발생 현황</option>
  <option value = "resources/dta/result9.jsp">인천 미세먼지 발생 현황</option>	
  <option value = "resources/dta/result10.jsp">세종 미세먼지 발생 현황</option>
  <option value = "resources/dta/result11.jsp">충북 미세먼지 발생 현황</option>	
  <option value = "resources/dta/result12.jsp">충남 미세먼지 발생 현황</option>
  <option value = "resources/dta/result13.jsp">대전 미세먼지 발생 현황</option>	
  <option value = "resources/dta/result14.jsp">전북 미세먼지 발생 현황</option>
  <option value = "resources/dta/result15.jsp">전남 미세먼지 발생 현황</option>	
  <option value = "resources/dta/result16.jsp">광주 미세먼지 발생 현황</option>
  <option value = "resources/dta/result17.jsp">대구 미세먼지 발생 현황</option>
  <option value = "resources/dta/result18.jsp">경북 미세먼지 발생 현황</option>
  <option value = "resources/dta/result19.jsp">경남 미세먼지 발생 현황</option>
  <option value = "resources/dta/result20.jsp">울산 미세먼지 발생 현황</option>
  <option value = "resources/dta/result21.jsp">부산 미세먼지 발생 현황</option>
  <option value = "resources/dta/result22.jsp">강원 미세먼지 발생 현황</option>
  <option value = "resources/dta/result23.jsp">제주 미세먼지 발생 현황</option>
  </optgroup>
</select>

      <footer>
       <br> <p>&copy; 2022. 미세먼지. all rights reserved.</p>
       <br>
       <br>
       <br>
       <br>
       <br>
       <br>
       <br>
      </footer>
      
</div>

      
</form>
</body>
</html>