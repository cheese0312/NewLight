<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 팔로우</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/mypage/mypage-follow.css">
</head>
<body>
	<!-- 헤더 -->
	<%@include file="/app/header.jsp"%>
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

					<c:choose>
						<c:when test="${not empty follows}">
							<c:forEach var="follows" items="${Follow}">
								<div class="creations-main">
									<div class="mypage-main">
										<div class="mypage-img">
											<img
												src="../img/—Pngtree—vector business men icon_4186858.png"
												alt="">
										</div>
										<div class="mypage-box">
											<div class="mypage-name"> <c:out value="${member.getMemberNickName}"/> </div>
											<div class="mypage-content">작가 소개</div>
										</div>
										<div class="bin"></div>
										<div class="editbtn">
											<a href="#">팔로우 ✔</a>
										</div>
									</div>
									<hr>
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
											<span>팔로우 목록이 없어요</span>
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
	<!-- 푸터 -->
	<%@include file="/app/footer.jsp"%>
</body>
</html>