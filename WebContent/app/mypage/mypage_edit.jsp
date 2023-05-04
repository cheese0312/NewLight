<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>information</title>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/member/information.css" />
<!--    <script type="text/javascript">
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
 -->
</head>
<body>
   <%@include file="/app/header.jsp"%>
   <form
      action="${pageContext.request.contextPath}/mypage/mypageEditOk.me"
      method="post" enctype="multipart/form-data">
      <section>
         <div class="info-container">
            <div class="info-menu">
               <form
                  action="${pageContext.request.contextPath}/mypage/mypageEdit.me"
                  method="post">
                  <h4>회원 정보 수정</h4>
                  <fieldset>
                     <div class="info-people info">
                     <c:if test="${not empty memberDTO.getMemberPfp()}">
                        <img
                           src="${pageContext.request.contextPath}/userProfile/${memberDTO.getMemberPfp()}"
                           alt="" class="info-people-img" value="${memberDTO.getMemberPfp()}"/>
                           </c:if>
                           <c:if test="${empty memberDTO.getMemberPfp()}">
                           <img src="${pageContext.request.contextPath}/assets/img/member/people.png"
                     class="info-people-img">
                           </c:if>
                        <button type="button" class="pfp-btn">사진 변경</button>
                        <input type="file" class="pfp-input" name="memberPfp">
                     
                     </div>
                     <div class="info-name info">
                        <label for="id-change">이름 </label> <input type="text"
                           name="memberName" id="id-chnage" required
                           value="${memberDTO.getMemberName()}" readonly />
                           <span></span>
                     </div>
                     <div class="info-id info">
                        <label for="id-change">아이디 </label> <input type="text"
                           name="memberId" id="id-chnage" required
                           value="${memberDTO.getMemberId()}" readonly />
                           <span></span>
                     </div>
                     <div class="info-pw">
                        <label for="pw-change">비밀번호 </label> <input type="password"
                           name="memberPassword" id="pw-change" required  value="${memberDTO.getMemberPassword()}"/> 
                           <span></span>
                           <div class="info-pw-sub">
                           <span
                           class="check-msg" id="check-pw-msg"></span>
                           </div>
                     </div>
                     
                     <div class="info-phone info">
                        <label for="id-change">핸드폰 번호 </label> <input type="text"
                           name="memberPhoneNumber" id="id-chnage" required value="${memberDTO.getMemberPhoneNumber()}"/>
                           <span></span>
                     </div>
                     <div class="info-nickname info">
                        <label for="nickname-change">닉네임
                        <span class="count">(<span class="nickname-count">0</span>/300)</span> 
                         </label> <input
                           type="text" name="memberNickname" id="nickname-change" required value="${memberDTO.getMemberNickname() }"/>
                        <span></span>
                        <div class="info-pw-sub">
                        <span class="check-msg" id="check-nickname-msg"></span>
                        </div>
                     </div>
                     <div class="info-selfy info">
                        <label for="selfy-change">
                        한 줄 소개
                        <span class="count">(<span class="selfy-count">0</span>/800)</span>
                        </label> <input
                           type="text" name="memberComment" id="selfy-change" required value="${memberDTO.getMemberComment()}"/>
                           <span></span>
                     </div>
                     <div class="info-address1 info">
                        <label for="address1-change">주소</label> <input type="text"
                           name="memberAddress1" id="address1-change" required  value="${memberDTO.getMemberAddress1()}"/>
                           <span></span>
                     </div>
                     <div class="info-address2 info">
                        <label for="address2-change">상세주소</label> <input type="text"
                           name="memberAddress2" id="address2-change" required value="${memberDTO.getMemberAddress2()}"/>
                           <span></span>
                     </div>
                     <div class="info-email info">
                        <label for="email-change">이메일</label> <input type="text"
                           name="memberEmail" id="email-change" required value="${memberDTO.getMemberEmail()}"/>
                           <span></span>
                     </div>
                     <div class="info-website info">
                        <label for="website-change">웹 사이트</label> <input type="text"
                           name="memberWebsite" id="web-change" placeholder="http://"
                           required value="${memberDTO.getMemberWebsite()}"/>
                           <span></span>
                     </div>
                     <div class="user-delete">
                        <a
                           href="${pageContext.request.contextPath}/member/memberDeleteOk.me"
                           class="userDelete">*회원 탈퇴하기</a>
                     </div>
                     <div class="cencel-save">
                        <button>
                           <a
                              href="${pageContext.request.contextPath}/mypage/creationsOk.mp">
                              취소</a>
                        </button>
                        <button>저장</button>
                     </div>
                  </fieldset>
            </div>
         </div>
      </section>
   </form>
       <%@include file ="/app/footer.jsp" %>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/assets/js/member/checkNickname.js"></script>
   <script
      src="${pageContext.request.contextPath}/assets/js/member/delete.js"></script>
   <script
      src="${pageContext.request.contextPath}/assets/js/member/information.js"></script>
</body>
</html>