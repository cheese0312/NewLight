<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/mypage/mypage-creations.css">
</head>
<body>
	<!-- 헤더 -->
	<%@include file="/app/header.jsp"%>
	<form action="${pageContext.request.contextPath}/mypage/creationsOk.mp"
		method="post">
		<main>
			<div class="main">
				<div class="main-container">
					<div class="mypage-main">
						<c:choose>
							<c:when test="${not empty mypage}">
								<div class="mypage-img">
									<img
										src="${pageContext.request.contextPath}/upload/${member.getMemberPfpFile()}">
								</div>
							</c:when>
							<c:otherwise>
								<div class="mypage-img">
									<img
										src="${pageContext.request.contextPath}/assets/images/member/—Pngtree—vector business men icon_4186858.png">
								</div>
							</c:otherwise>
						</c:choose>
						<div class="mypage-box">
							<div class="mypage-name">${memberNickname}</div>
							<div class="myapge-comment">${memberComment}</div>
						</div>
						<div class="bin"></div>
						<div class="editbtn">
							<a href="#">프로필수정</a>
						</div>

					</div>

					<hr>
					<section>
						<div class="click">
							<div class="name">
								<a href="/mypage/creationsOk.mp">내 작품</a>
							</div>
							<div class="name">
								<a href="/mypage/followOk.mp">팔로우</a>
							</div>
							<div class="name">
								<a href="/mypage/likeOk.mp">좋아요</a>
							</div>

						</div>
						<div class="mypage-main2">
							<section>
								<c:choose>
									<c:when test="${not empty creationList}">
										<c:forEach var="creations" items="${creationList}">
											<div class="img">
												<div class="creations-img">
													<img src="${pageContext.request.contextPath}/upload/${creations.getCreationSumnail()}">
													<div class="sub-title">
														<a href="#"> <c:out value="${creations.getCreationTitle()}"/> </a>
													</div>
													<div class="sub-author">
														<img
															src="../img/—Pngtree—vector business men icon_4186858.png">
														<a href="#"> <c:out value="${memberNickname }"/> </a>
													</div>
													<div class="creations-sub">
													<div class="creation-like">
														<img
															src="${pageContext.request.contextPath}/assets/images/member/free-icon-hearts-138533.png">
														<c:out value="${creations.getLikeCount()}" />
														</div>
														<div class="creation-comment">
														<c:out value="${creations.getCommentCount()}" />
														<img
															src="${pageContext.request.contextPath}/assets/images/member/pngegg.png">
														
													</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<div class="creations-main-box">
											<div class="creations-main">
												<div class="creations-box">
													<div class="creations-default">
														<span>•••</span>
													</div>
													<div class="creations-msg">
														<span>내 작품이 없어요</span>
													</div>
												</div>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
							</section>
						</div>

					</section>
				</div>
			</div>
		</main>
	</form>
	<!-- 푸터 -->
	<%@include file="/app/footer.jsp"%>
</body>
</html>