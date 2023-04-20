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
						<c:forEach var="content" items="${main}">
						<c:if test="${content.getCategoryName() == '배경화면' || content.categoryName== '트레이싱' }">
						<div class="img">
									<div class="creations-img">
										<a href="${pageContext.request.contextPath}/creations/creationRead.ct?creationNumber=${content.getCreationNumber()}" class="themeList"> 
										<img src="${pageContext.request.contextPath}/upload/${content.getCreationSumnail()}" class="creation-img" />
										</a>
										<div class="creation-main">
										<div class="sub-title">
											<h4>
											<a href="${pageContext.request.contextPath}/creations/creationRead.ct?creationNumber=${content.getCreationNumber()}">
											<c:out value="${content.getCreationTitle() }" />
											</a>
										</h4>
										</div>
										<div class="create-people">
										<a
											href="${pageContext.request.contextPath}/mypage/creationsOk.mp">
											<div class="create-img">
											<img
											src="${pageContext.request.contextPath}/userProfile/${content.getMemberPfp()}"
											alt="" class="create-people-img" /> 
											</div>
											<div class="create-name">
											<c:out
												value="${content.getMemberNickname() }" />
										</div>
										</a>
									</div>
										<div class="icon-box">
										<a href="#" class="a__inline-block"> 
										<div class="icon-like">
										<img
											src="${pageContext.request.contextPath}/assets/img/icon-hearts.png" class="like-icon-img" /> 
											<span class="count"><c:out value="${content.getLikeCount() }" /></span>
											</div> 
										</a> 
										<a href="${pageContext.request.contextPath}" class="a__inline-block">
										<div class="icon-comment">
										<img
											src="${pageContext.request.contextPath}/assets/img/reply.png" alt="" class="reply-icon-img" /> 
											<span class="count"><c:out value="${content.getCommentCount() }" /></span>
											</div>
											 </a>
									</div>
									</div>
									</div>
								</div>
						</c:if>
						 <c:if test="${content.categoryName== '손그림' || content.categoryName== '카톡테마' || content.categoryName== '폰트' || content.categoryName== '만화' }">
							<div class="create-card">
								<div class="create-logo">
									<a href="${pageContext.request.contextPath}/creations/creationRead.ct?creationNumber=${content.getCreationNumber()}" class="themeList"> <img
										src="${pageContext.request.contextPath}/upload/${content.getCreationSumnail()}"
										alt="" class="create-card-img" />
									</a>
									<div class="creation-main">
									<div class="create-title">
										<h4>
											<a href="${pageContext.request.contextPath}/creations/creationRead.ct?creationNumber=${content.getCreationNumber()}">
											<c:out value="${content.getCreationTitle() }" />
											</a>
										</h4>
									</div>
									<div class="create-people">
										<a
											href="${pageContext.request.contextPath}/mypage/creationsOk.mp">
											<div class="create-img">
											<img
											src="${pageContext.request.contextPath}/userProfile/${content.getMemberPfp()}"
											alt="" class="create-people-img" /> 
											</div>
											<div class="create-name">
											<c:out
												value="${content.getMemberNickname() }" />
										</div>
										</a>
									</div>
									<div class="icon-box">
										<a href="#" class="a__inline-block"> 
										<div class="icon-like">
										<img
											src="${pageContext.request.contextPath}/assets/img/icon-hearts.png" alt=""
											class="like-icon-img" /> 
											<span class="count"><c:out value="${content.getLikeCount() }" /></span>
											</div> 
										</a> 
										<a href="${pageContext.request.contextPath}" class="a__inline-block">
										<div class="icon-comment">
										<img
											src="${pageContext.request.contextPath}/assets/img/reply.png" alt="" class="reply-icon-img" /> 
											<span class="count"><c:out value="${content.getCommentCount() }" /></span>
											</div>
											 </a>
									</div>
									</div>
								</div>
							</div>
							</c:if>
						</c:forEach>
					</ul>
				</div>
			</div>
		</section>
	</form>
	<%@include file="/app/footer.jsp"%>
</body>
</html>