<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notification/notificationList.css">
<title>공지사항</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
	
</head>
</head>
<body>
    <%@include file ="/app/header.jsp" %> 
<br/>
<hr/>
<br/>
<form action="${pageContext.request.contextPath}/notification/notificationListOk.nc" method="post">
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



<c:choose>
 <c:when test="${not empty notificationList }">
   <c:forEach var="notification" items="${notificationList}">
   <div class="other">
    <h3> 
    <a href = "${pageContext.request.contextPath}/notification/notificationReadOk.nc?notificationNumber=${notification.getNotificationNumber()}">
    <c:out value="${notification.getNotificationTitle()}"/> 
    </a>
    </h3>
    <h4> <c:out value="${notification.getNotificationWriteDay()}"/> </h4>
</div>
   </c:forEach>
 </c:when>
 <c:otherwise>
  <div class="other2" colspan="2" align="center">등록된 공지사항이 없습니다.</div>
</c:otherwise>
</c:choose>
<br/>
<!--  <div class="other">
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
</div> -->


</div> 
<br/>
<!-- <div class="box1"></div> -->
		<div class="pagination">
					<ul>
						<!-- ========== 페이징 처리 예시 ============ -->
						<c:if test="${prev}">
							<li><a
								href="${pageContext.request.contextPath}/notification/notificationListOk.nc?page=${startPage-1}"
								class="prev">&lt;</a></li>
						</c:if>
						
						<c:forEach var="i" begin="${startPage}" end="${endPage}">
						
						<c:choose>
							<c:when test="${i == page}">
						<li><a href="${pageContext.request.contextPath}/notification/notificationListOk.nc?page=${i}" class="active">
								<c:out value="${i}"/>
								</a></li>
							</c:when>
							<c:otherwise>
							<li>
							<a href="${pageContext.request.contextPath}/notification/notificationListOk.nc?page=${i}">
							<c:out value="${i}"/>
							</a></li>
							</c:otherwise>
						</c:choose>
						</c:forEach>

						<c:if test="${next}">
							<li><a
								href="${pageContext.request.contextPath}/notification/notificationListOk.nc?page=${endPage+1}"
								class="next">&gt;</a></li>
						</c:if>

						<!-- ========== /페이징 처리 예시 ============ -->
					</ul>
					     <div class="box-btn"></div>
					     <c:if test="${sessionScope.memberId == 'admin' }">
    <div class="write-btn">
        <a href="${pageContext.request.contextPath}/notification/notificationWrite.nc" class="login2-btn">글쓰기</a>
    </div>
    </c:if>
				</div>
</section>
</form>
<%@include file="/app/footer.jsp"%>
</body>
</html>