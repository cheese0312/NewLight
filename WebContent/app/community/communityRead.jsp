<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>커뮤니티글보기&댓글</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/community/communityRead.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
</head>
<body>
	<%@include file="/app/header.jsp"%>
	<form
		action="${pageContext.request.contextPath}/community/communityReadOk.cm"
		method="post">
		<section>
			<div class="big-box">
				<div class="title">
					<h1>
						<c:out value="${community.getCommunityTitle()}"></c:out>
					</h1>
				</div>
				<div class="menu">
					<div class="writer">
						<h1>
							<c:out value="${community.getCommunityReadCount()}" />
						</h1>
						<div class="writer2">
							<c:out value="${community.getMemberNickName()}" />
						</div>
						<div class="date">
							<p>
								<c:out value="${community.getCommunityWriteDay()}" />
							</p>
						</div>
					</div>

				</div>
				<hr>
				<div class="view-attach">
					<c:forEach var="communityFile"
						items="${community.getCommunityFiles()}">
						<div class="img-box">
							<img
								src="${pageContext.request.contextPath}/upload/${communityFile.getFileSystemName()}">
							<!-- 다운로드 버튼 -->
							<!-- 다운로드 받기 위해서는 시스템이름이 필요하고 사용자에게 파일을 줄 때는 오리지널 네임으로 줘야한다. -->
							<a
								href="${pageContext.request.contextPath}/communityFile/download.comf?fileSystemName=${communityFile.getFileSystemName()}&fileOriginalName=${communityFile.getFileOriginalName()}">
								<div class="download-btn">
									<svg viewBox="0 0 14 14" xmlns="http://www.w3.org/2000/svg">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M6.44325 7.02619L3.36676 4.05286C3.13236 3.93626 2.83937 3.96541 2.63427 4.05286C2.42917 4.28606 2.42917 4.60672 2.63427 4.81077L6.61905 8.6586C6.82415 8.86265 7.14644 8.86265 7.35154 8.6586L11.3656 4.78162C11.5707 4.57757 11.5707 4.25691 11.3656 4.05286C11.1605 3.84881 10.8089 3.84881 10.6038 4.05286L7.49804 7.02619L7.49804 1.1084C7.49804 0.816895 7.26364 0.583984 6.97064 0.583984C6.67765 0.583984 6.44325 0.816895 6.44325 1.1084L6.44325 7.02619ZM1.63829 9.91137C1.63829 9.61987 1.40389 9.38638 1.11089 9.38638C0.817895 9.38638 0.583496 9.64873 0.583496 9.94023V12.8923C0.583496 13.1838 0.817895 13.4167 1.11089 13.4167H12.8894C13.1824 13.4167 13.4168 13.1838 13.4168 12.8923V9.94023C13.4168 9.64873 13.1824 9.41582 12.8894 9.41582C12.5964 9.41582 12.362 9.64873 12.362 9.94023V12.3381H1.63829V9.91137Z"></path></svg>
								</div>
							</a>
						</div>
					</c:forEach>
				<div class="else">
					<p>
						<c:out value="${community.getCommunityContent()}" />
					</p>

				</div>
				</div>
				
				<%--  <input type="hidden" name="commentNumber" value="${communityComment.getCommentNumber()}"> --%>
				<div class="remove">
					<c:if
						test="${sessionScope.memberNumber == community.getMemberNumber()}">
						<button type="button" class="edit">수정</button>
						<button type="button" class="delete">삭제</button>
					</c:if>
					<button type="button" class="list"
						data-communitynumber="${community.getCommunityNumber()}">목록</button>
				</div>
				<div class="line">
					
				</div>

				<div class="comment2">
					<div class="comment-write">
						<textarea class="comment-box" id="content">
                    </textarea>
					</div>
					<div class="btn">
						<button class="go" type=button>댓글 등록</button>
					</div>
					<div class="small-box">
						<h1>댓글</h1>
					</div>
					<div class="hello">
						<div class="date">
							<p3>estherk773</p3>
							<div class="none"></div>
							<div class="fuck">
								<p1>2023-03-20</p1>
							</div>
						</div>
						<div class="commtent-sub" id="comment-sub">
							<div class="delete">
								<p2>안녕하세요. 오리가 너무 귀엽네요 ㅎㅎ </p2>
							</div>
							<div class="comment-btn">
								<button type=button class="comment-modify-ready">수정</button>
								<button type=button class="comment-delete">삭제</button>
							</div>
								<div class="comment-btn none">
									<button type=button class="comment-modify">수정완료</button>
								</div>
						</div>
					</div>
					<!-- </div> -->


				</div>
			</div>
			<!--big-box-->
		</section>
	</form>
	<br>
	<br>
	<br>
	<%@include file="/app/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
	 let memberNumber = "${sessionScope.memberNumber}";
	</script>
	<script src="${pagetContext.request.contextPath}/assets/js/community/communityRead.js"></script>
</body>
</html>