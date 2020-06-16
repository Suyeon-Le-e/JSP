function login() {
    var loginForm = document.querySelector('#loginForm');
    var id = document.querySelector('#id');
    var pw = document.querySelector('#pw');
    if(id.value.length === 0){
        alert('id를 입력해주세요');
        id.focus();
        return false;
    }
    else if(pw.value.length === 0){
        alert('pw를 입력해주세요');
        pw.focus();
        return false;
    }else {
    	document.loginForm.submit();
    }
    
    
}
loginBtn.addEventListener('click',function () {
    login();
});