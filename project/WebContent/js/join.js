var joinForm = document.querySelector('#joinForm');
var inid = document.querySelector('#inid');
var inpw = document.querySelector('#inpw');
var checkpw = document.querySelector('#checkpw');
var name = document.querySelector('#name');
var nik = document.querySelector('#nik');
var email = document.querySelector('#email');

inid.onclick = function () {
    inid.value = '';
}
inpw.onclick = function () {
    inpw.value = '';
    inpw.type = 'password';
}
checkpw.onclick = function () {
    checkpw.value = '';
    checkpw.type = 'password';
}
name.onclick = function () {
    name.value = '';
}
nik.onclick = function () {
    nik.value = '';
}
email.onclick = function () {
    email.value = '';
}

function join() {

    if(inid.value.length < 3){
        alert('아이디를 다시 입력해주세요');
        inid.value = '';
        return false;
    }
    if(inpw.value.length===0){
        alert('비밀번호를 다시 입력해주세요');
        inpw.value = '';
        return false;
    }
    if(inpw.value !== checkpw.value){
        alert('비밀번호가 일치하지 않습니다');
        inpw.value = '';
        checkpw.value = '';
        return false;
    }
    if(name.value < 2){
        alert('이름을 다시 입력해주세요');

    }
    if(nik.value.length===0){
        alert('닉네임을 입력해주세요');
        inpw.value = '';
        return false;
    }
    if(email.value.length===0){
        alert('E-mail을 입력해주세요');
        email.value = '';
        return false;
    }
    else{
        alert('회원가입 성공!')
        location.href='/project/index.jsp';
        return true;
    }
    
}
joinBtn.addEventListener('click',function () {
    join();
});