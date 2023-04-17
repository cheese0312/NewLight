<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/member/findId.css">
</head>
 <body>
<!-- 헤더 -->
<%@include file="/app/header.jsp"%>
 
<form action="${pageContext.request.contextPath}/member/memberFindIdOk.me" class="form">
  <article class="fullpadding">
  <article class="idfind">
    <h2>아이디 찾기</h2>
<span class="small">- 회원정보에 저장된 생년월일, 휴대폰/전화번호 이메일 주소로 아이디를 찾을 수 있습니다.<br>
- 아이핀으로 가입하신 회원님은 아이디를 분실하셨을 경우, 아이핀 인증을 이용하여 확인하실 수 있습니다.</span>
<div>
  <div class="tabs">
  <ul class="tabs-nav">
    <li><a href="#tab-2">휴대폰</a></li>
  </ul>
  <div class="tabs-stage">
    <div id="tab-2">
           성명&nbsp;&nbsp;&nbsp;&nbsp; <input class="txt name" type="text" placeholder="" name="memberName"> <br>
        휴대폰&nbsp;   
        <input type="tel" class="phone" placeholder="" maxlength="3" name="memberPhoneNumber"> -
           <input type="tel" class="phone" placeholder="" maxlength="4" name="memberPhoneNumber"> -
           <input type="tel" class="phone" placeholder="" maxlength="4" name="memberPhoneNumber">
              <button class="okbtn" type="button">확인</button>
    </div>
  </div>
</div>
</div>
  </article>
  </article>
  </form>
 <!-- 푸터 -->
    <%@include file ="/app/footer.jsp" %>
  </body>
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
     <script>
      	let success = "${success}";
      </script>
      <script src="${pageContext.request.contextPath}/assets/js/member/findId.js"></script>
</html>




