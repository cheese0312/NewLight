<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>aniview</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/creations/aniview.css" />
</head>
<body>
	<%@include file="/app/header.jsp"%>
	<form
		action="${pageContext.request.contextPath}/creations/creationRead.ct">
		<main>
		<input type="hidden" name="creationNumber"
				value="${creation.getCreationNumber()}">
			<div class="main">
				<div class="main-box-bin"></div>
				<div class="creations-background-title">
					<c:out value="${creation.getCreationTitle()}"/>
				</div>
				<div class="background-creations-main">
					<div class="creations-info">
						<div class="creations-img">
							<c:if test="${not empty creation.getMemberPfp()}">
								<img
									src="${pageContext.request.contextPath}/userProfile/${creation.getMemberPfp()}"
									alt="" class="info-people-img" />
									</c:if>
									<c:if test="${empty creation.getMemberPfp()}">
									<img src="${pageContext.request.contextPath}/assets/img/member/people.png"
							class="info-people-img">
									</c:if>
						</div>
						<div class="creations-author">
							<span><c:out value="${creation.getMemberNickname()}" /></span>
						</div>
						<div class="follow-btn">
							<a href="#">팔로우 ✔</a>
						</div>
					</div>
					<div class="creations-main">
						<div class="creations-main-content">
							<ul class="ani-box-slide">
						<c:forEach var="creationFile" items="${files}">
								<li>
									<div class="ani-slide-img">
										<img src="${pageContext.request.contextPath}/upload/${creationFile.getFileSystemName()}" alt="" class="ani-view" />
									</div>
								</li>
							</c:forEach>
							</ul>
							<div class="prev">&lt</div>
							<div class="next">&gt</div>
						</div>
					</div>
						<div class="creations-comment-content">
							 <span> <c:out value="${creation.getCreationContent()}" /> </span> 
						</div>
					<div class="click-main">
						<div class="click">
							<div class="creations-like">
								<img src="${pageContext.request.contextPath}/assets/img/member/free-icon-hearts-138533.png" alt="" />
								<c:out value="${likeCount }" />
							</div>
							<div class="creations-comment">
								<img src="${pageContext.request.contextPath}/assets/img/member/reply.png"/>
								<c:out value="${creationComment }" />
							</div>
						</div>

						<div class="click-btn">
							<div class="edit-btn">
								<a href="${pageContext.request.contextPath}/creations/creationUpdate.ct?creationNumber=${creation.getCreationNumber()}">수정</a>
							</div>
							<div class="delete-btn">
								<a href="#">삭제</a>
							</div>
							<div class="list-btn" data-creationNumber="${creation.getCreationNumber() }">
								<a href="${pageContext.request.contextPath}/creations/pageListOk.ct">목록</a>
							</div>
						</div>
					</div>
				</div>
				<div class="comment">
					<div class="comment-input">
						<input type="hidden" name="creationNumber"
							value="${creation.getMemberNumber()}">
						<div class="comment-text">
							<textarea name="commentContent" id="content" placeholder="댓글 내용을 입력하세요."></textarea>
						</div>
						<div class="comment-ok-btn">
							<button type="button" class="comment-submit commnet-btn-ok">등록</button>
						</div>
					</div>

					<div class="comment-border">

					</div>
				</div>
			</div>
	</form>
	<%@include file="/app/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		let memberNumber = "${sessionScope.memberNumber}";
	</script>
	<script src="${pagetContext.request.contextPath}/assets/js/creation/creation.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/creation/anislide.js"></script>
</body>
</html>
