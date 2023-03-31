<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>손글씨페이지</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/creations/handwrting-creations-1in.css" />
  </head>

  <%@include file ="/app/header.jsp" %>
  
  <body>
    <div class="create-card">
      <div class="create-logo">
        <a href="#">
          <a href="#"> <img src="/assets/img/people.png" alt="" class="create-people-img" />작가 이름</a>
          <button type="submit" class="follow">팔로우+</button>
          <br />
          <br />
          <img src="/assets/images/creations/hand/8-removebg-preview.png" alt="" class="create-card-img" />
        </a>
        <br />
        <div class="create-title">
          <textarea name="create-drow" id="gogi" placeholder="창작물 소개란"></textarea>

          <div class="create-people"></div>
        </div>
        <div class="icon-box">
          <a href="#" class="a__inline-block">
            <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />10+
          </a>
          <th></th>
          <a href="#" class="a__inline-block">
            <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />3
          </a>
        </div>
      </div>
    </div>
           <div class="reply-date">
          2023-03-05
          <br />
          <span class="reply-member">작성자</span>
        <textarea id="comment-input" placeholder="댓글을 입력해 주세요."></textarea>
        <button class="btn">등록</button>
      </div>
      </div>
  </body>
       <br>
    <br>
    <br>

    <%@include file ="/app/footer.jsp" %>
  <!-- 푸터 -->

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/member/join.js"></script>  
</html>
