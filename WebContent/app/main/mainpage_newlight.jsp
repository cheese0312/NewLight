<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>newlight</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
</head>
<body>
	<%@include file="/app/header.jsp"%>
	<form
		action="${pageContext.request.contextPath}/main/mainNewlightOk.mi"
		method="post">

		<section>
			<div class="category-container">
				<div class="category-menu">
					<ul class="menu">
						<div class="category-menu-1">
							<li class="menu-list"><a
								href="/creations/pageListOk.ct?categoryCode=101&categoryName=손그림"
								class="menu-list-1"><strong class="font-name">손글씨(Font)</strong>
									<img
									src="${pageContext.request.contextPath}/assets/img/fontCategory.png"
									alt="" class="handpen-img" /> </a></li>
						</div>
						<li class="menu-list"><a
							href="/creations/pageListOk.ct?categoryCode=101&categoryName=배경화면"
							class="menu-list-2"> <strong class="background-name">배경화면</strong><img
								src="${pageContext.request.contextPath}/assets/img/backgroundCategory.png"
								alt="" class="background-img" />
						</a></li>
						<li class="menu-list"><a
							href="/creations/pageListOk.ct?categoryCode=201&categoryName=트레이싱"
							class="menu-list-3"><strong class="tracing-name">트레이싱</strong>
								<img
								src="${pageContext.request.contextPath}/assets/img/tracingCategory.png"
								alt="" class="tracing-img" /> </a></li>
						<li class="menu-list"><a
							href="${pageContext.request.contextPath}/app/creations/theme/kakaoThemeOne.jsp"
							class="menu-list-4"><strong class="kakao-name">카톡테마</strong>
								<img
								src="${pageContext.request.contextPath}/assets/img/kakao-talk.png"
								alt="" class="kakaotheme-img" /> </a></li>
						<li class="menu-list"><a
							href="/creations/pageListOk.ct?categoryCode=101&categoryName=만화"
							class="menu-list-5"> <strong class="animation-name">애니메이션</strong><img
								src="${pageContext.request.contextPath}/assets/img/animationCategory-removebg-preview.png"
								alt="" class="ani-img" />
						</a></li>
					</ul>
				</div>
				<div class="category-create-container">
					<ul class="create-list">
						<!--  -->
						<c:forEach var="content" items="${main}">
							<div class="create-card">
								<div class="create-logo">
									<a
										href="${pageContext.request.contextPath}/creations/creationRead.ct?creationNumber=${content.getCreationNumber()}"
										class="themeList"> <img
										src="${pageContext.request.contextPath}/upload/${content.getCreationSumnail()}"
										alt="" class="create-card-img" />
									</a>
									<div class="create-title">
										<h4>
											<a
												href="${pageContext.request.contextPath}/creations/creationRead.ct?creationNumber=${content.getCreationNumber()}">
												<c:out value="${content.getCreationTitle() }" />
											</a>
										</h4>
									</div>
									<div class="create-people">
										<a
											href="${pageContext.request.contextPath}/mypage/creationsOk.mp">
											<img
											src="${pageContext.request.contextPath}/userProfile/${content.getMemberPfp()}"
											alt="" class="create-people-img" /> <c:out
												value="${content.getMemberNickname() }" />
										</a>
									</div>
									<div class="icon-box">
										<a href="#" class="a__inline-block"> <img
											src="${pageContext.request.contextPath}/assets/img/icon-hearts.png"
											alt="" class="like-icon-img" /> <c:out
												value="${content.getLikeCount() }" />
										</a> <a href="${pageContext.request.contextPath}"
											class="a__inline-block"><img
											src="${pageContext.request.contextPath}/assets/img/reply.png"
											alt="" class="reply-icon-img" /> <c:out
												value="${content.getCommentCount() }" /> </a>
									</div>
								</div>
							</div>
						</c:forEach>

						<!--  -->
					</ul>
				</div>
			</div>
		</section>
	</form>
	<%@include file="/app/footer.jsp"%>
</body>
</html>