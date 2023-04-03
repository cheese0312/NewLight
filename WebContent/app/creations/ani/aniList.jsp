<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Ani</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/creations/theme.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/header/header.css">
</head>
  </head>
  <body>
    <%@include file="/app/header.jsp"%>
    <main>
		<div class="main">
			<div class="main-box-bin"></div>
			<div class="creations-main">
				<div class="creations">
					<div class="creations-bin"></div>
					<div class="creations-title">
						<h2>1차 창작물 - 만화</h2>
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
						<%-- <c:when test="${not empty aniList}"> --%>
							<c:forEach var="creation" items="${creations}">
								<div class="img">
									<div class="creations-img">
										<img src="${pageContext.request.contextPath}/upload/${creationsfile.getFileSystemName()}" class="img-1">
										<div class="sub-title">
											<a
												href="${pageContext.request.contextPath}/app/creations/ani/aniView.jsp">
												<c:out value="${creation.getCreationTitle()}"/>
											</a>
										</div>
										<div class="sub-author">
											<img
												src="../img/—Pngtree—vector business men icon_4186858.png">
											<a
												href="${pageContext.request.contextPath}/app/mypage/mypage_creations.jsp">
												<c:out value="${creation.getMemberNickname()}" />
											</a>
										</div>
										<div class="creaions-sub">
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
    <%@include file ="/app/footer.jsp" %>
  </body>
</html>
