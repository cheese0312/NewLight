<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2차 창작물 - 트레이싱</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/creations/tracing.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header/header.css">
</head>
<body>
    <!-- 헤더 -->
    <%@include file ="/app/header.jsp" %>
<hr>
    <form action="${pageContext.request.contextPath}/creations/tracing2.ct" method="post">
 <main>
    <div class="main">
      <div class="main-box-bin"></div>
    <div class="creations-main">
    <div class="creations">
      <div class="creations-bin"></div>
      <div class="creations-title">
        <h2> 2차 창작물 - 트레이싱 </h2>
       </div>
    <div class="creations-btn">
      <a href="#">작품 올리기</a>
    </div>
  </div>
  <div class="creations-main2">
    <section>
    <c:choose>
    	<c:when test="${not empty creationTracingList }">
    		<c:forEach var="tracing2" items="${creationTracingList}">
    			<div class="img">
    <div class="creations-img">
      <img src="../img/6bbe39de-072f-49c9-b8c8-83f7b8214f3d.jpg" class="img-1">
      <div class="sub-title">
        <a href="#">에덴 동산을 향하여</a>
      </div>
      <div class="sub-author">
        <img src="../img/—Pngtree—vector business men icon_4186858.png">
        <a href="#">작가 이름</a>
      </div>
      <div class="creaions-sub">
      <img src="../img/free-icon-hearts-138533.png" class="likes">
      <img src="../img/pngegg.png" class="comment">
    </div>
    </div>
    </div>
    		</c:forEach>
    	
    	</c:when>
    	<c:otherwise>
    		<h3>... 작품이 없어요.. 😂</h3> 
    	</c:otherwise>
    </c:choose>
  </section>
  </div>
</div>
</div>
</main>
</form>
    <!-- 푸터 -->
    <%@include file ="/app/footer.jsp" %>
</body>
</html>