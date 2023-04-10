/**
 * 
 */

let $list = $('.list');
let $edit = $('.edit');
let $delete = $('.delete');

let communityNumber = $list.data('communitynumber');

$list.on('click', ()=> {
	window.location.href = '/community/communityListOk.cm';
});

$edit.on('click', ()=> {
	window.location.href = '/community/communityUpdate.cm?communityNumber=' + communityNumber;
});

$delete.on('click', ()=> {
	window.location.href = '/community/communityDeleteOk.cm?communityNumber=' + communityNumber;
});

communityCommentAjax();

function communityCommentAjax(){
	$.ajax({
		url : '/communityComment/communityCommentListOk.cc',
		type : 'get',
		data : {communityNumber : communityNumber},
		dataType : 'json',
		success : showCommunityComment,
		error : function(a,b,c){
			console.log(c);
		}
	});
}

function showCommunityComment(communityComments){
	let text = "";
	
	communityComments.forEach(communityComment => {
		text += `
			
						<div class="date">
							<p3>${communityComment.memberNickName}</p3>
							<div class="none"></div>
							<div class="fuck">
								<p1>${communityComment.commentDate}</p1>
							</div>
						</div>
						<div class="commtent-sub" id="comment-sub">
							<div class="delete">
								<p2>${communityComment.commentContent}</p2>
							</div>`
							
	if(memberNumber == communityComment.memberNumber){						
		text +=					`<div class="comment-btn">
								<button type=button class="comment-modify-ready">수정</button>
								<button type=button class="comment-delete" data-number="${communityComment.commentNumber}">삭제</button>
							</div>
								<div class="comment-btn none">
									<button type=button class="comment-modify" data-number="${communityComment.commentNumber}">수정완료</button>
								</div>`
			}					
								
			text +=			`</div>
					
		`;
	 
	});
	
	$('.hello').html(text);
}




// 댓글 작성
$('.go').on('click', function(){
	$.ajax({
		url : '/communityComment/communityCommentWriteOk.cc',
		type : "post",
		data : {
			communityNumber : communityNumber,
			memberNumber : memberNumber,
			commentContent : $('#content').val() 
		},
		success : function(){
			communityCommentAjax();
			$('#content').val('');
		}
	});
});

// 이벤트를 등록할 때 처음부터 존재하지 않는 요소는 이벤트 등록이(바인딩) 되지 않기 때문에
// 이벤트를 거는 시점을 잘 생각해야한다.
// 결국 동적으로 생기는 요소는 생기는 시점에서 이벤트를 바인딩 하는데 이렇게 되면 코드가 복잡해진다.
// 이럴 때 이벤트 위임을 사용한다.

// 이벤트 위임?
// 부모 요소에 이벤트를 바인딩 하면 자식요소의 이벤트를 처리할 수 있다.
// 하나의 이벤트로 여러 요소의 이벤트를 처리할 수 있어 효율적이며 성능을 향상시킬 수 있다.
// 그리고 동적 요소의 이벤트 처리를 간편하게 할 수 있다.


// 댓글 삭제 버튼 
$('.hello').on('click', '.comment-delete', function(){
	let commentNumber = $(this).data('number');
	console.log(commentNumber);
	
	$.ajax({
		url : "/communityComment/communityCommentDeleteOk.cc",
		type : "get",
		data : {commentNumber : commentNumber },
		success : function(){
			communityCommentAjax();
		},
		error:function(a,b,c){
			console.log(c);
			}
		
	});
});

// 수정 버튼
$('.hello').on('click', '.comment-modify-ready', function(){
	
	let $parent = $(this).closest('#comment-sub');
	console.log($parent);
	
	let $children = $parent.find('.comment-btn');
	console.log($children);
	
	$children.eq(0).hide();
	$children.eq(1).show();
	
	let $content = $(this).parent().prev().children();
	console.log($content);
	
	//기존 요소를 교체
	$content.replaceWith(`<textarea class='modify-content'>${$content.text()}</textarea>`);
});

//수정완료 버튼
$('.hello').on('click', '.comment-modify', function(){
	console.log('modify!!!');
	console.log($('.modify-content').val());
 let commentNumber = $(this).data('number');

 $.ajax({
	url : '/communityComment/communityCommentUpdateOk.cc',
	type : 'get',
	data : {
		commentNumber : commentNumber,
		commentContent : $('.modify-content').val()
	},
	success : function(){
		communityCommentAjax();
	}
});
});



