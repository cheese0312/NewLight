/**
 * 
 */

let $delete = $('.userDelete');

$delete.on('click', function(e){
	e.preventDefault();
	let result = confirm('정말 회원탈퇴 하시겠습니까?');
	
	if(result){
		alert('정상적으로 회원탈퇴처리가 되었습니다.');
		window.location.href = '/member/memberDeleteOk.me';
	}else{
		window.location.href = '/mypage/mypageEdit.me';
	}
	
});
		

