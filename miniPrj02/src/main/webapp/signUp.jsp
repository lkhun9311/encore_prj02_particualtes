<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>미세먼지</title>

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

<link rel="stylesheet" href="resources/css/backgroundStyle2.css" />
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
				<div
					class="col-xs-3 col-xs-offset-3 col-sm-6 col-sm-offset-5 col-md-6 col-md-offset-5"
					id="box" align="center">
					<form enctype="application/json" action="/user/join" method="post" name="join">
						<h2>회원가입</h2>
						<p>아이디</p>
						<input id="username" name="username" placeholder="아이디 입력"
							maxlength="20">
						<p>닉네임</p>
						<input id="nickname" name="nickname" placeholder="닉네임 입력"
							maxlength="20">
						<p>비밀번호</p>
						<input type="password" id="pwd" name="pwd" placeholder="비밀번호 입력"
							maxlength="20">
						<p>생일</p>
						<input type="date" id="birth" name="birth" placeholder="생일 입력"
							maxlength="20">
						<p>전화번호</p>
						<input type="text" id="phone" name="phone" placeholder="전화번호 입력"
							maxlength="20">	
					
						<p>주소</p>
						<input type="text" id="addr" name="addr" placeholder="지역 입력"
							maxlength="20"> <br /> <label class="test_obj">
							<input type="radio" name="gender" value="man"> <span>남자</span>
						</label> <label class="test_obj"> <input type="radio"
							name="gender" value="woman"> <span>여자</span>
						</label> <br /> <input type="submit" value="회원가입" onclick="login()">
					</form>
				</div>
			</div>
		</div>
		<br/>
		<footer>
			<p>&copy; 2022. 미세먼지. all rights reserved.</p>
		</footer>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>