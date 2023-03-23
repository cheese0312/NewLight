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
						<img src="../img/—Pngtree—vector business men icon_4186858.png"
							alt="">
					</div>
					<div class="mypage-name">닉네임(새로운빛을만들다)</div>
					<div class="bin"></div>
					<div class="editbtn">
						<a href="#">프로필수정</a>
					</div>
				</div>

				<hr>
				<section style="width: 100%">
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

					<c:choose>
						<c:when test="${not empty likeList}">
							<c:forEach var="like" items="${likeList}">
								<div class="creations-main">

									<div class="img">
										<div class="creaions-img">
											<img src="../img/10_징검다리를_하나_둘.jpg">
											<div class="sub-title">
												<a href="#"> <c:out
														value="${creations.getCreationsTitle }" /></a>
											</div>
											<div class="sub-author">
												<img
													src="../img/—Pngtree—vector business men icon_4186858.png">
												<a href="#"> <c:out value="${member.getMemberNickname }" />
												</a>
											</div>
											<div class="creaions-sub">
												<img src="../img/free-icon-hearts-138533.png" class="likes">
												<img src="../img/pngegg.png" class="comment">
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
											<span>좋아요한 작품이 없어요</span>
										</div>
									</div>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</section>
			</div>
		</div>
	</main>
	</form>
	<!-- 푸터 -->
	<%@include file="/app/footer.jsp"%>
</body>
</html>