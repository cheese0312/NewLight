<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>손글씨 배경화면</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/creations/handwriting-creations1.css" />
    <script type="text/javascript">
// <![CDATA[
var speed=25; // speed of animation, lower is faster
var interval=0.25; // seconds between entry of each letter
var direction="right"; // set to "left" for text to appear from left

/***************************\
* Right Write Text Effect   *
*(c)2003-16 mf2fm web-design*
*  http://www.mf2fm.com/rv  *
* DON'T EDIT BELOW THIS BOX *
\***************************/
var swide, shigh;
var rwlft=new Array();

if (typeof('addRVLoadEvent')!='function') function addRVLoadEvent(funky) {
  var oldonload=window.onload;
  if (typeof(oldonload)!='function') window.onload=funky;
  else window.onload=function() {
    if (oldonload) oldonload();
    funky();
  }
}

addRVLoadEvent(rightwrite);

function rightwrite() { if (document.getElementById) {
  var i, rwli, rwtxt, rwrit;
  set_width();
  rwrit=document.getElementById("rightwrite");
  rwrit.style.position="relative";
  rwtxt=rwrit.firstChild.nodeValue;
  while (rwrit.childNodes.length) rwrit.removeChild(rwrit.childNodes[0]);
  for (i=0; i<rwtxt.length; i++) {
    rwli=document.createElement("span");
    rwli.setAttribute("id", "rwr"+i);
    rwli.style.position="relative";
    rwli.style.visibility="hidden";
    rwli.appendChild(document.createTextNode(rwtxt.charAt(i)));
    rwrit.appendChild(rwli);
  }
  for (i=0; i<rwtxt.length; i++) {
    rwlft[i]=(direction=="right")?swide-getPageLeft(rwli):-getPageLeft(rwli);
    setTimeout("fly_me("+i+")", 1000*interval*((direction=="right")?i:rwtxt.length-i));
  }
}}

function getPageLeft(el) {
  var x=0;
  do { x+=el.offsetLeft }
  while ((el=el.offsetParent)!=null) ;
  return x;
}

window.onresize=set_width;
function set_width() {
  var sw_min=999999;
  var sh_min=999999;
  if (document.documentElement && document.documentElement.clientWidth) {
    if (document.documentElement.clientWidth>0) sw_min=document.documentElement.clientWidth;
    if (document.documentElement.clientHeight>0) sh_min=document.documentElement.clientHeight;
  }
  else if (typeof(self.innerWidth)=='number' && self.innerWidth) {
    if (self.innerWidth>0 && self.innerWidth<sw_min) sw_min=self.innerWidth;
    if (self.innerHeight>0 && self.innerHeight<sh_min) sh_min=self.innerHeight;
  }
  else if (document.body.clientWidth) {
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

function fly_me(let) {
  var rwme=document.getElementById("rwr"+let);
  if (rwme.style.visibility=="hidden") rwme.style.visibility="visible";
  if (Math.abs(rwlft[let])>0.5) {
    rwme.style.left=Math.floor(rwlft[let])+"px";
    rwlft[let]+=(direction=="left")?1:-1;
    rwlft[let]*=0.98;
    setTimeout("fly_me("+let+")", speed);
  }
  else rwme.style.left="0px";
}
// ]]>
</script>
  </head>
   <%@include file ="/app/header.jsp" %>
  <body>
    <div class="category-create-container">
      <div class="sun">
        <img id="cat" src="/assets/images/creations/hand/화면_캡처_2023-03-20_191450-removebg-preview (1).png" alt="" />(Font)손글씨 페이지
        입니다:)
      </div>
    <section>
     <div class="creations-btn">
     <a href="${pageContext.request.contextPath}/app/main/upload.jsp" id="upup">작품 올리기</a>
     </div>
        <ul class="create-list">
          <div class="create-card">
            <div class="create-logo">
              <a href="${pageContext.request.contextPath}/app/creations/handwrite/handwrting-in.jsp">
                <img src="/assets/images/creations/hand/1-removebg-preview.png" alt="" class="create-card-img" />
              </a>
              <div class="create-title">
                <h4>제목</h4>
                <div class="create-people">
                  <a href="#"> <img src="/assets/img/people.png" alt="" class="create-people-img" />작가 이름</a>
                </div>
              </div>
              <div class="icon-box">
                <a href="#" class="a__inline-block">
                  <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
                </a>
                <a href="#" class="a__inline-block">
                  <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
                </a>
              </div>
            </div>
          </div>
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/handwrite/handwrting-in.jsp">
              <img src="/assets/images/creations/hand/2-removebg-preview.png" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png"" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/handwrite/handwrting-in.jsp">
              <img src="/assets/images/creations/hand/3-removebg-preview.png" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png"" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
        </ul>
        <ul class="create-list">
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/handwrite/handwrting-in.jsp">
              <img src="/assets/images/creations/hand/4-removebg-preview.png" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png"" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/handwrite/handwrting-in.jsp">
              <img src="/assets/images/creations/hand/5-removebg-preview.png" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png"" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/handwrite/handwrting-in.jsp">
              <img src="/assets/images/creations/hand/6-removebg-preview.png" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png"" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
        </ul>
        <ul class="create-list">
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/handwrite/handwrting-in.jsp">
              <img src="/assets/images/creations/hand/7-removebg-preview.png" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png"" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/handwrite/handwrting-in.jsp">
              <img src="/assets/images/creations/hand/8-removebg-preview.png" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png"" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/handwrite/handwrting-in.jsp">
              <img src="/assets/images/creations/hand/9-removebg-preview.png" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png"" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
        </ul>
      </div>
    </section>
      <br>
    <br>
    <br>

    <%@include file ="/app/footer.jsp" %>
  <!-- 푸터 -->

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/member/join.js"></script>  
  </body>
</html>
