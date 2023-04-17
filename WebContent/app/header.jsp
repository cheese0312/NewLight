<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/header/header.css">
</head>
<body>

	<!-- 헤더 -->
	<header>
		<div class="header-box">

			<!-- 로고 이미지 -->
			<div class="logo">
				<img
					src="${pageContext.request.contextPath}/assets/images/logo/logo2.png">
			</div>
			<!-- 헤더 메인 박스 -->
			<div class="main-header-box">
				<div class="mian-nav-box"></div>

				<!-- 헤더 네비 박스 -->
				<div class="nav">

					<!-- 드롭 박스 div -->
					<div class="drop-box">

						<!-- 드롭 박스 세트 1 -->
						<div class="dropdown1">

							<!-- 드롭 박스 버튼 -->
							<li class="dropbtn1">별구름<img src="${pageContext.request.contextPath}/assets/images/free-icon-cloud.png"></li>

							<!-- 드롭 서브 메뉴 -->
							<li class="dropdown-content1">
								<!-- 해당 페이지 링크 걸어주기 --> <a
								href="${pageContext.request.contextPath}/creations/pageListOk.ct?categoryCode=101&categoryName=손그림">손그림</a>
								<a
								href="${pageContext.request.contextPath}/creations/pageListOk.ct?categoryCode=101&categoryName=배경화면">배경화면</a>
								<a
								href="${pageContext.request.contextPath}/creations/pageListOk.ct?categoryCode=101&categoryName=만화">만화</a>
								<a
								href="${pageContext.request.contextPath}/creations/pageListOk.ct?categoryCode=101&categoryName=폰트">폰트</a>
								<a
								href="${pageContext.request.contextPath}/creations/pageListOk.ct?categoryCode=101&categoryName=카톡테마">카카오톡
									테마</a>
							</li>
						</div>

						<!-- 드롭 박스 세트 2 -->
						<div class="dropdown2">

							<!-- 드롭 박스 버튼 -->
							<li class="dropbtn2">별숲🌳</li> 

							<!-- 드롭 서브 메뉴 -->
							<li class="dropdown-content2">
								<!-- 해당 페이지 링크 걸어주기 --> <a
								href="${pageContext.request.contextPath}/creations/pageListOk.ct?categoryCode=201&categoryName=배경화면">배경화면</a>
								<a
								href="${pageContext.request.contextPath}/creations/pageListOk.ct?categoryCode=201&categoryName=트레이싱">트레이싱</a>
								<a href="${pageContext.request.contextPath}/creations/pageListOk.ct?categoryCode=201&categoryName=카톡테마">카카오톡
									테마</a>
							</li>
						</div>

						<!-- 드롭 박스 세트 3 -->
						<div class="dropdown3">

							 <!-- 드롭 박스 버튼 -->    
                			<li class="dropbtn3"> <a href="${pageContext.request.contextPath}/community/communityListOk.cm">별물결🌊</a></li>

							<!-- 드롭 서브 메뉴 -->
						</div>

						<!-- 드롭 박스 세트 4 -->
						<div class="dropdown4">

							<!-- 드롭 박스 버튼 -->
							<li class="dropbtn4">•••</li>

							<!-- 드롭 서브 메뉴 -->
							<li class="dropdown-content4">
								<!-- 해당 페이지 링크 걸어주기 --> 
								<a href="${pageContext.request.contextPath}/notification/notificationListOk.nc">공지사항</a>
								<a href="${pageContext.request.contextPath}/qna/QnAListOk.qn">문의</a>
							</li>
						</div>
					</div>
				</div>
			</div>
			<!-- 로그인 세션 -->
			<div class="btn-box">
				<div class="login-box"></div>
				<!-- 로그인 버튼 -->
				<c:choose>
					<c:when test="${empty sessionScope.memberNumber}">
						<a href="${pageContext.request.contextPath}/member/login.me"
							class="login-btn">로그인</a>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/mypage/creationsOk.mp"
							class="mypage-btn">마이 페이지</a>
						<a href="${pageContext.request.contextPath}/member/logoutOk.me"
							class="logout-btn">로그아웃</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</header>
</body>
</html>