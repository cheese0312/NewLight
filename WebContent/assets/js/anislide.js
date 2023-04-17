let $slideBox = $(".ani-box-slide");
let $slideImgs = $(".ani-view");

// 슬라이드 박스 너비를 따로 변수에 저장한다.
let sildeWidth = 700;

// 슬라이드 이미지 수를 따로 변수에 저장한다.
let slideCnt = $slideImgs.length;

// 슬라이드 이미지 인덱스를 변수에 저장한다.
let currentIdx = 0;

console.log(slideCnt);
console.log(currentIdx);
checkEnd();

$(".next").on("click", function () {
  currentIdx++;
  $slideBox.css("transition", "0.5s");
  $slideBox.css("left", -(currentIdx * sildeWidth));
	checkEnd();
});

$(".prev").on("click", function () {
  console.log("prev");

  currentIdx--;
  $slideBox.css("transition", "0.5s");
  $slideBox.css("left", -(currentIdx * sildeWidth));
checkEnd();
});

function checkEnd() {
  if (currentIdx <= 0) {
    $(".prev").hide();
  } else {
    $(".prev").show();
  }

  if (currentIdx >= slideCnt - 1) {
    $(".next").hide();
  } else {
    $(".next").show();
  }
}
