$(".pfp-btn").on("click", function () {
  $(".pfp-input").trigger("click");
});

$(".pfp-input").on("change", function(){
	console.log(this.files[0]);
	
	console.dir(URL.createObjectURL(this.files[0]))
	
	let src = URL.createObjectURL(this.files[0]);
	$(".info-people-img").attr('src', src);
});