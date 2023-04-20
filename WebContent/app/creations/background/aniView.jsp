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
	href="${pageContext.request.contextPath}/assets/css/aniview.css" />
	
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
							<img src="${pageContext.request.contextPath}/userProfile/${creation.getMemberPfp()}"
								alt="" />
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
						<div class="creations-comment-content">
							 <span> <c:out value="${creation.getCreationContent()}" /> </span> 
						</div>
					</div>
					<div class="click-main">
						<div class="click">
							<div class="creations-like">
								<img src="${pageContext.request.contextPath}/assets/images/member/free-icon-hearts-138533.png" alt="" />
								<c:out value="${likeCount }" />
							</div>
							<div class="creations-comment">
								<img src="${pageContext.request.contextPath}/assets/images/member/pngegg.png" alt="" />
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

				<!-- <div class="comment">
					<div class="comment-input">
						<div class="comment-text">
							<textarea name="content" id="content" placeholder="댓글 내용을 입력하세요."></textarea>
						</div>
						<div class="comment-ok-btn">
							<button type="button">작성</button>
						</div>
					</div>

					<div class="comment-border">
						<div class="comment-main">
							<div class="comment-img-box">
								<div class="comment-img">
									<img src="../img/—Pngtree—vector business men icon_4186858.png"
										alt="" />
								</div>
							</div>
							<div class="comment-box">
								<div class="comment-member">
									작성자
									<div class="comment-content">그림이 너무 예뻐요 :)</div>
								</div>
								<div class="comment-writeday">2023-04-05</div>
							</div>

							<div class="comment-btn">
								<button type="button">수정</button>
								<button type="button">삭제</button>
							</div>
						</div>

						<div class="comment-main">
							<div class="comment-img-box">
								<div class="comment-img">
									<img src="../img/—Pngtree—vector business men icon_4186858.png"
										alt="" />
								</div>
							</div>
							<div class="comment-box">
								<div class="comment-member">
									작성자
									<div class="comment-content">그림이 너무 예뻐요 :)</div>
								</div>
								<div class="comment-writeday">2023-04-05</div>
							</div>

							<div class="comment-btn">
								<button type="button">수정</button>
								<button type="button">삭제</button>
							</div>
						</div>

						<div class="comment-main">
							<div class="comment-img-box">
								<div class="comment-img">
									<img src="../img/10_징검다리를_하나_둘.jpg" alt="" />
								</div>
							</div>
							<div class="comment-box">
								<div class="comment-member">
									작성자
									<div class="comment-content">그림이 너무 예뻐요 :)</div>
								</div>
								<div class="comment-writeday">2023-04-05</div>
							</div>

							<div class="comment-btn">
								<button type="button">수정</button>
								<button type="button">삭제</button>
							</div>
						</div>
					</div>
				</div> -->
				<div class="comment">
					<div class="comment-input">
						<input type="hidden" name="creationNumber"
							value="${creation.getMemberNumber() }">
						<div class="comment-text">
							<textarea name="commentContent" id="content" placeholder="댓글 내용을 입력하세요."></textarea>
						</div>
						<div class="comment-ok-btn">
							<button type="button" class="comment-submit commnet-btn-ok">작성</button>
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
	<script src="${pageContext.request.contextPath}/assets/js/anislide.js"></script>
</body>
</html>
