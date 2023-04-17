/**
 * 
 */

let $okBtn = $('.okbtn');

let $memberId = $('.Id');
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
	
	if($memberId == ''){
		alert("아이디를 입력해주세요.");
		return;
	}
	
	if($memberName.val().length < 1){
		alert("이름을 입력해주세요.");
		return
	}
	
	if(phoneNum.length != 11){
		alert("핸드폰번호를 정확하게 입력해주세요.")
		return;
	}
	
	$('form').submit();
});


