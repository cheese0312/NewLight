/**
 * 
 */

$('.member-list-status').on('click', '.member-status-btn', function(){
	let status = $(this).data('status');
	let number = $(this).data('number');
	let target = this;
	
	let switchStatus = status == 'N' ? 'Y' : 'N';
	let btnStatus = status == 'Y' ? 'X' : 'Y';
	$.ajax({
		url : '/admin/statusUpdateOk.ad',
		type : 'get',
		data : {
			memberStatus:status,
			memberNumber : number
			},
		success: function(result){
			console.log(result);
			$(target).closest('.member-list-status').find('.status').text(result);
			$(target).closest('.member-list-status').find('.btn').html(`
				<button type="button" class="member-status-btn" data-status="${switchStatus}" data-number="${number}">${btnStatus}</button>
			`);
			
		}
		
	});
});





