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
	<main>
		<form
			action="${pageContext.request.contextPath}/mypage/creationsOk.mp"
			method="post">


			<div class="main">
				<div class="main-container">
					<div class="mypage-main">
						<div class="mypage-img">
							<c:if test="${not empty memberPfp }">
								<img
									src="${pageContext.request.contextPath}/userProfile/${memberPfp}">
							</c:if>
							<c:if test="${empty memberPfp }">
								<img
									src="${pageContext.request.contextPath}/assets/img/member/people.png"
									alt="">
							</c:if>
						</div>
						<div class="mypage-box">
							<div class="mypage-name">${memberNickname}</div>
							<div class="myapge-comment">${memberComment}</div>
						</div>
						<div class="bin"></div>
						<div class="editbtn">
							<c:if test="${sessionScope.memberNumber == param.memberNumber }">
								<a
									href="${pageContext.request.contextPath}/mypage/mypageEdit.me">프로필수정</a>
							</c:if>
						</div>

					</div>

					<hr>
					<section>
						<div class="click">
							<div class="name">
								<a href="/mypage/creationsOk.mp?memberNumber=${memberNumber }">내
									작품</a>
							</div>
							<c:if test="${sessionScope.memberNumber == param.memberNumber }">
								<div class="name">
									<a href="/mypage/followOk.mp?memberNumber=${memberNumber }">팔로워</a>
								</div>
								<div class="name">
									<a href="/mypage/likeOk.mp?memberNumber=${memberNumber }">좋아요</a>
								</div>
							</c:if>

						</div>
						<div class="mypage-main2">
							<section>

								<c:choose>
									<c:when test="${not empty creationList}">
										<c:forEach var="creations" items="${mypageLikeCount}">
											<div class="img">
												<div class="creations-img">
													<img
														src="${pageContext.request.contextPath}/upload/${creations.getCreationSumnail()}">
													<div class="sub-title">
														<a
															href="${pageContext.request.contextPath}/creations/creationRead.ct?creationNumber=${creations.getCreationNumber()}">
															<c:out value="${creations.getCreationTitle()}" />
														</a>
													</div>
													<div class="sub-author">
														<div class="sub-author-img">
															<c:if test="${not empty creations.getMemberPfp() }">
																<img
																	src="${pageContext.request.contextPath}/userProfile/${creations.getMemberPfp()}">
															</c:if>
															<c:if test="${empty creations.getMemberPfp()}">
																<img
																	src="${pageContext.request.contextPath}/assets/img/member/people.png">
															</c:if>

														</div>
														<div class="sub-author-name">
															<a href="#"> <c:out
																	value="${creations.getMemberNickname()}" />
															</a>
														</div>
													</div>
													<div class="creations-sub">
														<div class="creation-like">
															<img
																src="${pageContext.request.contextPath}/assets/img/member/free-icon-hearts-138533.png">
															<span class="count"><c:out
																	value="${creations.getLikeCount()}" /></span>
														</div>
														<div class="creation-comment">

															<img
																src="${pageContext.request.contextPath}/assets/img/member/reply.png">
															<span class="count"><c:out
																	value="${creations.getCommentCount()}" /></span>
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

		</form>
	</main>
	<!-- 푸터 -->
	<%@include file="/app/footer.jsp"%>
</body>
</html>