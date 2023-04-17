/**
 * 
 */
console.log(window.location.search);
console.log(location.search);

let queryString = location.search;

//URLSearchParams 객체는 쿼리스트링을 해석해준다.
let urlParams = new URLSearchParams(queryString);

let result = urlParams.get('result');
let result2 = urlParams.get('result2');

if(result == 'false'){
	alert('아이디와 비밀번호를 확인해주세요.');
} 
else if(result2 == 'false'){
	alert('활동 불가능한 상태입니다.');
}