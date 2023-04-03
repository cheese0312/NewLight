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
    <link rel="stylesheet" href="../css/aniview.css" />
  </head>
  <body>
 	<%@include file="/app/header.jsp"%>
    <section>
      <div class="ani-container">
        <div class="ani-box">
          <form action="">
            <fieldset>
              <div class="create-people">
                <img src="../img/people.png" alt="" class="create-people" /><a href="#">작가</a>
              </div>
            </fieldset>
          </form>
          <ul class="ani-box-slide">
            <li>
              <div class="ani-slide-img">
                <img src="../img/instatun_01.png" alt="" class="ani-view" />
              </div>
            </li>
            <li>
              <div class="ani-slide-img">
                <img src="../img/instatun_02.png" alt="" class="ani-view" />
              </div>
            </li>
            <li>
              <div class="ani-slide-img">
                <img src="../img/instatun_03.png" alt="" class="ani-view" />
              </div>
            </li>
            <li>
              <div class="ani-slide-img">
                <img src="../img/instatun_04.png" alt="" class="ani-view" />
              </div>
            </li>
            <li>
              <div class="ani-slide-img">
                <img src="../img/instatun_05.png" alt="" class="ani-view" />
              </div>
            </li>
            <li>
              <div class="ani-slide-img">
                <img src="../img/instatun_06.png" alt="" class="ani-view" />
              </div>
            </li>
            <li>
              <div class="ani-slide-img">
                <img src="../img/instatun_07.png" alt="" class="ani-view" />
              </div>
            </li>
            <li>
              <div class="ani-slide-img">
                <img src="../img/instatun_08.png" alt="" class="ani-view" />
              </div>
            </li>
            <li>
              <div class="ani-slide-img">
                <img src="../img/instatun_09.png" alt="" class="ani-view" />
              </div>
            </li>
            <li>
              <div class="ani-slide-img">
                <img src="../img/instatun_10.png" alt="" class="ani-view" />
              </div>
            </li>
          </ul>
          <div class="prev">&lt</div>
          <div class="next">&gt</div>
        </div>
      </div>
      <div class="icon-box">
        <a href="#" class="a_inline-block"><img src="../img/icon-hearts-138533.png" alt="" class="like-icon-img" /></a>
        <a href="#" class="a_inline-block"><img src="../img/reply.png" alt="" class="reply-icon-img" /></a>
      </div>
      <form action="">
        <div class="reply-box">
          <label for=""> 댓글(0/300)</label>
          <textarea name="" id="reply-box" placeholder="댓글을 입력하세요."></textarea>
          <div class="reply-button">
            <button type="">등록</button>
          </div>
        </div>
      </form>
    </section>
    <%@include file ="/app/footer.jsp" %>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="../js/anislide.js"></script>
  </body>
</html>
