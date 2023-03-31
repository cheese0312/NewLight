<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>1차 배경화면</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/creations/background-creations1.css" />
  </head>
    <%@include file ="/app/header.jsp" %>
  <body>
    <section>
      <div class="category-create-container">
        <div class="sun">
          <img id="moniter" src="/assets/images/creations/background-1/background-creation1 icon.png" alt="" />배경화면 페이지 입니다:)
        </div>
       <div class="creations-btn">
      <a href="${pageContext.request.contextPath}/app/main/upload.jsp" id="upup">작품 올리기</a>
    </div>
        <ul class="create-list">
          <div class="create-card">
            <div class="create-logo">
              <a href="${pageContext.request.contextPath}/app/creations/background/background1in.jsp">
                <img src="/assets/images/creations/background-1/background-creation1.jfif" alt="" class="create-card-img" />
              </a>
              <div class="create-title">
                <h4>제목</h4>
                <div class="create-people">
                  <a href="#"> <img src="/assets/img/people.png" alt="" class="create-people-img" />작가 이름</a>
                </div>
              </div>
              <div class="icon-box">
                <a href="#" class="a__inline-block">
                  <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
                </a>
                <a href="#" class="a__inline-block">
                  <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
                </a>
              </div>
            </div>
          </div>
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/background/background1in.jsp">
              <img src="/assets/images/creations/background-1/background-creation2.jfif" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/background/background1in.jsp">
              <img src="/assets/images/creations/background-1/background-creation3.jfif" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
        </ul>
        <ul class="create-list">
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/background/background1in.jsp">
              <img src="/assets/images/creations/background-1/background-creation4.jfif" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/background/background1in.jsp">
              <img src="/assets/images/creations/background-1/background-creation5.jfif" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/background/background1in.jsp">
              <img src="/assets/images/creations/background-1/background-creation6.jfif" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
        </ul>
        <ul class="create-list">
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/background/background1in.jsp">
              <img src="/assets/images/creations/background-1/background-creation7.jfif" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/background/background1in.jsp">
              <img src="/assets/images/creations/background-1/background-creation8.jfif" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
          <div class="create-card">
            <a href="${pageContext.request.contextPath}/app/creations/background/background1in.jsp">
              <img src="/assets/images/creations/background-1/background-creation9.jfif" alt="" class="create-card-img" />
            </a>
            <div class="create-title">
              <h4>제목</h4>
              <div class="create-people">
                <a href="#"> <img src="/assets/img/people.png" alt="" class="create-people-img" />작가 이름</a>
              </div>
            </div>
            <div class="icon-box">
              <a href="#" class="a__inline-block">
                <img src="/assets/img/icon-hearts.png" alt="" class="like-icon-img" />
              </a>
              <a href="#" class="a__inline-block">
                <img src="/assets/img/reply.png" alt="" class="reply-icon-img" />
              </a>
            </div>
          </div>
        </ul>
      </div>
      </form>
    </section>
    <br>
    <br>
    <br>

    <%@include file ="/app/footer.jsp" %>
	<!-- 푸터 -->

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/member/join.js"></script>  
  </body>
</html>
