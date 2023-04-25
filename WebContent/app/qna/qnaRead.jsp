<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>글 보기</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/qna/qna-reply-read.css" />
</head>
<%@include file="/app/header.jsp"%>

<br />
<br />
<br />

<form action="${pageContext.request.contextPath}/qna/QnAReadOk.qn"
	method="post">
	<body>
		<div class="container">
			<div class="view-wrap">
				<div class="view-title">
					<h4>
						<span><c:out value="${qna.getQnaTitle()}" /></span>
					</h4>
				</div>
				<hr>

				<div class="view-info">
					<div class="info-title">
						<div class="title-wrap">
							<span class="writer">작성자</span>
							<!-- 임시 작성자 -->
							<div class="content-writer">
								<a
									href="${pageContext.request.contextPath}/mypage/creationsOk.mp"
									style="text-decoration: none; font-weight: bold; color: black;"><c:out
										value="${qna.getMemberNickname()}" /></a>
							</div>
						</div>

						<div class="title-wrap">
							<span class="date">작성일</span>
							<!-- 임시 작성일 -->
							<div class="content-date">
								<c:out value="${qna.getQnaWriteday()}"></c:out>
							</div>
						</div>
						<div class="title-wrap">
							<span class="hit">조회수</span>
							<!-- 임시 조회수 -->
							<div class="content-hit">
								<c:out value="${qna.getQnaReadCount()}" />
							</div>
						</div>
					</div>
					<!-- <div class="info-content">
            <span class="content-writer">작성자</span>
            <span class="content-date">작성일</span>
            <span class="content-hit">조회수</span>
          </div> -->
				</div>
				<!-- 임시 내용 -->
				<div class="view-content">
					<c:out value="${qna.getQnaContent()}" />
				</div>
				<!-- 임시 첨부 파일 -->
				<c:forEach var="qnaFile" items="${qna.getFiles()}">
					<div class="view-attach">
						<img
							src="${pageContext.request.contextPath}/upload/${qnaFile.getFileSystemName()}">
					</div>
				</c:forEach>



				<div class="btn-group">
					<!-- 각 버튼 처리 경로 js로 수정하기 -->
					<button type="button" class="list-btn"
						data-qnanumber="${qna.getQnaNumber()}">목록</button>
					<c:if test="${sessionScope.memberNumber == qna.getMemberNumber()}">
						<button type="button" class="edit-btn">수정</button>
						<button type="button" class="delete-btn">삭제</button>
					</c:if>

				</div>
			</div>
		</div>


		<br />
		<br />
		<!-- 댓글 수정중 -->
		<c:if test="${sessionScope.memberId == 'admin' }">
		<div class="comment-form">
			<form id="comment-form">
				<input type="hidden" name="qnaNumber" value="${qna.getQnaNumber()}">
				<div class="form-group">
					<textarea name="content" id="content" placeholder="댓글 내용을 입력하세요."></textarea>
					<button type="button" class="submit-btn">댓글 작성</button>
				</div>
			</form>
		</div>
		</c:if>

		<div class="comment-list">
			<!-- 리스트 예시 -->
         <ul id="comment-list">
            <li>
               <div class="comment-info">
                  <span class="writer"></span> <span class="date"></span>
               </div>
               <div class="comment-content-wrap">
                  <div class="comment-content">
                     <p></p>
                  </div>
                  <div class="comment-btn-group">
                     <button type=button class="comment-modify">수정</button>
                     <button type=button class="comment-delete">삭제</button>
                  </div>
                  <div class="comment-btn-group none">
                     <button type=button class="comment-modify">수정 완료</button>
                  </div>
               </div>
            </li>
         </ul>
         <!-- /리스트 예시 -->
		</div>

		<!-- 댓글 수정중 -->
</form>
<br />
<br />
<br />

<!-- 푸터 -->
<%@include file="/app/footer.jsp"%>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	let memberNumber = "${sessionScope.memberNumber}";
</script>
<script
	src="${pageContext.request.contextPath}/assets/js/QnA/qnaRead.js"></script>
</html>
