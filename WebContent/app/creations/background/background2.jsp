<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2차 창작물 - 배경화면</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/creations/bacground.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header/header.css">
</head>
<body>
    <!-- 헤더 -->
    <%@include file ="/app/header.jsp" %>
<hr>
  <main>
    <div class="main">
      <div class="main-box-bin"></div>
    <div class="creations-main">
    <div class="creations">
      <div class="creattions-bin"></div>
     <div class="creations-title">
      <h2> 2차 창작물 - 배경화면 </h2>
     </div>
    <div class="creations-btn">
      <a href="#">작품 올리기</a>
    </div>
  </div>
  <div class="creations-main2">
    <section>
    <div class="img">
    <div class="creaions-img">
      <img src="../img/10_징검다리를_하나_둘.jpg">
      <div class="sub-title">
        <a href="#">징검다리를 하나, 둘</a>
      </div>
      <div class="sub-author">
        <img src="${pageContext.request.contextPath}/assets/images/member/—Pngtree—vector business men icon_4186858.png">
        <a href="#">작가 이름</a>
      </div>
      <div class="creaions-sub">
      <img src="${pageContext.request.contextPath}/assets/images/member/free-icon-hearts-138533.png" class="likes">
      <img src="${pageContext.request.contextPath}/assets/images/member/pngegg.png" class="comment">
      </div>
    </div>
    </div>
    <div class="img">
    <div class="creaions-img">
      <img src="../img/AA36E9FC-FD60-4B94-980B-FCB629A0C315.jpeg">
      <div class="sub-title">
        <a href="#">에덴 동산을 향하여</a>
      </div>
      <div class="sub-author">
        <img src="${pageContext.request.contextPath}/assets/images/member/—Pngtree—vector business men icon_4186858.png">
        <a href="#">작가 이름</a>
      </div>
      <div class="creaions-sub">
      <img src="${pageContext.request.contextPath}/assets/images/member/free-icon-hearts-138533.png" class="likes">
      <img src="${pageContext.request.contextPath}/assets/images/member/pngegg.png" class="comment">
    </div>
    </div>
    </div>
    <div class="img">
    <div class="creaions-img">
      <img src="../img/ADBE82CC-2827-423F-8700-97641FDE75DF.png">
      <div class="sub-title">
        <a href="#">한여름 밤의 어느 날</a>
      </div>
      <div class="sub-author">
        <img src="${pageContext.request.contextPath}/assets/images/member/—Pngtree—vector business men icon_4186858.png">
        <a href="#">작가 이름</a>
      </div>
      <div class="creaions-sub">
      <img src="${pageContext.request.contextPath}/assets/images/member/free-icon-hearts-138533.png" class="likes">
      <img src="${pageContext.request.contextPath}/assets/images/member/pngegg.png" class="comment">
    </div>
    </div>
    </div>
    <div class="img">
    <div class="creaions-img">
      <img src="../img/F87E4ADD-D10D-4939-91BD-AE7D1E2400CB.png">
      <div class="sub-title">
        <a href="#">맑아지고 싶은 하늘</a>
      </div>
      <div class="sub-author">
        <img src="${pageContext.request.contextPath}/assets/images/member/—Pngtree—vector business men icon_4186858.png">
        <a href="#">작가 이름</a>
      </div>
      <div class="creaions-sub">
      <img src="${pageContext.request.contextPath}/assets/images/member/free-icon-hearts-138533.png" class="likes">
      <img src="${pageContext.request.contextPath}/assets/images/member/pngegg.png" class="comment">
    </div>
    </div>
    </div>
    <div class="img">
    <div class="creaions-img">
      <img src="../img/낮.png">
      <div class="sub-title">
        <a href="#">낮</a>
      </div>
      <div class="sub-author">
        <img src="${pageContext.request.contextPath}/assets/images/member/—Pngtree—vector business men icon_4186858.png">
        <a href="#">작가 이름</a>
      </div>
      <div class="creaions-sub">
      <img src="${pageContext.request.contextPath}/assets/images/member/free-icon-hearts-138533.png" class="likes">
      <img src="${pageContext.request.contextPath}/assets/images/member/pngegg.png" class="comment">
    </div>
    </div>
    </div>
  </section>
  </div>
  </section>
</div>

</div>
</main>
    <!-- 푸터 -->
    <%@include file ="/app/footer.jsp" %>
</body>
</html>