<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2차 창작물 - 카톡 테마</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/creations/theme.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header/header.css">
</head>
<body>
    <!-- 헤더 -->
    <%@include file ="/app/header.jsp" %>
<hr>
    <form action="${pageContext.request.contextPath}/creations/theme2.ct" method="post">
    <!-- 메인 요소 -->
  <main>
    <div class="main">
      <div class="main-box-bin"></div>
    <div class="creations-main">
    <div class="creations">
      <div class="creations-bin"></div>
      <div class="creations-title">
        <h2> 2차 창작물 - 카톡테마 </h2>
       </div>
    <div class="creations-btn">
      <a href="#">작품 올리기</a>
    </div>
  </div>
  
  <!-- 창작물 메인 요소 -->
  <div class="creations-main2">
    <section>

						<c:choose>
							<c:when test="${not empty creationTheme2List }">
								<c:forEach var="theme2" items="${creationTheme2List }">
									<div class="img">
										<div class="creations-img">
											<img src="../img/IMG_0398.png" class="img-1">
											<div class="sub-title">
												<a href="#">징검다리를 하나, 둘</a>
											</div>
											<div class="sub-author">
												<img
													src="${pageContext.request.contextPath}/assets/images/member/—Pngtree—vector business men icon_4186858.png">
												<a href="#"> <c:out value="${theme2.getMemberNickname() }"></c:out> </a>
											</div>
											<div class="creations-sub">
											<img
												src="${pageContext.request.contextPath}/assets/images/member/free-icon-hearts-138533.png"
												class="likes"> <img
												src="${pageContext.request.contextPath}/assets/images/member/pngegg.png"
												class="comment">
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