let $fileInput = $('#file');
let $fileList = $('.file-list');
let $cnt = $('.cnt');

console.log($fileInput);

// 첨부파일 미리보기 처리
$fileInput.on('change', function() {
	console.log('change!!!');

	let files = this.files;
	//   console.log(files);

	// 기존에 있던 파일 지우고 새로 추가해줌
	$fileList.html('');

	if (files.length > 5) {

		// 파일 자체를 초기화 시켜줌		
		let dt = new DataTransfer();
		files = dt.files;

		console.log(files);
		console.log('=========');

		alert("파일은 최대 5개 까지만 첨부 가능합니다.");
		$cnt.text(files.length);
		return;
	}

	for (let i = 0; i < files.length; i++) {
		let src = URL.createObjectURL(files[i]);

		$fileList.append(
			`<li>
            <div class="show-img-box">
               <img src=${src}>
            </div>
            <div class="btn-box">
               <button type='button' class='img-cancel-btn' data-name='${files[i].name}'>삭제</button>
            </div>
         </li>`
		);

		$cnt.text(files.length);

	}

	$('.img-cancel-btn').on('click', function() {
		console.log('삭제!!!');

		$(this).parent().parent().remove();

		let fileName = $(this).data('name');

		let dt = new DataTransfer();

		for (let i = 0; i < files.length; i++) {
			if (files[i].name !== fileName) {
				dt.items.add(files[i]);
			}
		}

		files = dt.files;
		console.log(files);
		$cnt.text(files.length);
	});

});


$('.cancel-btn').on('click', () => {
	window.location.href = '/qna/QnAListOk.qn';
});






















