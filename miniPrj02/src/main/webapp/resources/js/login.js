function login(){
	var form = document.login;
	
	if(!form.id.value){
	alert("아이디를 입력하세요.");
	form.id.focus();
	return false;
	}
	
	if(!form.pwd.value){
	alert("비밀번호를 입력하세요.");
	form.pwd.focus();
	return false;
	}
	form.submit();
}