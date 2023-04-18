<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/member/login.css">
</head>
<body>
	<!-- 헤더 -->
	<%@include file="/app/header.jsp"%>

	<!-- 메인 -->
	<form action="${pageContext.request.contextPath}/member/loginOk.me"
		method="post">
		<div class="login-page">
			<div class="form">
				<form:form class="login-form">
					<input name="memberId" id="id" type="text" placeholder="userId"
						required />
					<input name="memberPassword" id="password" type="password"
						placeholder="password" required />


					<button type="submit">login</button>
					<p class="message">
					<ul id="ullog">
						<li id="lilogb"><a
							href="${pageContext.request.contextPath}/member/join.me">회원가입</a></li>
							<hr>
						<li id="lilog"><a
							href="${pageContext.request.contextPath}/member/memberFindId.me">아이디
								찾기</a></li> 
							<hr>
							<li id="lilog">
							<a
							href="${pageContext.request.contextPath}/member/memberFindPw.me">비밀번호
								찾기</a></li>
					</ul>
					</p>
				</form:form>
			</div>
		</div>
	</form>
	<!-- 푸터 -->
	<%@include file="/app/footer.jsp"%>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/member/login.js"></script>
</body>
</html>

