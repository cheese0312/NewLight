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
</head>
<body>
	<!-- 헤더 -->
    <%@include file ="/app/header2.jsp" %>
	<br />
	<br />
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
						<c:when test="${not empty communityList }">
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
	<footer> 
	    <br>
	    <br>
	    <br>
	    <br>
	    <br>
		<hr>
	</footer>
</body>
</html>