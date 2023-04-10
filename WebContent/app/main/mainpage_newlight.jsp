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
						<li class="menu-list"><a href="#" class="menu-list-1">손글씨(Font)
								<img src="../img/handpen.png" alt="" class="handpen-img" />
						</a></li>
						<li class="menu-list"><a href="#" class="menu-list-2">배경화면
								<img src="../img/display.png" alt="" class="display-img" />
						</a></li>
						<li class="menu-list"><a href="#" class="menu-list-3">아이콘
								<img src="../img/iconsmile-menu.png" alt="" class="icon-img" />
						</a></li>
						<li class="menu-list"><a
							href="${pageContext.request.contextPath}/app/creations/theme/kakaoThemeOne.jsp"
							class="menu-list-4">카톡테마 <img src="../img/kakao-talk.png"
								alt="" class="kakaotheme-img" />
						</a></li>
						<li class="menu-list"><a
							href="${pageContext.request.contextPath}/app/creations/ani/aniList.jsp"
							class="menu-list-5">만화 <img src="../img/animation.png" alt=""
								class="ani-img" />
						</a></li>
					</ul>
				</div>
				<div class="category-create-container">
					<ul class="create-list">
						<!--  -->
						<c:forEach var="content" items="${main}">
							<div class="create-card">
								<div class="create-logo">
									<a href="#" class="themeList"> <img
										src="${pageContext.request.contextPath}/upload/${content.getCreationSumnail()}"
										alt="" class="create-card-img" />
									</a>
									<div class="create-title">
										<h4>
											<a href="${pageContext.request.contextPath}/creation<%-- /detail?creationNumber=${content.get} --%>">
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
											src="${pageContext.request.contextPath}/assets/img/icon-hearts.png" alt=""
											class="like-icon-img" /> <c:out
												value="${content.getLikeCount() }" />
										</a> <a href="${pageContext.request.contextPath}" class="a__inline-block"><img
											src="${pageContext.request.contextPath}/assets/img/reply.png" alt="" class="reply-icon-img" /> <c:out
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