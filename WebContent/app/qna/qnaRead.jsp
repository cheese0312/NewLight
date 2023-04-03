<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>글 보기</title>
    <link rel="stylesheet" href="./testBoard.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/qna/qna-reply-read.css" />
  </head>
  <%@include file ="/app/header.jsp" %>

  <br />
  <br />
  <br />

  <body>
    <div class="container">
      <div class="view-wrap">
        <div class="view-title">
          <h1>게시글 제목</h1>
        </div>
        <div class="view-info">
          <div class="info-title">
            <div class="title-wrap">
              <span class="writer">작성자</span>
              <!-- 임시 작성자 -->
              <div class="content-writer">닉네임</div>
            </div>
            <div class="title-wrap">
              <span class="date">작성일</span>
              <!-- 임시 작성일 -->
              <div class="content-date">2023-03-05</div>
            </div>
            <div class="title-wrap">
              <span class="hit">조회수</span>
              <!-- 임시 조회수 -->
              <div class="content-hit">21</div>
            </div>
          </div>
          <!-- <div class="info-content">
            <span class="content-writer">작성자</span>
            <span class="content-date">작성일</span>
            <span class="content-hit">조회수</span>
          </div> -->
        </div>
        <!-- 임시 내용 -->
        <div class="view-content">게시글 내용</div>
        <!-- 임시 첨부 파일 -->
        <div class="view-attach">첨부 파일</div>
        <div class="btn-group">
          <!-- 각 버튼 처리 경로 js로 수정하기 -->
          <a href="${pageContext.request.contextPath}/qna/QnAListOk.qn"
            ><button type="button" class="list-btn">목록</button></a
          >
          <button type="button" class="modify-btn">수정</button>
          <button type="button" class="delete-btn">삭제</button>
        </div>
      </div>
    </div>
    <br />
    <br />
    <body>
      <div class="footee" id="form-commentInfo">
        <div id="comment-count">댓글<span id="count">0</span></div>
        <br />
        <br />
        <br />
        <div class="reply-date">
          2023-03-05
          <br />
          <span class="reply-member">작성자</span>
        </div>
        <textarea id="comment-input" placeholder="댓글을 입력해 주세요."></textarea>
        <button class="btn">등록</button>
      </div>
      <div id="comments"></div>
    </body>
  </body>
  <br />
  <br />
  <br />

  <!-- 푸터 -->
  <%@include file ="/app/footer.jsp" %>

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/member/join.js"></script>
</html>
