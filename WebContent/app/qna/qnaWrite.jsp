<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>reply</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/qna/qna-reply-write.css" />
  </head>
   <%@include file ="/app/header.jsp" %>
  <div class="list-box">
    <ul id="list">
      <li>
        <div>
          <h3 class="title">게시글 제목</h3>
          <h5 class="user-info fs-12 txt-gray">작성자 | 2023-03-19 19:15:60</h5>
        </div>
        <br />
        <div>
          <a class="list-content-back" href="${pageContext.request.contextPath}/app/qna/qnaBoardList.jsp"> 목록 </a>
          <br />
          <br />
          <h4 class="content">게시글</h4>
        </div>

        <div class="reply-box fs-12">
          <div class="reply-write">
            <input type="text" id="replyUserName" style="width: 20%; height: 25px" />
            <br />
            <br />
            <h4 class="content">본문 내용</h4>
            <textarea name="reply" id="reply-content" style="width: 50%; height: 700px"></textarea>
          </div>
          <div class="reply-list">
            <input class="btn" type="submit" value="첨부파일" />
            <input class="btn" type="submit" value="등록" />
            <input class="btn" type="button" value="취소" />
          </div>
        </div>
      </li>
    </ul>
  </div>
  <br />
  <br />
  <br />

  <!-- 





라인~~~~~~~~~~~~~~~~~~






 -->
      <br>
    <br>
    <br>

    <%@include file ="/app/footer.jsp" %>
  <!-- 푸터 -->

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/member/join.js"></script>  
</html>
