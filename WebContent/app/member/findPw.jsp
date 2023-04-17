<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/member/findPw.css">
</head>
<body>
<!-- 헤더 -->
<%@include file="/app/header.jsp"%>

<form action="${pageContext.request.contextPath}/member/memberFindPwOk.me" class="form">
<article class="fullpadding">
 <article class="pwfind">
    <h2>비밀번호 찾기</h2>
<span class="small">
- 본인인증을 완료한 회원님은 이메일, 휴대폰을 이용하여 비밀번호를 찾으실 수 있습니다.<br>
- SNS 계정으로 회원가입하신 회원님은 비밀번호 찾기가 불가합니다. SNS 계정을 통해 로그인을 해주세요.<br>
</span>
<div>
  <div class="tabs2">
  <ul class="tabs-nav2">
    <li><a href="#tab-4">휴대폰</a></li>
  </ul>
  <div class="tabs-stage2">
    <div id="tab-4">
      아이디&nbsp; <input class="txt Id" type="text" placeholder="" name="memberId"> <br>
           성명&nbsp;&nbsp;&nbsp;&nbsp; <input class="txt name" type="text" placeholder=""  name="memberName"> <br>
        휴대폰&nbsp;&nbsp;<input type="tel" class="phone" placeholder=""maxlength="3" name="memberPhoneNumber"> -
           <input type="tel" class="phone" placeholder=""maxlength="4" name="memberPhoneNumber"> -
           <input type="tel" class="phone" placeholder=""maxlength="4" name="memberPhoneNumber">
              <button class="okbtn" type="button">확인</button>
    </div>
  </div>
</div>
</div>
  </article>
</article>
 <!-- 푸터 -->
    <%@include file ="/app/footer.jsp" %>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
     <script>
      	let success = "${success}";
      </script>
      <script src="${pageContext.request.contextPath}/assets/js/member/findPw.js"></script>
      </form>
</body>
</html>




