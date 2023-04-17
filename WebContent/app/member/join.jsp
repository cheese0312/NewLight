<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/member/joinStyle2.css">
</head>
<body>
	<!-- 헤더 -->
	<%@include file="/app/header.jsp"%>
	<main>
		<form action="${pageContext.request.contextPath}/member/joinOk.me" method=post enctype="multipart/form-data">

			<div class="main">
				<table width="600px">
					<tr>
						<td><span class="join"></span><span></span></td>
					</tr>
				</table>

				<table width="600px" class="table01">
					<colgroup>
						<col width="150">
						<col width="*">
					</colgroup>
 					<tr>
						<td class="tle">내 프로필</td>
						<td class="cont" id="myPfp">
      					<input class="ed upload-name" placeholder="첨부파일">
						<label for="file" class="btn-upload">프로필 선택</label>
					      <input type="file" id="file" name="memberFile" accept=".jpg, .jpeg, .png" >
						</td>
					</tr>
					<tr>
						<td class="tle">이름</td>
						<td class="cont"><input type="text" name="memberName" placeholder="이름을 입력하세요"
							class="ed" required> <span class="cmt">* 공백없이 한글만 입력 가능</span></td>
					</tr>
					<tr>
						<td class="tle">핸드폰 번호</td>
						<td class="cont"><input type="text" name="memberPhoneNumber" placeholder="핸드폰번호을 입력하세요"
							class="ed" required> <span class="cmt">* 공백없이 숫자만 입력 가능</span></td>
					</tr>
					<tr>
						<td class="tle">아이디</td>
						<td class="cont">
							<div class="col-md-4">
								<input type="text" maxlength=20 size=20 id="id" name="memberId" class="ed" required
									placeholder="ID를 입력하세요" />
								<!-- <input type="button" value="ID중복확인" id="idCheck()"></td> -->
								<span class="check-msg" id="check-id-msg"></span>
							</div> <!-- <input type="hidden" id="flag" name="flag" value="false"> -->
						</td>
					</tr>
					<tr>
						<td class="tle">비밀번호</td>
						<td class="cont"><input class=ed type=password name="memberPassword" id="password"
							size=20 maxlength="20" required placeholder="비밀번호를 입력하세요">
							<span class="cmt">* 영어, 숫자, 특수문자를 포함한 8글자 이상</span>
							<span class="check-msg" id="check-pw-msg"></span>
							</td>
					</tr>
					<tr>
						<td class="tle">닉네임</td>
						<td class="cont"><input class="ed" type="text" id="nickname"
							name="memberNickname" size="30" maxlength="50"
							placeholder="활동 할 닉네임을 입력하세요">
							<span class="check-msg2" id="check-nickname-msg">
							</td>
					</tr>
					<tr>
						<td class="tle">한 줄 소개</td>
						<td class="cont"><input class="ed" type="text"
							name="memberComment" size="30" maxlength="50"
							placeholder="한 줄 소개를 입력해 주세요"></td>
					</tr>
					<tr>
						<td class="tle">E-mail</td>
						<td class="cont"><input class="ed" type="text" id="reg_mb_email" name="memberEmail"
							size=38 maxlength=100 required placeholder="이메일을 입력하세요">
							<span id='msg_mb_email'></span></td>
					</tr>
					<tr>
						<td class="tle">생년월일</td>
						<td class="cont">
						<input class="ed" type="text" name="memberBirth" size="30" maxlenght=100 placeholder="생년월일을 입력하세요"> 
						</td>
					</tr>
					<tr>
						<td class="tle">주소</td>
						<td class="cont">
							<table width="330" class="nobd">
<!-- 								<tr>
									<td height="25" class="nobd"><input class=ed type=text
										id="zip" name="zip" required></td>
								</tr> -->
								<tr>
									<td height="25" colspan="2" class="nobd"><input class=ed
										type=text name="memberAddress1" id="addr1" size=60 required></td>
								</tr>
								<tr>
									<td height="25" colspan="2" class="nobd"><input class=ed
										type=text name="memberAddress2" id='addr2' size=60 required></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class="tle">웹 사이트</td>
						<td class="cont"><input class="ed" id="reg_mb_web" name="memberWebsite"
							type="text" size="38" maxlength="100"
							placeholder="공유할 웹 사이트 주소를 넣어주세요"></td>
					</tr>
				</table>

				<div class="mg_t20">
					<div class="join-btn"></div>
					<input type="button" class="myButton" value="회원가입">
				</div>
			</div>
		</form>
	</main>
	<!-- 푸터 -->
	<%@include file="/app/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/member/join.js"></script>  
</body>
</html>