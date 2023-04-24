<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>문의 게시판</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/qna/qnaBoardList.css" />
</head>
<!-- 헤더 -->

<%@include file="/app/header.jsp"%>

<body>
	<form action="${pageContext.request.contextPath}/qna/QnAListOk.qn"
		method="post">
		<div class="container">
			<div class="write-btn-wrap">
				<!-- 글쓰기 페이지 이동 처리 -->
				<a href="${pageContext.request.contextPath}/qna/QnAWrite.qn"
					class="write-btn">글쓰기</a>
			</div>
			<table class="board-table">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>날짜</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<!-- ========== 게시글 목록 예시 =========== -->

					<c:choose>
						<c:when test="${not empty qnaList}">
							<c:forEach var="qna" items="${qnaList}">
								<tr>
									<td class="no"><c:out value="${qna.getQnaNumber()}" /></td>
									<td class="title"><a
										href="${pageContext.request.contextPath}/qna/QnAReadOk.qn?qnaNumber=${qna.getQnaNumber()}">
											<c:out value="${qna.getQnaTitle()}" />
									</a></td>
									<td class="author"><a href="${pageContext.request.contextPath}/mypage/creationsOk.mp"><c:out
											value="${qna.getMemberNickname()}" /></a></td>
									<td class="date"><c:out value="${qna.getQnaWriteday()}" /></td>
									<td class="hit"><c:out value="${qna.getQnaReadCount()}" /></td>
								</tr>
							</c:forEach>
						</c:when>

						<c:otherwise>
							<tr>
								<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>



					<!-- ========== /게시글 목록 예시 =========== -->
				</tbody>
			</table>
			<div class="pagination">
				<ul>
					<!-- ========== 페이징 처리 예시 ============ -->
					<c:if test="${prev}">
						<li><a
							href="${pageContext.request.contextPath}/qna/QnAListOk.qn?page=${startPage-1}"
							class="prev">&lt;</a></li>
					</c:if>

					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:choose>
							<c:when test="${i == page }">
								<li><a href="#" class="active"> <c:out value="${i}" />
								</a></li>
							</c:when>
							<c:otherwise>
								<li><a
									href="${pageContext.request.contextPath}/qna/QnAListOk.qn?page=${i}">
										<c:out value="${i}" />
								</a></li>
							</c:otherwise>
						</c:choose>

					</c:forEach>

					<c:if test="${next}">
						<li><a
							href="${pageContext.request.contextPath}/qna/QnAListOk.qn?page=${endPage+1}"
							class="next">&gt;</a></li>
					</c:if>
					<!-- ========== /페이징 처리 예시 ============ -->
				</ul>
			</div>
		</div>
	</form>
</body>
<!-- 푸터 -->
<%@include file="/app/footer.jsp"%>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/member/join.js"></script>
</html>
