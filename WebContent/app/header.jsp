<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header/header.css">
</head>
<body>

    <!-- 헤더 -->
    <header>
        <div class="header-box">

            <!-- 로고 이미지 -->
            <div class="logo">
                <img src="${pageContext.request.contextPath}/assets/images/logo/logo2.png">
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
                <li class="dropbtn1">1차 창작물</li>

                <!-- 드롭 서브 메뉴 -->
                <li class="dropdown-content1">

                    <!-- 해당 페이지 링크 걸어주기 -->
                    <a href="#">손그림</a>
                    <a href="#">배경화면</a>
                    <a href="${pageContext.request.contextPath}/app/creations/ani/aniBoard.jsp">만화</a>
                    <a href="#">폰트</a>
                    <a href="${pageContext.request.contextPath}/app/creations/theme/kakaoBoard.jsp">카카오톡 테마</a>
                </li>
                </div>

                <!-- 드롭 박스 세트 2 -->
                <div class="dropdown2">

                <!-- 드롭 박스 버튼 -->
                <li class="dropbtn2">2차 창작물</li>

                 <!-- 드롭 서브 메뉴 -->
                <li class="dropdown-content2">

                     <!-- 해당 페이지 링크 걸어주기 -->
                    <a href="${pageContext.request.contextPath}/app/creations/background/background2.jsp">배경화면</a>
                    <a href="${pageContext.request.contextPath}/app/creations/tracing/tracing2.jsp">트레이싱</a>
                    <a href="${pageContext.request.contextPath}/app/creations/theme/theme2.jsp">카카오톡 테마</a>
                </li>
                </div>

                <!-- 드롭 박스 세트 3 -->
                <div class="dropdown3">

                <!-- 드롭 박스 버튼 -->    
                <li class="dropbtn3">커뮤니티</li>

                 <!-- 드롭 서브 메뉴 -->
                </div>

                <!-- 드롭 박스 세트 4 -->
                <div class="dropdown4">

                 <!-- 드롭 박스 버튼 -->   
                <li class="dropbtn4">•••</li>

                 <!-- 드롭 서브 메뉴 -->
                <li class="dropdown-content4">

                     <!-- 해당 페이지 링크 걸어주기 -->
                    <a href="#">공지사항</a>
                    <a href="#">문의</a>
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
                		<a href="${pageContext.request.contextPath}/member/login.me" class="login-btn">로그인</a>
                	</c:when>
                	<c:otherwise>
                		<%-- <a href="${pageContext.request.contextPath}/mypage/mypage_creationsOk.mp" class="mypage-btn">내 정보</a> --%>
                		<a href="${pageContext.request.contextPath}/member/logoutOk.me" class="logout-btn">로그아웃</a>
                	</c:otherwise>
                </c:choose>
            </div>
        </div>
    </header>
</body>
</html>