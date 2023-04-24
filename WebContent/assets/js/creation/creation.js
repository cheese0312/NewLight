/**
 * 
 */

let $listBtn = $('.list-btn');
let $editBtn = $('.edit-btn');
let $deleteBtn = $('.delete-btn');


let creationNumber = $listBtn.data('creationnumber');

$listBtn.on('click', (e) => {
	e.preventDefault();
	window.history.back();
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
							`;
							if(comment.memberPfp){
								text += `<img src="/userProfile/${comment.memberPfp}">`;
							}else{
								text += `<img src="/assets/img/member/peoply.png">`;
							}
							
				            text +=`<img src="/userProfile/${comment.memberPfp}">
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
				              <button type="button" class="comment-update commnet-btn-ok">수정</button>
				              <button type="button" class="comment-delete commnet-btn-ok"  data-number="${comment.commentNumber}">삭제</button>
				            
	</div>
			<div class="comment-btn none">
							<button type="button" class="comment-modify commnet-btn-ok" data-number="${comment.commentNumber}">수정 완료 </button>
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


//팔로우 처리
let $followBtn = $('.follow-btn');

$followBtn.on('click', function(e){
	e.preventDefault();
	
	let number = $(this).data('membernumber');
	let target = this;
	$.ajax({
		url: '/follows/followOk.fw',
		type : 'get',
		data : {memberNumber : number},
		success : function(result) {
			let $parent1 = $(target).closest('.creations-info');
			let $children1 = $parent1.find('.follow-btn');
			
			
			if(result == 0){
					$children1.eq(0).show();
					$children1.eq(1).hide();
			}else{
					$children1.eq(0).hide();
					$children1.eq(1).show();
			}
			
		}
	});
})



//좋아요 처리
let $likeBtn = $('.creations-like');
$likeBtn.on('click' , function(e){
	e.preventDefault();
	
	let likeNumber= $(this).data('likenumber');
	let liketarget= this;
	
	console.log(likeNumber);
	
	$.ajax({
		url : '/likes/likeOk.le',
		type : 'get',
		data : {creationNumber : likeNumber},
		success : function(result1){
			let $parent2 = $(liketarget).closest('.click-main');
			let $children2 = $parent2.find('.likeplus');
			let likeCnt = parseInt($('.likeCount').text().trim());
						
			if(result1 == 0) {
				$children2.find('img').attr('src', '/assets/images/member/free-icon-hearts-138533.png');
				/*$children2.eq(1).show();
				$children2.eq(0).hide();*/
				$('.likeCount').text(likeCnt+1);
			} else {
				$children2.find('img').attr('src', '/assets/images/member/IMG_1993.png');
				/*$children2.eq(0).show();
				$children2.eq(1).hide();*/
				$('.likeCount').text(likeCnt-1);
			}
			
			
		}
	});
	
});


//댓글 갯수 처리

































