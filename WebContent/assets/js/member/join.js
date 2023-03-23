/**
 * 
 */
let $checkMsg = $('#check-id-msg');

let $idInput = $('#id');

$idInput.on('blur', function(){
	if($(this).val() == ''){
		console.log('아이디 입력하세요!');
		$checkMsg.text('아이디를 입력하세요!');
	}
	else {
		let id = $(this).val();
		console.log(id);
			$.ajax({
			url : '/member/checkIdOk.me',
			type : 'get',
			data : {memberId : id},
			success : function(result){
					$checkMsg.text(result);
			}
		});
	}
});

//영어, 숫자, 특수문자로 이루어진 비밀번호 8글자 이상
//영어 대소문자를 구분하지 않음
const regex = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*()_+])[a-zA-Z\d!@#$%^&*()_+]{8,}$/;

let $checkPwMsg = $('#check-pw-msg');
let $pwInput = $('#password');


$pwInput.on('blur', function(){
	if(regex.test($(this).val())){
		$checkPwMsg.text('사용 가능한 비밀번호입니다.');
	}else{
		$checkPwMsg.html('사용 불가능한 비밀번호입니다. <br/> 영어, 숫자, 특수문자를 포함한 8글자 이상으로 작성해주세요.');
	}
});