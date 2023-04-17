<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>findIdPw</title>
    <link rel="stylesheet" href="../css/find.css" />
  </head>
  <body>
    <form action="${pageContext.request.contextPath}/member/memberFindIdOk.me"></form>
    <article class="fullpadding">
      <article class="idfind">
        <h2>아이디 찾기</h2>
        <span class="findId-msg">회원님의 아이디는<c:out value= "${memberId}"/>입니다.</span>
        <div>
          <button class="okbtn">확인</button>
        </div>
      </article>
    </article>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <%-- <script src="${pageContext.request.contextPath}/assets/js/member/findID.js"></script> --%>
  </body>
</html>