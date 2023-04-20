<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>새빛 커뮤니티</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/community/communityList.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<script type="text/javascript">
// <![CDATA[
var colours=new Array("#a6f", "#60f", "#60f", "#a6f", "#ccc"); // colours for top, right, bottom and left borders and background of bubbles
var bubbles=66; // maximum number of bubbles on screen
var over_or_under="over"; // set to "over" for bubbles to always be on top, or "under" to allow them to float behind other objects

/****************************
* JavaScript Bubble Cursor  *
*(c)2010-13 mf2fm web-design*
*  http://www.mf2fm.com/rv  *
* DON'T EDIT BELOW THIS BOX *
****************************/
var x=ox=400;
var y=oy=300;
var swide=800;
var shigh=600;
var sleft=sdown=0;
var bubb=new Array();
var bubbx=new Array();
var bubby=new Array();
var bubbs=new Array();
var sploosh=false;

function addLoadEvent(funky) {
  var oldonload=window.onload;
  if (typeof(oldonload)!='function') window.onload=funky;
  else window.onload=function() {
    if (oldonload) oldonload();
    funky();
  }
}

addLoadEvent(buble);

function buble() { if (document.getElementById) {
  var i, rats, div;
  for (i=0; i<bubbles; i++) {
    rats=createDiv("3px", "3px");
    rats.style.visibility="hidden";
	rats.style.zIndex=(over_or_under=="over")?"1001":"0";

    div=createDiv("auto", "auto");
    rats.appendChild(div);
    div=div.style;
    div.top="1px";
    div.left="0px";
    div.bottom="1px";
    div.right="0px";
    div.borderLeft="1px solid "+colours[3];
    div.borderRight="1px solid "+colours[1];

    div=createDiv("auto", "auto");
    rats.appendChild(div);
    div=div.style;
    div.top="0px";
    div.left="1px";
    div.right="1px";
    div.bottom="0px"
    div.borderTop="1px solid "+colours[0];
    div.borderBottom="1px solid "+colours[2];

    div=createDiv("auto", "auto");
    rats.appendChild(div);
    div=div.style;
    div.left="1px";
    div.right="1px";
    div.bottom="1px";
    div.top="1px";
    div.backgroundColor=colours[4];
    if (navigator.appName=="Microsoft Internet Explorer") div.filter="alpha(opacity=50)";
    else div.opacity=0.5;
    document.body.appendChild(rats);
    bubb[i]=rats.style;
  }
  set_scroll();
  set_width();
  bubble();
}}

function bubble() {
  var c;
  if (Math.abs(x-ox)>1 || Math.abs(y-oy)>1) {
    ox=x;
    oy=y;
    for (c=0; c<bubbles; c++) if (!bubby[c]) {
      bubb[c].left=(bubbx[c]=x)+"px";
      bubb[c].top=(bubby[c]=y-3)+"px";
      bubb[c].width="3px";
      bubb[c].height="3px"
      bubb[c].visibility="visible";
      bubbs[c]=3;
      break;
    }
  }
  for (c=0; c<bubbles; c++) if (bubby[c]) update_bubb(c);
  setTimeout("bubble()", 40);
}

document.onmousedown=splash;
document.onmouseup=function(){clearTimeout(sploosh);};

function splash() {
  ox=-1;
  oy=-1;
  sploosh=setTimeout('splash()', 100);
}

function update_bubb(i) {
  if (bubby[i]) {
    bubby[i]-=bubbs[i]/2+i%2;
    bubbx[i]+=(i%5-2)/5;
    if (bubby[i]>sdown && bubbx[i]>sleft && bubbx[i]<sleft+swide+bubbs[i]) {
	  if (Math.random()<bubbs[i]/shigh*2 && bubbs[i]++<8) {
		bubb[i].width=bubbs[i]+"px";
		bubb[i].height=bubbs[i]+"px";
	  }
      bubb[i].top=bubby[i]+"px";
      bubb[i].left=bubbx[i]+"px";
    }
    else {
      bubb[i].visibility="hidden";
      bubby[i]=0;
      return;
    }
  }
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

function createDiv(height, width) {
  var div=document.createElement("div");
  div.style.position="absolute";
  div.style.height=height;
  div.style.width=width;
  div.style.overflow="hidden";
  div.style.backgroundColor="transparent";
  return (div);
}
// ]]>
</script>
</head>
<body>
	<!-- 헤더 -->
    <%@include file ="/app/header2.jsp" %>

	<form
		action="${pageContext.request.contextPath}/community/communityListOk.cm" method="post">
		<section>
		
			<div class="big-box">
				<div class="menu">
					<h1>작성자</h1>
					<h1>제목</h1>
					<h1>댓글</h1>
					<h1>날짜</h1>
					<h1>조회수</h1>
				</div>
				<div class="small-box">

					<c:choose>
						<c:when test="${not empty communityList}">
							<c:forEach var="community" items="${communityList}">
								<div class="table">
									<div class="name">
										<h1>
											<c:out value="${community.getMemberNickName()}" />
										</h1>
									</div>
									<div class="title">
										<h1>
										<a href = "${pageContext.request.contextPath}/community/communityReadOk.cm?communityNumber=${community.getCommunityNumber()}">
											<c:out value="${community.getCommunityTitle()}" />
											</a>
										</h1>
									</div>
									<div class="comment">
										<h1>
											
										 <c:out value="${community.getCommentCount()}" /> 
										</h1>
									</div>
									<div class="date">
										<h1>
											<c:out value="${community.getCommunityWriteDay()}" />
										</h1>
									</div>
									<div class="cnt">
										<h1>
											<c:out value="${community.getCommunityReadCount()}" />
										</h1>
									</div>
								</div>

							</c:forEach>
						</c:when>

						<c:otherwise>
							<div class="table2" colspan="5" align="center">등록된 게시물이
								없습니다.</div>
						</c:otherwise>
					</c:choose>

				</div>

			</div>
		</section>
				<div class="pagination">
					<ul>
						<!-- ========== 페이징 처리 예시 ============ -->
						<c:if test="${prev}">
							<li><a
								href="${pageContext.request.contextPath}/community/communityListOk.cm?page=${startPage-1}"
								class="prev">&lt;</a></li>
						</c:if>
						
						<c:forEach var="i" begin="${startPage}" end="${endPage}">
						
						<c:choose>
							<c:when test="${i == page}">
						<li><a href="${pageContext.request.contextPath}/community/communityListOk.cm?page=${i}" class="active">
								<c:out value="${i}"/>
								</a></li>
							</c:when>
							<c:otherwise>
							<li>
							<a href="${pageContext.request.contextPath}/community/communityListOk.cm?page=${i}">
							<c:out value="${i}"/>
							</a></li>
							</c:otherwise>
						</c:choose>
						</c:forEach>

						<c:if test="${next}">
							<li><a
								href="${pageContext.request.contextPath}/community/communityListOk.cm?page=${endPage+1}"
								class="next">&gt;</a></li>
						</c:if>

						<!-- ========== /페이징 처리 예시 ============ -->
					</ul>
				</div>
		
	</form>
	<br>
	<br>
	<br>
	<br>
	<br>
<%@include file ="/app/footer.jsp" %>
</body>
</html>