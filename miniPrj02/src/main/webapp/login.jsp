<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>미세먼지</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link
	href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&family=DM+Serif+Display&display=swap"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link
	href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&family=DM+Serif+Display&family=Roboto:wght@500&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="resources/css/backgroundStyle1.css" />

<script src="${pageContext.request.contextPath}/login.js"
	type="text/javascript"></script>

</head>
<body>

	<script>
	
		$(document).ready(function(){
			console.log("안녕");
			$('#login').submit(function(){
				$.ajax({
					type : 'POST',
					url : 'http://211.106.174.149:9000/login',
					dataType : 'json',
					contentType : 'application/json; charset=utf-8',
					data : JSON.stringify(data)
				}).done(function() {
					alert('글이 등록되었습니다.');
					window.location.href = '/';
				}).fail(function(err) {
					alert(JSON.stringify(err));
				})
			})
		})
		
	</script>
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
				<div
					class="col-xs-3 col-xs-offset-3 col-sm-6 col-sm-offset-5 col-md-6 col-md-offset-5"
					id="box" align="center">
					<form  action="/login" method="post"
						name="login" id="login">
						<h2>로그인</h2>
						<p>아이디</p>
						<input id="username" name="username" placeholder="아이디 입력"
							maxlength="20">
						<p>비밀번호</p>
						<input type="password" id="password" name="password"
							placeholder="비밀번호 입력" maxlength="20"> <input
							type="submit" value="로그인" onclick="formArray()"> <a
							href="find.jsp" id="find">아이디/비밀번호 찾기</a>
					</form>

				</div>
			</div>
		</div>
		<footer>
			<p id="footer">&copy; 2022. 미세먼지. all rights reserved.</p>
		</footer>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>