/**
 * 
 */

let $delete = $('.userDelete');
let result = comfirm('정말 회원탈퇴 하시겠습니까?');

$delete.on('click', function(e){
	e.preventDefault();
	
	if(result){
		alert('정상적으로 회원탈퇴처리가 되었습니다.');
		  window.location.href = '${pageContext.request.contextPath}/member/memberDeleteOk.me';
	}else{
		window.location.href = '${pageContext.request.contextPath}/mypage/mypageEdit.me';
	}
	
});
		

