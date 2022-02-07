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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>





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
					<form enctype="application/json" action="/user/join" method="post"
						name="join">
						<h2>회원가입</h2>
						<p>아이디</p>
						<input id="username" name="username" placeholder="아이디 입력"
							maxlength="20"> <input type="button" id="id_request"
							class="input_id" value="아이디 중복확인"></br> <font id="checkId"
							size="2"></font>
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
						</label> <br /> <input type="button" value="회원가입"
							onclick="fn_info_check()">
					</form>
				</div>
			</div>
		</div>
		<br />
		<footer>
			<p>&copy; 2022. 미세먼지. all rights reserved.</p>
		</footer>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<script>
	    var pw_passed = true;
	
		
		
		
		function fn_info_check() {
			var id = document.getElementById("username").value; // 아이디
			var pw = document.getElementById("pwd").value; //비밀번호
			var nick = document.getElementById("nickname").value;
			var birth = document.getElementById("birth").value;
			var phone = document.getElementById("phone").value;
			var addr = document.getElementById("addr").value;

			

			var pattern1 = /[0-9]/;
			var pattern2 = /[a-zA-Z]/;
			var pattern3 = /[~!@\#$%<>^&*]/; // 원하는 특수문자 추가 제거
			var pw_msg = "";

			if (id.length == 0) {
				alert("아이디를 입력해주세요");
				return false;
			} else {
				//필요에따라 아이디 벨리데이션
			}

			if (pw.length == 0) {
				alert("비밀번호를 입력해주세요");
				return false;
			}

			if (nick.length == 0) {
				alert("닉네임을 입력해주세요");
				return false;
			}

			if (birth.length == 0) {
				alert("생일을 입력해주세요");
				return false;
			}

			if (phone.length == 0 && phone.length != 11) {
				alert("전화번호를 제대로 입력하세요.");
				return false;
			}

			if (!pattern1.test(pw) || !pattern2.test(pw) || !pattern3.test(pw)
					|| pw.length<8||pw.length>50) {
				alert("비밀번호는 영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
				return false;
			}

			if (pw.indexOf(id) > -1) {
				alert("비밀번호는 ID를 포함할 수 없습니다.");
				return false;
			}
			console.log(id.length);
			var SamePass_0 = 0; //동일문자 카운트
			var SamePass_1 = 0; //연속성(+) 카운드
			var SamePass_2 = 0; //연속성(-) 카운드

			for (var i = 0; i < pw.length; i++) {
				var chr_pass_0;
				var chr_pass_1;
				var chr_pass_2;

				if (i >= 2) {
					chr_pass_0 = pw.charCodeAt(i - 2);
					chr_pass_1 = pw.charCodeAt(i - 1);
					chr_pass_2 = pw.charCodeAt(i);
					//동일문자 카운트

					if ((chr_pass_0 == chr_pass_1)
							&& (chr_pass_1 == chr_pass_2)) {
						SamePass_0++;
					} else {
						SamePass_0 = 0;
					}
					//연속성(+) 카운드
					if (chr_pass_0 - chr_pass_1 == 1
							&& chr_pass_1 - chr_pass_2 == 1) {
						SamePass_1++;
					} else {
						SamePass_1 = 0;
					}

					//연속성(-) 카운드

					if (chr_pass_0 - chr_pass_1 == -1
							&& chr_pass_1 - chr_pass_2 == -1) {
						SamePass_2++;
					} else {
						SamePass_2 = 0;
					}
				}

				if (SamePass_0 > 0) {
					alert("동일문자를 3자 이상 연속 입력할 수 없습니다.");
					pw_passed = false;
				}

				if (SamePass_1 > 0 || SamePass_2 > 0) {
					alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
					pw_passed = false;
				}

				if (!pw_passed) {
					return false;
					break;
				}
				
				
				if (checkId.getAttribute('color') == null) {
					alert("아이디 중복 검사를 해주세요.!!");
					return false;
				} else if (checkId.getAttribute('color') == 'red') {
					alert("해당 아이디는 사용 중 입니다.");
					return false;
				}
			}
			document.join.submit();
			return true;

		}

		var pw_passed = true;

		$('.input_id').focusout(function() {
			let userId = $('.input_id').val();
		})

		document.getElementById("id_request").onclick = function() {
			var id = document.getElementById("username").value;
			console.log(id);

			$.ajax({
				url : "/user/check",
				method : "get",
				aysync: false,
				dataType : "text",
				data : {
					username : id,
				},
				success : function(result) {
					console.log(result)
					if (result=="false") {
						$("#checkId").html('사용할 수 없는 아이디입니다.');
						$("#checkId").attr('color', 'red');
					} else {
						$("#checkId").html('사용할 수 있는 아이디입니다.');
						$("#checkId").attr('color', 'green');
					}
				},
				error : function() {
					alert("서버요청실패");
				}
			})
		}
	</script>
</body>
</html>