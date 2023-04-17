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
	<form action="${pageContext.request.contextPath}/mypage/followOk.mp">
		<div class="main">
			<div class="main-container">
				<div class="mypage-main">
					<div class="mypage-img">
						<img src="${pageContext.request.contextPath}/userProfile/${memberPfp}">
					</div>
					<div class="mypage-box">
      					<div class="mypage-name">${memberNickname }</div>
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

					<c:choose>
						<c:when test="${not empty followerList}">
							<c:forEach var="follow" items="${followerList}">
								<div class="creations-main">
									<div class="mypage-main2">
										<div class="mypage-img">
										<img src="${pageContext.request.contextPath}/assets/images/member/—Pngtree—vector business men icon_4186858.png"
							alt="">
											<%-- <img src="${pageContext.request.contextPath}/upload/${follow.getMemberpfp}"/> --%>
										</div>
										<div class="mypage-box">
											<div class="mypage-name"><c:out value="${follow.getMemberNickname()}"/> </div>
											<div class="mypage-content"><c:out value="${follow.getMemberComment()}"/></div>
										</div>
										<div class="bin"></div>
										<c:if test="${sessionScope.memberNumber != follow.getMemberNumber() }">
										<div class="editbtn1" data-memberNumber="${follow.getMemberNumber() }">
											<a href="#" class="follower" >팔로우 ✔</a>
										</div>
										
										<div class="editbtn1 none" data-memberNumber="${follow.getMemberNumber() }">
											<a href="#" class="follower" >팔로우 ➕</a>
										</div>
										</c:if>
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
		</form>
	</main>
	<!-- 푸터 -->
	<%@include file="/app/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		let memberNumber = "${sessionScope.memberNumber}";
	</script>
	<script
		src="${pagetContext.request.contextPath}/assets/js/mypage/follow.js">
	</script>
</body>
</html>