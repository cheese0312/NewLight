<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/member/joinStyle2.css">
	<script type="text/javascript">
// <![CDATA[
var colour="random"; // in addition to "random" can be set to any valid colour eg "#f0f" or "red"
var sparkles=50;

/****************************
*  Tinkerbell Magic Sparkle *
*(c)2005-13 mf2fm web-design*
*  http://www.mf2fm.com/rv  *
* DON'T EDIT BELOW THIS BOX *
****************************/
var x=ox=400;
var y=oy=300;
var swide=800;
var shigh=600;
var sleft=sdown=0;
var tiny=new Array();
var star=new Array();
var starv=new Array();
var starx=new Array();
var stary=new Array();
var tinyx=new Array();
var tinyy=new Array();
var tinyv=new Array();

window.onload=function() { if (document.getElementById) {
  var i, rats, rlef, rdow;
  for (var i=0; i<sparkles; i++) {
    var rats=createDiv(3, 3);
    rats.style.visibility="hidden";
    rats.style.zIndex="999";
    document.body.appendChild(tiny[i]=rats);
    starv[i]=0;
    tinyv[i]=0;
    var rats=createDiv(5, 5);
    rats.style.backgroundColor="transparent";
    rats.style.visibility="hidden";
    rats.style.zIndex="999";
    var rlef=createDiv(1, 5);
    var rdow=createDiv(5, 1);
    rats.appendChild(rlef);
    rats.appendChild(rdow);
    rlef.style.top="2px";
    rlef.style.left="0px";
    rdow.style.top="0px";
    rdow.style.left="2px";
    document.body.appendChild(star[i]=rats);
  }
  set_width();
  sparkle();
}}

function sparkle() {
  var c;
  if (Math.abs(x-ox)>1 || Math.abs(y-oy)>1) {
    ox=x;
    oy=y;
    for (c=0; c<sparkles; c++) if (!starv[c]) {
      star[c].style.left=(starx[c]=x)+"px";
      star[c].style.top=(stary[c]=y+1)+"px";
      star[c].style.clip="rect(0px, 5px, 5px, 0px)";
      star[c].childNodes[0].style.backgroundColor=star[c].childNodes[1].style.backgroundColor=(colour=="random")?newColour():colour;
      star[c].style.visibility="visible";
      starv[c]=50;
      break;
    }
  }
  for (c=0; c<sparkles; c++) {
    if (starv[c]) update_star(c);
    if (tinyv[c]) update_tiny(c);
  }
  setTimeout("sparkle()", 40);
}

function update_star(i) {
  if (--starv[i]==25) star[i].style.clip="rect(1px, 4px, 4px, 1px)";
  if (starv[i]) {
    stary[i]+=1+Math.random()*3;
    starx[i]+=(i%5-2)/5;
    if (stary[i]<shigh+sdown) {
      star[i].style.top=stary[i]+"px";
      star[i].style.left=starx[i]+"px";
    }
    else {
      star[i].style.visibility="hidden";
      starv[i]=0;
      return;
    }
  }
  else {
    tinyv[i]=50;
    tiny[i].style.top=(tinyy[i]=stary[i])+"px";
    tiny[i].style.left=(tinyx[i]=starx[i])+"px";
    tiny[i].style.width="2px";
    tiny[i].style.height="2px";
    tiny[i].style.backgroundColor=star[i].childNodes[0].style.backgroundColor;
    star[i].style.visibility="hidden";
    tiny[i].style.visibility="visible"
  }
}

function update_tiny(i) {
  if (--tinyv[i]==25) {
    tiny[i].style.width="1px";
    tiny[i].style.height="1px";
  }
  if (tinyv[i]) {
    tinyy[i]+=1+Math.random()*3;
    tinyx[i]+=(i%5-2)/5;
    if (tinyy[i]<shigh+sdown) {
      tiny[i].style.top=tinyy[i]+"px";
      tiny[i].style.left=tinyx[i]+"px";
    }
    else {
      tiny[i].style.visibility="hidden";
      tinyv[i]=0;
      return;
    }
  }
  else tiny[i].style.visibility="hidden";
}

document.onmousemove=mouse;
function mouse(e) {
  if (e) {
    y=e.pageY;
    x=e.pageX;
  }
  else {
    set_scroll();
    y=event.y+sdown;
    x=event.x+sleft;
  }
}

window.onscroll=set_scroll;
function set_scroll() {
  if (typeof(self.pageYOffset)=='number') {
    sdown=self.pageYOffset;
    sleft=self.pageXOffset;
  }
  else if (document.body && (document.body.scrollTop || document.body.scrollLeft)) {
    sdown=document.body.scrollTop;
    sleft=document.body.scrollLeft;
  }
  else if (document.documentElement && (document.documentElement.scrollTop || document.documentElement.scrollLeft)) {
    sleft=document.documentElement.scrollLeft;
    sdown=document.documentElement.scrollTop;
  }
  else {
    sdown=0;
    sleft=0;
  }
}

window.onresize=set_width;
function set_width() {
  var sw_min=999999;
  var sh_min=999999;
  if (document.documentElement && document.documentElement.clientWidth) {
    if (document.documentElement.clientWidth>0) sw_min=document.documentElement.clientWidth;
    if (document.documentElement.clientHeight>0) sh_min=document.documentElement.clientHeight;
  }
  if (typeof(self.innerWidth)=='number' && self.innerWidth) {
    if (self.innerWidth>0 && self.innerWidth<sw_min) sw_min=self.innerWidth;
    if (self.innerHeight>0 && self.innerHeight<sh_min) sh_min=self.innerHeight;
  }
  if (document.body.clientWidth) {
    if (document.body.clientWidth>0 && document.body.clientWidth<sw_min) sw_min=document.body.clientWidth;
    if (document.body.clientHeight>0 && document.body.clientHeight<sh_min) sh_min=document.body.clientHeight;
  }
  if (sw_min==999999 || sh_min==999999) {
    sw_min=800;
    sh_min=600;
  }
  swide=sw_min;
  shigh=sh_min;
}

