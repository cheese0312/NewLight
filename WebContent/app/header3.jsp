<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header/header2.css">
</head>
<body>

    <!-- 헤더 -->
    <header>
        <div class="header-box">
            <div class="logo">
                <img src="${pageContext.request.contextPath}/assets/images/logo/communitylogo.png">
            </div>
            <div class="main-header-box">
            <div class="mian-nav-box"></div>
            <div class="nav">
            <div class="drop-box">
            <div class="dropdown1">
                <li class="dropbtn1">1차 창작물</li>
                <li class="dropdown-content1">
                    <a href="${pageContext.request.contextPath}/app/creations/handDrow/handDrow.jsp">손그림</a>
                    <a href="#">배경화면</a>
                    <a href="#">만화</a>
                    <a href="#">폰트</a>
                    <a href="#">카카오톡 테마</a>
                </li>
                </div>
                <div class="dropdown2">
                <li class="dropbtn2">2차 창작물</li>
                <li class="dropdown-content2">
                    <a href="#">배경화면</a>
                    <a href="#">트레이싱</a>
                    <a href="#">카카오톡 테마</a>
                </li>
                </div>
                <div class="dropdown3">
               <li class="dropbtn3"> <a href="${pageContext.request.contextPath}/community/communityListOk.cm">커뮤니티</a></li>
                <li class="dropdown-content3">
                 
                </li>
                </div>
                <div class="dropdown4">
                <li class="dropbtn4">•••</li>
                <li class="dropdown-content4">
                    <a href="#">공지사항</a>
                    <a href="#">문의</a>
                </li>
                </div>
            </div>
            </div>
        </div>
            <div class="btn1-box">
             <c:choose>
                	<c:when test="${empty sessionScope.memberNumber}">
                		<a href="${pageContext.request.contextPath}/member/login.me" class="login-btn">로그인</a>
                	</c:when>
                	<c:otherwise>
                		<%-- <a href="${pageContext.request.contextPath}/mypage/mypage_creationsOk.mp" class="mypage-btn">내 정보</a> --%>
                		<a href="${pageContext.request.contextPath}/member/logoutOk.me" class="logout-btn">로그아웃</a>
                
                	</c:otherwise>
                </c:choose>
           <%--      <a href="#" class="login-btn">로그아웃</a>
                <a href="${pageContext.request.contextPath}/app/community/communityWrite.jsp" class="login2-btn">글쓰기</a> --%>
            </div>
        </div>
    </header>
    <hr>
</body>
</html>