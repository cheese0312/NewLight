/**
 * 
 */

let $checkMsg = $('#check-name-msg');
let $checkMsg2 = $('#check-phone-msg');

let $nameInput = $('#name');
let $phoneInput = $('#phone');

/*console.log('$nameInput');*/

$nameInput.on('blur', function(){
	if($(this).val() == ''){
		console.log('가입 시 등록한 이름을 입력해주세요.');
		$checkMsg.text('가입 시 등록한 이름을 입력해주세요.');
		}
		else{
		$checkMsg.text('');
	}
});

$phoneInput.on('blur', function(){
	if($(this).val() == ''){
		$checkMsg2.text('가입 시 등록한 휴대폰 번호를 입력해주세요.')
	}
	else{
		$checkMsg2.text('');
	}
});

let $okBtn = $('.okbtn');

let $memberName = $('.name');
let $memberPhone = $('.phone');


if(success == 'fail'){
	alert('등록된 회원정보가 없습니다.');
}

$okBtn.on('click', function(e){
	e.preventDefault();
	let phoneNum = '';
	$memberPhone.each(function(i, input){
		phoneNum += $(input).val();
	});
	console.log(phoneNum);
	
	if($memberName.val().length < 1){
		alert("이름을 입력해주세요");
		return;
	}	
	
	if(phoneNum.length != 11){
		alert("핸드폰번호를 정확하게 입력해주세요.");
		return;
	}
	
	$('form').submit();
});


