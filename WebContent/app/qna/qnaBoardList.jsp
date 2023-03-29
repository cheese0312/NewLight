<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>자유게시판</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/qna/qnaBoardList.css" />
</head>
<!-- 헤더 -->

<%@include file="/app/header.jsp"%>

<body>
	<div class="container">
		<div class="write-btn-wrap">
			<!-- 글쓰기 페이지 이동 처리 -->
			<a href="#" class="write-btn">글쓰기</a>
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
								<td class="no"><c:out value="${qna_getQnaNumber()}"/></td>
								<td class="title"><c:out value="${qna_getQnaTitle()}"/>/td>
								<td class="author"><c:out value="${qna_getQnaMemberNickname()}"/></td>
								<td class="date"><c:out value="${qna_getQnaWriteday()}"/></td>
								<td class="hit"><c:out value="${qna_getQnaReadCount()}"/></td>
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
				<li><a href="#" class="prev">&lt;</a></li>
				<li><a href="#" class="active">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#" class="next">&gt;</a></li>
				<!-- ========== /페이징 처리 예시 ============ -->
			</ul>
		</div>
	</div>
</body>
<!-- 푸터 -->
<%@include file="/app/footer.jsp"%>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/member/join.js"></script>
</html>
