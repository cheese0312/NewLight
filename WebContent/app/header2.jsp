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
                <div class="dropdown2">
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
                <div class="dropdown3">
              <li class="dropbtn3"> <a href="${pageContext.request.contextPath}/community/communityListOk.cm">별물결🌊</a></li>
                </div>
                <div class="dropdown4">
                <li class="dropbtn4">•••</li>
              	<li class="dropdown-content4">
								<!-- 해당 페이지 링크 걸어주기 --> <a
								href="${pageContext.request.contextPath}/notification/notificationListOk.nc">공지사항</a>
								<a href="${pageContext.request.contextPath}/qna/QnAListOk.qn">문의</a>
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
                		<a href="${pageContext.request.contextPath}/community/communityWrite.cm" class="login2-btn">글쓰기</a>
                	</c:otherwise>
                </c:choose>
           <%--      <a href="#" class="login-btn">로그아웃</a>
                <a href="${pageContext.request.contextPath}/app/community/communityWrite.jsp" class="login2-btn">글쓰기</a> --%>
            </div>
        </div>
    </header>
  
</body>
</html>