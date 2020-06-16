var writer = document.querySelector('.writer');
var email = document.querySelector('.email');
var home = document.querySelector('.home');
var title = document.querySelector('.title');
var contents = document.querySelector('.contents');
var pw = document.querySelector('.pw');

function signup() {

    if(writer.value.length === 0){
        alert('작성자를 입력해주세요');
        writer.focus();
        return false;
    }
    if(title.value.length === 0){
        alert('제목을 입력해주세요');
        title.focus();
        return false;
    }
    if(contents.value.length === 0){
        alert('내용을 입력해주세요');
        contents.focus();
        return false;
    }
    if(pw.value.length === 0){
        alert('비밀번호를 입력해주세요');
        pw.focus();
        return false;
    }
    else{
        alert('게시글 등록 성공!');
        location.href = "/porject/index.jsp";
        return true;
    }
    
}
signupBtn.addEventListener('click',function () {
    signup();
});

function reset() {
    writer.value='';
    email.value='';
    home.value='';
    title.value='';
    contents.value='';
    
}
resetBtn.addEventListener('click',function () {
    reset();
});