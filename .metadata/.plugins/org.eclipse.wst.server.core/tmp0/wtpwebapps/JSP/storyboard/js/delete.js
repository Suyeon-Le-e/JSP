var depw = document.querySelector('.depw');

function remove() {
    if(depw.value.length === 0){
        alert('비밀번호를 입력해주세요');
        depw.focus();
        return false;
    }
    if(depw.value == '1234'){
        alert('삭제 성공!');
        location.href = "../index0.html";
        return true;
    }
    else{
        alert('비밀번호가 틀렸습니다');
        depw.value='';
        return false;
    }
}
deleteBtn.addEventListener('click',function () {
    remove();
});