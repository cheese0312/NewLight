let $slideBox = $(".ani-box-slide");
let $slideImgs = $(".ani-view");

// 슬라이드 박스 너비를 따로 변수에 저장한다.
let sildeWidth = 800;

// 슬라이드 이미지 수를 따로 변수에 저장한다.
let slideCnt = $slideImgs.lenght;

// 슬라이드 이미지 인덱스를 변수에 저장한다.
let currentIdx = 0;

console.log(slideCnt);

checkEnd();

$(".next").on("click", function () {
  currentIdx++;
  $slideBox.css("transition", "0.5s");
  $slideBox.css("left", -(currentIdx * sildeWidth));
});

$(".prev").on("click", function () {
  console.log("prev");

  currentIdx--;
  $slideBox.css("transition", "0.5s");
  $slideBox.css("left", -(currentIdx * sildeWidth));
});

function checkEnd() {
  if (currentIdx <= 0) {
    $(".prev").css("dispaly", "none");
  } else {
    $(".prev").css("display", "block");
  }

  if (currentIdx >= slideCnt - 1) {
    $(".next").css("display", "none");
  } else {
    $(".next").css("display", "block");
  }
}
