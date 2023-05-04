<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Creations</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/creations/pageList3.css">
</head>
<!-- 1차,2차 카톡테마 -->
<body>
	<%@include file="/app/header.jsp"%>
	<hr>
	<!-- 메인 요소 -->
	<form action="" method="post">
	<main>
		<div class="main">
			<div class="main-box-bin"></div>
			<div class="creations-main">
				<div class="creations">
					<div class="creations-bin"></div>
					<div class="creations-title">
						<h2>
							<c:out value="${title}"></c:out>
						</h2>
					</div>
					<div class="creations-btn">
						<a
							href="${pageContext.request.contextPath}/creations/CreationWrite.ct">작품
							올리기</a>
					</div>
				</div>

				<!-- 창작물 메인 요소 -->
				<div class="creations-main2">
					<section>
						<!--  -->
						<%-- <c:when test="${not empty kakaoBoard}"> --%>
							<c:forEach var="creation" items="${creationsList}">
								<div class="img">
									<div class="creations-img">
										<img src="${pageContext.request.contextPath}/upload/${creation.getCreationSumnail()}" class="img-1">
										<div class="sub-title">
											<a
												href="${pageContext.request.contextPath}/creations/creationRead.ct?creationNumber=${creation.getCreationNumber()}">
												<c:out value="${creation.getCreationTitle()}" />
											</a>
										</div>
										<div class="sub-author">
										<div class="sub-author-img">
											<c:if test="${not empty creation.getMemberPfp() }">
											<img
												src="${pageContext.request.contextPath}/userProfile/${creation.getMemberPfp()}">
												</c:if>
												<c:if test="${empty creation.getMemberPfp()}">
												<img src="${pageContext.request.contextPath}/assets/img/member/people.png">
												</c:if>
											</div>
											<div class="sub-author-name">
											<a
												href="${pageContext.request.contextPath}/userpage/creationsOk.mp?memberNumber=${creation.getMemberNumber()}">
												<c:out value="${creation.getMemberNickname()}" />
											</a>
											</div>
										</div>
										<div class="creations-sub">
                                       <div class="creation-like">
                                          <img
                                             src="${pageContext.request.contextPath}/assets/img/member/free-icon-hearts-138533.png">
                                          <span class="count"><c:out value="${creation.getLikeCount()}" /></span>
                                          </div>
                                          <div class="creation-comment">
                                          
                                          <img
                                             src="${pageContext.request.contextPath}/assets/img/member/reply.png">
                                          <span class="count"><c:out value="${creation.getCommentCount()}" /></span>
                                       </div>
                                       </div>
									</div>
								</div>
							</c:forEach>
						<%-- </c:when> --%>
						<!--  -->

					</section>
				</div>
			</div>
		</div>
	</main>
	</form>
	<%@include file="/app/footer.jsp"%>
</body>
</html>





