/**
 * 
 */

/*const fileInput = document.querySelector('#file');
const fileList = document.querySelector('.file-list');
const submitBtn = document.querySelector('.submit-btn');

// 파일 선택 시 파일 목록 추가
fileInput.addEventListener('change', (e) => {
  const files = e.target.files;

  for (let i = 0; i < files.length; i++) {
    const li = document.createElement('li');
    li.textContent = files[i].name;
    fileList.appendChild(li);
  }
});

// 폼 제출 시 파일 유효성 검사
submitBtn.addEventListener('click', (e) => {
  e.preventDefault();

  const files = fileInput.files;

  for (let i = 0; i < files.length; i++) {
    if (!validateFile(files[i].name)) {
      alert('올바른 파일 형식이 아닙니다.');
      return;
    }
  }

  // TODO: 서버로 폼 데이터 전송
});

// 파일 유효성 검사 함수
function validateFile(fileName) {
  const allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
  return allowedExtensions.exec(fileName);
}
*/

/*===============================================*/

let $fileInput = $('#file');
let $fileList = $('.file-list');
let $cnt = $('.cnt');

/*console.log($fileInput);*/

// 첨부파일 미리보기 처리
$fileInput.on('change', function(){
		/*console.log('change!!!');*/
		
		let files = this.files;
		/*console.log(files);*/
		
// 파일을 변경하면 원래 선택된 파일의 미리보기를 사라지게 처리하는 코드	
// html('')로 초기화를 시켜준다.	
		$fileList.html('');
		
		if(files.length > 5){
	//	파일이 진짜로 삭제되는지 확인하기
			/*console.log(files);*/
			
	// 파일을 드래그앤드랍으로 파일첨부를 할 수 있게 도와주는 객체이다.
			let dt = new DataTransfer();
			files = dt.files;
			
	// 파일이 초기화 됬는지 확인하기
			console.log(files);
			
			alert("파일은 최대 5개까지만 첨부 가능합니다.");
			$cnt.text(files.length);
			return;
		}
		
//		미리보기		
		for(let i = 0; i < files.length; i++){
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
		
	// 첨부파일 삭제하기
	$('.img-cancel-btn').on('click', function(){
	// 삭제버튼 클릭이벤트 출력으로 확인
		console.log('삭제!!!');
		
		$(this).parent().parent().remove();
		
		let fileName = $(this).data('name');
		
		let dt = new DataTransfer();		
		
		for(let i = 0; i < files.length; i++){
			if(files[i].name !== fileName){
				dt.items.add(files[i]);	
			}
		}
		
		files = dt.files;
		
		console.log(files);
		$cnt.text(files.length);
	});

});

// 글쓰기 작성 취소 이벤트처리하기
$('.cancel-btn').on('click', () => {
	window.location.href = '/board/boardListOk.bo';
});

















