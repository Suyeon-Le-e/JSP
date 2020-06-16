function login() {
    var loginForm = document.querySelector('#loginForm');
    var id = document.querySelector('#id');
    var pw = document.querySelector('#pw');
    if(id.value.length === 0){
        alert('id를 입력해주세요');
        id.focus();
        return false;
    }
    if(pw.value.length === 0){
        alert('pw를 입력해주세요');
        pw.focus();
        return false;
    }
    if(id = 'abcd'){
        if(pw = '1234'){
            alert('로그인 성공!')
            location.href = "../index1.html";
            return true;
        }
    }
    
}
loginBtn.addEventListener('click',function () {
    login();
});