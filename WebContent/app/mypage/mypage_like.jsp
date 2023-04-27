<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/mypage/mypage-like.css">
</head>
<body>
	<!-- 헤더 -->
	<%@include file="/app/header.jsp"%>
	<form action="${pageContext.request.contextPath}/mypage/likeOk.mp" method="post">
	<main>
		<div class="main">
			<div class="main-container">
				<div class="mypage-main">
					<div class="mypage-img">
									<c:if test="${not empty memberPfp }">
					<img src="${pageContext.request.contextPath}/userProfile/${memberPfp}">
					</c:if>
						<c:if test="${empty memberPfp }">
						<img src="${pageContext.request.contextPath}/assets/img/member/people.png"
							alt="">
						</c:if>
						</div>
					<div class="mypage-box">
      					<div class="mypage-name">${memberNickname }</div>
      					<div class="myapge-comment">${memberComment}</div>
    				</div>
					<div class="bin"></div>
					<div class="editbtn">
						<a href="${pageContext.request.contextPath}/mypage/mypageEdit.me">프로필수정</a>
					</div>
				</div>

				<hr>
				<section style="width: 100%">
					<div class="click">
						<div class="name">
							<a href="/mypage/creationsOk.mp?memberNumber=${memberNumber}">내 작품</a>
						</div>
						<div class="name">
							<a href="/mypage/followOk.mp?memberNumber=${memberNumber}">팔로워</a>
						</div>
						<div class="name">
							<a href="/mypage/likeOk.mp?memberNumber=${memberNumber}">좋아요</a>
						</div>

					</div>
					<div class="mypage-main2">
							<section>
					<c:choose>
						<c:when test="${not empty likeList}">
							<c:forEach var="like" items="${likeList}">
								<!-- <div class="creations-main"> -->
									<div class="img">
										<div class="creations-img">
											<img src="${pageContext.request.contextPath}/upload/${like.getCreationSumnail()}">
											<div class="sub-title">
												<a href="/creations/creationRead.ct?creationNumber=${like.creationNumber}"> <c:out value="${like.getCreationTitle() }" /></a>
											</div>
											<div class="sub-author">
											<div class="sub-author-img">
												<img
													src="${pageContext.request.contextPath}/assets/img/member/people.png">
												</div>
												<div class="sub-author-name">
												<a href="/mypage/creationsOk.mp?memberNumber=${memberNumber}"> <c:out value="${like.getMemberNickname() }" />
												</a>
												</div>
											</div>
											<div class="creations-sub">
												<div class="creation-like">
														<img
															src="${pageContext.request.contextPath}/assets/img/member/free-icon-hearts-138533.png">
														<span class="count"><c:out value="${like.getLikeCount()}" /></span>
														</div>
														<div class="creation-comment">
														
														<img
															src="${pageContext.request.contextPath}/assets/img/member/reply.png">
														<span class="count"><c:out value="${like.getCommentCount()}" /></span>
													</div>
											</div>
										</div>
									</div>
								<!-- </div> -->
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
											<span>좋아요한 작품이 없어요</span>
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