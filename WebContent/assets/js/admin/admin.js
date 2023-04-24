/**
 * 
 */

$('.member-list-status').on('click', '.member-status-btn', function(){
	let status = $(this).data('status');
	let number = $(this).data('number');
	let target = this;
	
	let switchStatus = status == 'N' ? 'Y' : 'N';
	/*let btnStatus = status == 'Y' ? 'X' : 'Y';*/
	
/*	let switchStatus = status == '활동 불가능' ? '활동 가능' : '활동 불가능';*/
/*	let btnStatus = status == '활동 가능' ? '활동 불가능' : '활동 가능';*/
	
	
	$.ajax({
		url : '/admin/statusUpdateOk.ad',
		type : 'get',
		data : {
			memberStatus:status,
			memberNumber : number
			},
		success: function(result){
			console.log(result);
			let btnStatus = result == '활동 가능' ? '활동 불가능' : '활동 가능';
			let color = result == '활동 가능' ? 'blue' : 'red';
			let $statusM = $(target).closest('.member-list-status').find('.statusM');
			$statusM.text(result);
			$statusM.css('color', color);
			$(target).closest('.member-list-status').find('.btn').html(`
				<button type="button" class="member-status-btn" data-status="${switchStatus}" data-number="${number}">${btnStatus}</button>
			`);
			
		}
		
	});
});





