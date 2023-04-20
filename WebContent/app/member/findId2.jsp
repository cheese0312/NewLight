<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>아이디 찾기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/member/findId2.css" />
  </head>
  <body>
    <form action="${pageContext.request.contextPath}/member/memberFindIdOk.me">
      <div class="login-box">
        <h2>아이디 찾기 결과</h2>
        <span class="user-box">회원님의 아이디는 <c:out value="${memberId}" />입니다.</span>
        <br>
        <div class="m">
          <a href="${pageContext.request.contextPath}/member/login.me">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            확인</a>
        </div>
      </div>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <%--   <script src="${pageContext.request.contextPath}/assets/js/member/findId.js"></script> --%>
    </form>
  </body>
</html>
