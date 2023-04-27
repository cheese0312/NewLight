/**
 * 
 */
let $checkPwMsg = $('#check-pw-msg');
let $checkNickname = $('#check-nickname-msg');

let $pwInput = $('#pw-change');
let $nickNameInput = $('#nickname-change');


/* 닉네임 입력확인 및 중복검사*/
$nickNameInput.on('blur', function(){
		let nickname = $(this).val();
		
		if(nickname == ''){
			$checkNickname.text('닉네임을 입력하세요!')
		}else{
			$.ajax({
				url : 'checkNicknameOk.me',	
				type : 'get',
				data : {memberNickname : nickname},
				success : function(result){
					$checkNickname.text(result);
				}, error : function(a,b,c){
					console.log(c);
				}
			});
		}
});

/* 비밀번호 입력확인하기 */
const regex = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*()_+])[a-zA-Z\d!@#$%^&*()_+]{8,}$/;

$pwInput.on('blur', function(){
	if(regex.test( $(this).val() )){
		$checkPwMsg.text("사용 가능한 비밀번호 입니다.");
	}else{
		$checkPwMsg.html("사용 불가능한 비밀번호입니다.<br>영어, 숫자, 특수문자를 포함한 8글자 이상으로 작성해주세요.")
	}
	
});

/* 닉네임 한줄소개 글씨입력 시 카운트 증가 */
let $nicknameCount = $('.nickname-count');
let $selfyCount = $('.selfy-count');

let $nicknameInput = $('#nickname-change');
let $selfyInput = $('#selfy-change');

$nicknameInput.on('keydown', function(){
	console.log($(this).val().length);
	$nicknameCount.text($(this).val().length);
});

$selfyInput.on('keydown', function(){
	$selfyCount.text($(this).val().length);
});









