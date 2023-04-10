/**
 * 
 */

let $listBtn = $('.list-btn');
let $editBtn = $('.edit-btn');
let $deleteBtn = $('.delete-btn');

let creationNumber = $listBtn.data('creationnumber');

$listBtn.on('click', () => {
	window.location.href = '/creations/pageListOk.ct?categoryCode=' +categoryCode + '&categoryName=' + categoryName;
});

$editBtn.on('click' , ()=> {
	window.location.href = '/creations/creationUpdate.ct?creationNumber=' + creationNumber;
});

$deleteBtn.on('click', ()=>{
	window.location.href='/creations/creationDeleteOk.ct?creationNumber=' + creationNumber;
})

console.log(creationNumber);
console.log('test!')
commentAjax();

function commentAjax(){
	$.ajax({
		url : '/creations/commentListOK.cc1',
		type : 'get',
		data : {creationNumber : creationNumber},
		dataType : 'json',
		success : showComment,
		error : function(a,b,c){
			console.log(c);
		}
	});
}

function showComment(comments){
	let text = "";
	
	comments.forEach(comment => {
		text += `
		<div class="comment-main">
				            <div class="comment-img-box">
				          <div class="comment-img">
				            <img src="/assets/images/member/—Pngtree—vector business men icon_4186858.png">
				          </div>
				        </div>
				          <div class="comment-box">
				            
				            <div class="comment-member">
				              ${comment.memberNickname} | ${comment.commentWritedate}
				              <div class="comment-content">
				               ${comment.commentContent}
				              </div>
				            </div>
				           
				            </div>
		`
		
		if(memberNumber == comment.memberNumber) {
			text += 
			`
			<div class="comment-btn">
				              <button type="button" class="comment-update">수정</button>
				              <button type="button" class="comment-delete"  data-number="${comment.commentNumber}">삭제</button>
				            
	</div>
			<div class="comment-btn none">
							<button type="button" class="comment-modify" data-number="${comment.commentNumber}">수정 완료 </button>
		</div>		          
				</div>
			`
		}
		
		text +=
		`
		</div>
		`
		;
	});
	$('.comment-border').html(text);
}

$('.comment-submit').on('click', function(){
	$.ajax({
		url : '/creations/commentWriteOk.cc1',
		type : 'post',
		data : {
			creationNumber : creationNumber,
			memberNumber : memberNumber,
			commentContent : $('#content').val()
		},
		success : function(){
			commentAjax();
			$('#content').val('');
		}
	});
});

$('.comment-border').on('click', '.comment-update' ,function(){
	let $parent = $(this).closest('.comment-main');
	console.log($parent);
	
	let $children = $parent.find('.comment-btn');
	console.log($children);
	
	$children.eq(0).hide();
	$children.eq(1).show();
	
	
	let $content = $parent.find('.comment-content');

	$content.replaceWith(`<textarea class="commentContentUpdate">${$content.text().trim()}</textarea>`)

});

$('.comment-border').on('click', '.comment-modify' , function(){
	console.log('hi~~~!');
	
	let commentNumber = $(this).data('number');
	
	$.ajax({
		url : '/creations/commentUpdateOk.cc1',
		type : 'get',
		data : {
			commentNumber : commentNumber,
			commentContent : $('.commentContentUpdate').val()
		},
		success : function(){
			commentAjax();
		}
	});
});


$('.comment-border').on('click', '.comment-delete' , function(){
	let commentNumber = $(this).data('number');
	
	$.ajax({
		url : "/creations/commentDeleteOk.cc1",
		type : "get",
		data : {
			commentNumber : commentNumber
		},
		success : function(){
			commentAjax();
		}
	})
})












