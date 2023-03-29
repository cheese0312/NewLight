/**
 * 
 */
let $fileInput = $('#file');
let $fileList = $('.file-list');
let $cnt = $('.cnt');

console.log($fileInput);

// 첨부파일 미리보기 처리
$fileInput.on('change', function () {
   console.log('change!!!');
   
   let files = this.files;
   console.log(files);

	$fileList.html('');  
   
   for(let i=0; i<files.length; i++){
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
      
   }
   
});