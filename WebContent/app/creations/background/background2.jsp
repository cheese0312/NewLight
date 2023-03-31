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
	<form action="${pageContext.request.contextPath}/creations/background2.ct" method="post">
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
    
    <c:choose>
    	<c:when test="${not empty creationBackgroundList }">
    		<c:forEach var="background2" items="${creationBackgroundList }">
									<div class="creations-img">
										<img src="../img/10_징검다리를_하나_둘.jpg">
										<div class="sub-title">
											<a href="#"> <c:out value="${background2.getCretaionTitle() }"/> </a>
										</div>
										<div class="sub-author">
											<img
												src="${pageContext.request.contextPath}/assets/images/member/—Pngtree—vector business men icon_4186858.png">
											<a href="#"><c:out value="${background2.getMemberNickname() }"/></a>
										</div>
										<div class="creations-sub">
											<img
												src="${pageContext.request.contextPath}/assets/images/member/free-icon-hearts-138533.png"
												class="likes"> <img
												src="${pageContext.request.contextPath}/assets/images/member/pngegg.png"
												class="comment">
										</div>
									</div>
									</c:forEach>
								</c:when>
								
<%-- 								<c:otherwise>
									
								</c:otherwise> --%>
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