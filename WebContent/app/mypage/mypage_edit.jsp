<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>information</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/information.css" />
</head>
<body>
	<%@include file="/app/header.jsp"%>
	<form action="${pageContext.request.contextPath}/member/joinOk.me"
		method=post enctype="multipart/form-data">
		<section>
			<div class="info-container">
				<div class="info-menu">
					<form
						action="${pageContext.request.contextPath}/mypage/mypageEdit.me">
						<fieldset>
							<div class="info-people">
								<img
									src="${pageContext.request.contextPath}/userProfile/${memberDTO.getMemberPfp()}"
									alt="" class="info-people-img" />
								<button>사진 변경</button>
							</div>
							<div class="info-name">
								<label for="id-change">이름 </label> <input type="text" name="id"
									id="id-chnage" required value="${memberDTO.getMemberName()}" readonly/>
							</div>
							<div class="info-id">
								<label for="id-change">아이디 </label> <input type="text" name="id"
									id="id-chnage" required value="${memberDTO.getMemberId()}" readonly/>
							</div>
							<div class="info-pw">
								<label for="pw-change">비밀번호 </label> <input type="password"
									name="password" id="pw-change" required />
								<span class="check-msg" id="check-pw-msg"></span>
							</div>
							<div class="info-phone">
								<label for="id-change">핸드폰 번호 </label> <input type="text" name="id"
									id="id-chnage" required />
							</div>
							<div class="info-nickname">
								<label for="nickname-change">닉네임(0/300) </label> <input
									type="text" name="nickname" id="nickname-change" required />
								<span class="check-msg" id="check-nickname-msg"></span>
							</div>
							<div class="info-selfy">
								<label for="selfy-change">한 줄 소개(0/800)</label> <input
									type="text" name="selfy" id="selfy-change" required />
							</div>
							<div class="info-website">
								<label for="website-change">웹 사이트</label> <input type="text"
									name="website" id="web-change" placeholder="http://" required />
							</div>
							<div class="user-delete">
								<a
									href="${pageContext.request.contextPath}/member/memberDeleteOk.me"
									class="userDelete">*회원 탈퇴하기</a>
							</div>
							<div class="cencel-save">
								<button>
									<a
										href="${pageContext.request.contextPath}/mypage/creationsOk.mp">
										취소</a>
								</button>
								<button>
									<a
										href="${pageContext.request.contextPath}/mypage/creationsOk.mp">저장</a>
								</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</section>
	</form>
	<footer></footer>
	<script src = "https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src ="${pageContext.request.contextPath}/assets/js/member/checkNickname.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/member/delete.js"></script>
</body>
</html>
