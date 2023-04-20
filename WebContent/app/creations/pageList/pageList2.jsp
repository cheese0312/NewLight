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
	href="${pageContext.request.contextPath}/assets/css/creations/background.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/header/header.css">
	
</head>
<!-- 1차,2차 배경화면 + 트레이싱 처리 화면 -->
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
							<c:forEach var="creation" items="${creations}">
								<div class="img">
									<div class="creations-img">
										<img src="${pageContext.request.contextPath}/upload/${creation.getCreationSumnail()}" class="img-1">
										<div class="sub-title">
											<a
												href="${pageContext.request.contextPath}/creations/creationRead.ct?creationNumber=${creation.getCreationNumber()}">
												<c:out value="${creation.getCreationTitle() }" />
											</a>
										</div>
										<div class="sub-author">
											<img
												src="${pageContext.request.contextPath}/userProfile/${creation.getMemberPfp()}">
											<a
												href="${pageContext.request.contextPath}/app/mypage/mypage_creations.jsp">
												<c:out value="${creation.getMemberNickname()}" />
											</a>
										</div>
										<div class="creations-sub">
											<img src="${pageContext.request.contextPath}/assets/img/icon-hearts.png" class="likes">
											<img src="${pageContext.request.contextPath}/assets/img/reply.png" class="comment">
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