function createDiv(height, width) {
  var div=document.createElement("div");
  div.style.position="absolute";
  div.style.height=height+"px";
  div.style.width=width+"px";
  div.style.overflow="hidden";
  return (div);
}

function newColour() {
  var c=new Array();
  c[0]=255;
  c[1]=Math.floor(Math.random()*256);
  c[2]=Math.floor(Math.random()*(256-c[1]/2));
  c.sort(function(){return (0.5 - Math.random());});
  return ("rgb("+c[0]+", "+c[1]+", "+c[2]+")");
}
// ]]>
</script>
</head>
<body>
	<!-- 헤더 -->
	<%@include file="/app/header.jsp"%>
	<main>
		<form action="${pageContext.request.contextPath}/member/joinOk.me" method=post enctype="multipart/form-data">

			<div class="main">
				<table width="600px">
					<tr>
						<td><span class="join"></span><span></span></td>
					</tr>
				</table>

				<table width="600px" class="table01">
					<colgroup>
						<col width="150">
						<col width="*">
					</colgroup>
 					<tr>
						<td class="tle">내 프로필</td>
						<td class="cont" id="myPfp">
      					<input class="ed upload-name" placeholder="첨부파일">
						<label for="file" class="btn-upload">프로필 선택</label>
					      <input type="file" id="file" name="memberFile" accept=".jpg, .jpeg, .png" >
						</td>
					</tr>
					<tr>
						<td class="tle">이름</td>
						<td class="cont"><input type="text" name="memberName" placeholder="이름을 입력하세요"
							class="ed" required> <span class="cmt">* 공백없이 한글만 입력 가능</span></td>
					</tr>
					<tr>
						<td class="tle">핸드폰 번호</td>
						<td class="cont"><input type="text" name="memberPhoneNumber" placeholder="핸드폰번호을 입력하세요"
							class="ed" required> <span class="cmt">* 공백없이 숫자만 입력 가능</span></td>
					</tr>
					<tr>
						<td class="tle">아이디</td>
						<td class="cont">
							<div class="col-md-4">
								<input type="text" maxlength=20 size=20 id="id" name="memberId" class="ed" required
									placeholder="ID를 입력하세요" />
								<!-- <input type="button" value="ID중복확인" id="idCheck()"></td> -->
								<span class="check-msg" id="check-id-msg"></span>
							</div> <!-- <input type="hidden" id="flag" name="flag" value="false"> -->
						</td>
					</tr>
					<tr>
						<td class="tle">비밀번호</td>
						<td class="cont">
						<input class=ed type=password name="memberPassword" id="password"
							size=20 maxlength="20" required placeholder="비밀번호를 입력하세요">
							<span class="cmt">* 영어, 숫자, 특수문자를 포함한 8글자 이상</span>
							<span class="check-msg" id="check-pw-msg"></span>
							</td>
					</tr>
					<tr>
						<td class="tle">닉네임</td>
						<td class="cont"><input class="ed" type="text" id="nickname"
							name="memberNickname" size="30" maxlength="50"
							placeholder="활동 할 닉네임을 입력하세요">
							<span class="check-msg2" id="check-nickname-msg">
							</td>
					</tr>
					<tr>
						<td class="tle">한 줄 소개</td>
						<td class="cont"><input class="ed" type="text"
							name="memberComment" size="30" maxlength="50"
							placeholder="한 줄 소개를 입력해 주세요"></td>
					</tr>
					<tr>
						<td class="tle">E-mail</td>
						<td class="cont"><input class="ed" type="text" id="reg_mb_email" name="memberEmail"
							size=38 maxlength=100 required placeholder="이메일을 입력하세요">
							<span id='msg_mb_email'></span></td>
					</tr>
					<tr>
						<td class="tle">생년월일</td>
						<td class="cont">
						<input class="ed" type="text" name="memberBirth" size="30" maxlenght=100 placeholder="생년월일을 입력하세요"> 
						</td>
					</tr>
					<tr>
						<td class="tle">주소</td>
						<td class="cont">
							<table width="330" class="nobd">
<!-- 								<tr>
									<td height="25" class="nobd"><input class=ed type=text
										id="zip" name="zip" required></td>
								</tr> -->
								<tr>
									<td height="25" colspan="2" class="nobd"><input class=ed
										type=text name="memberAddress1" id="addr1" size=60 required></td>
								</tr>
								<tr>
									<td height="25" colspan="2" class="nobd"><input class=ed
										type=text name="memberAddress2" id='addr2' size=60 required></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class="tle">웹 사이트</td>
						<td class="cont"><input class="ed" id="reg_mb_web" name="memberWebsite"
							type="text" size="38" maxlength="100"
							placeholder="공유할 웹 사이트 주소를 넣어주세요"></td>
					</tr>
				</table>

				<div class="mg_t20">
					<div class="join-btn"></div>
					<input type="button" class="myButton" value="회원가입">
				</div>
			</div>
		</form>
	</main>
	<!-- 푸터 -->
	<%@include file="/app/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/member/join.js"></script>  
</body>
</html>