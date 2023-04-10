
let $list = $('.list-btn');
let $edit = $('.edit-btn');
let $delete = $('.delete-btn');

let qnaNumber = $list.data('qnanumber');

$list.on('click', () => {
	window.location.href = '/qna/QnAListOk.qn';
});

$edit.on('click', () => {
	window.location.href = '/qna/QnAUpdate.qn?qnaNumber=' + qnaNumber;
});

$delete.on('click', () => {
	window.location.href = '/qna/QnADeleteOk.qn?qnaNumber=' + qnaNumber;
});


commentAjax();

function commentAjax() {
	$.ajax({
		url: '/qna/QnACommentOk.qn',
		type: 'get',
		data: {qnaNumber : qnaNumber},
		dataType: 'json',
		success: showComment,
		error: function(a, b, c) {
			console.log(c);
		}
	});
}


function showComment(replies) {
	let text = "";

	replies.forEach(comment => {
		text += `
         <ul id="comment-list">
                  <li>
                     <div class="comment-info">
                        <span class="writer">${comment.memberId}</span> <span
                           class="date">${comment.qnaCommentWriteday}</span>
                     </div>
                     <div class="comment-content-wrap">
                        <div class="comment-content">
                           <p>${comment.commentContent}</p>
                        </div>`

		if (memberNumber == comment.memberNumber) {
			text += `<div class="comment-btn-group">
                           <button type=button class="comment-modify-ready">수정</button>
                           <button type=button class="comment-delete" data-number="${comment.commentNumber}">삭제</button>
                        </div>
                        <div class="comment-btn-group none">
                           <button type=button class="comment-modify"data-number="${comment.commentNumber}">수정 완료</button>
                        </div>`
		}

		text += `</div>
                  </li>
            </ul>
      `;

	});

	$('.comment-list').html(text);
}


// 댓글 작성
$('.submit-btn').on('click', function() {
	$.ajax({
		url: "/qna/QnACommentWriteOk.qn",
		type: "post",
		data: {
			qnaNumber: qnaNumber,
			memberNumber: memberNumber,
			commentContent: $('#content').val()
		},
		success: function() {
			commentAjax();
			$('#content').val('');
		}
	});
});



//댓글 삭제
$('.comment-list').on('click', '.comment-delete', function() {
	let commentNumber = $(this).data('number');
	console.log(commentNumber);

	$.ajax({
		url: "/qna/QnACommentDeleteOk.qn",
		type: "get",
		data: { commentNumber: commentNumber },
		success: function() {
			commentAjax();
		},
		error: function(a, b, c) {
			console.log(c);
		}
	});
});

//수정 버튼
$('.comment-list').on('click', '.comment-modify-ready', function() {
	// closest()는 조상 요소 중에서 찾는다.
	// find()는 자손 요소 중에서 찾는다.
	let $parent = $(this).closest('#comment-list');
console.log($parent);

	let $children = $parent.find('.comment-btn-group');
	console.log($children);

	$children.eq(0).hide();
	$children.eq(1).show();

	let $content = $(this).parent().prev().children();
	console.log($content);

	//기존 요소를 교체
	$content.replaceWith(`<textarea class=modify-content>${$content.text()}</textarea>`);
});

// 수정 완료 버튼
$('.comment-list').on('click', '.comment-modify', function() {
	console.log('modify~!@~!~!~!!');
	let commentNumber = $(this).data('number');

	$.ajax({
		url: '/qna/QnACommentUpdate.qn',
		type: 'get',
		data: {
			commentNumber: commentNumber,
			commentContent: $('.modify-content').val()
		},
		success: function() {
			commentAjax();
		}
	});
});




