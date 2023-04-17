<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/member/memberFindPwOk.me">
    <article class="fullpadding">
      <article class="idfind">
        <h2>비밀번호 찾기</h2>
        <span class="findPw-msg">회원님의 비밀번호는<c:out value="${memberPw}" />입니다.</span>
        <div>
          <button class="okbtn">확인</button>
        </div>
      </article>
    </article>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    </form>
</body>
</html>