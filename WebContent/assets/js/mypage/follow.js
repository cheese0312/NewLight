/**
 * 
 */


let $editBtn = $('.edit-btn');

let $followBtn = $('.editbtn1');

$followBtn.on('click' , function(e){
	e.preventDefault();
	
	console.log($followBtn);
	
	let number = $(this).data('membernumber');
	let target = $(this);
	
	$.ajax({
		url : '/follows/followOk.fw',
		type : 'get',
		data : {memberNumber : number},
		success : function(result){
			let $parent = $(target).closest('.mypage-main2');
			let $children = $parent.find('.editbtn1');
			
			if(result == 0) {
				$children.eq(0).show();
				$children.eq(1).hide();
			} else {
				$children.eq(0).hide();
				$children.eq(1).show();
			}
		}
	});
})