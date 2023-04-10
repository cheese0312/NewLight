<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notification/notification.css">
<title>공지사항</title>
</head>
<body>
    <%@include file ="/app/header.jsp" %> 
<br/>
<hr/>
<br/>
<section>
    <br/>
   
    <div class="largetitle"><h1>공지사항</h1>
    </div>
    <div class="box"></div>
<br/>
<br/>
<br/>

<div class="grap">

<div class="first">
    <h1>제목</h1>
    <h2>공지일</h2>
</div>

<br/>
<div class="other">
    <h3>서비스 업데이트 중단 안내</h3>
    <h4>2023.03.18</h4>
</div>
<br/>
<div class="other">
    <h3>서비스 변경 안내</h3>
    <h4>2023.03.18</h4>
</div>
<br/>
<div class="other">
    <h3>새 빛 '서비스 이용약관' 및 '개인정보처리방침' 변경 안내</h3>
    <h4>2023.03.18</h4>
</div>
<br/>
<div class="other">
    <h3>새 빛 '개인정보 처리 방침' 변경 안내</h3>
    <h4>2023.03.18</h4>
</div>
<br/>
<div class="other">
    <h3>서비스 업데이트 중단 안내</h3>
    <h4>2023.03.18</h4>
</div>
<br/>
<div class="other">
    <h3>서비스 업데이트 중단 안내</h3>
    <h4>2023.03.18</h4>
</div>
<br/>
<div class="other">
    <h3>서비스 업데이트 중단 안내</h3>
    <h4>2023.03.18</h4>
</div>
<br/>
<div class="other">
    <h3>서비스 업데이트 중단 안내</h3>
    <h4>2023.03.18</h4>
</div>
<br/>
<div class="other">
    <h3>서비스 업데이트 중단 안내</h3>
    <h4>2023.03.18</h4>
</div>
</div> 
<br/>
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

<footer>

</footer>
</body>
</html>