<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>newlight</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
  </head>
  <body>
  <%@include file="/app/header.jsp"%>

    <section>
       <div class="category-container">
        <div class="category-menu">
          <ul class="menu">
            <li class="menu-list">
              <a href="#" class="menu-list-1"
                >손글씨(Font)
                <img src="../img/handpen.png" alt="" class="handpen-img" />
              </a>
            </li>
            <li class="menu-list">
              <a href="#" class="menu-list-2"
                >배경화면
                <img src="../img/display.png" alt="" class="display-img" />
              </a>
            </li>
            <li class="menu-list">
              <a href="#" class="menu-list-3"
                >아이콘
                <img src="../img/iconsmile-menu.png" alt="" class="icon-img" />
              </a>
            </li>
            <li class="menu-list">
              <a href="${pageContext.request.contextPath}/app/creations/theme/kakaoBoard.jsp" class="menu-list-4"
                >카톡테마
                <img src="../img/kakao-talk.png" alt="" class="kakaotheme-img" />
              </a>
            </li>
            <li class="menu-list">
              <a href="${pageContext.request.contextPath}/app/creations/ani/aniBoard.jsp" class="menu-list-5"
                >만화
                <img src="../img/animation.png" alt="" class="ani-img" />
              </a>
            </li>
          </ul>
        </div>
        <div class="category-create-container">
          <ul class="create-list">
            <div class="create-card">
              <div class="create-logo">
                <a href="#">
                  <img src="../img/mainpage_examImg01.png" alt="" class="create-card-img" />
                </a>
                <div class="create-title">
                  <h4>제목</h4>
                  <div class="create-people">
                    <a href="#"> <img src="../img/people.png" alt="" class="create-people-img" />작가 이름</a>
                  </div>
                </div>
                <div class="icon-box">
                  <a href="#" class="a__inline-block">
                    <img src="../img/icon-hearts-138533.png" alt="" class="like-icon-img" />
                  </a>
                  <a href="#" class="a__inline-block">
                    <img src="../img/reply.png" alt="" class="reply-icon-img" />
                  </a>
                </div>
              </div>
            </div>
            <div class="create-card">
              <a href="#">
                <img src="../img/mainpage_examImg02.png" alt="" class="create-card-img" />
              </a>
              <div class="create-title">
                <h4>제목</h4>
                <div class="create-people">
                  <a href="#"> <img src="../img/people.png" alt="" class="create-people-img" />작가 이름</a>
                </div>
              </div>
              <div class="icon-box">
                <a href="#" class="a__inline-block">
                  <img src="../img/icon-hearts-138533.png" alt="" class="like-icon-img" />
                </a>
                <a href="#" class="a__inline-block">
                  <img src="../img/reply.png" alt="" class="reply-icon-img" />
                </a>
              </div>
            </div>
            <div class="create-card">
              <a href="#">
                <img src="../img/mainpage_examImg03.png" alt="" class="create-card-img" />
              </a>
              <div class="create-title">
                <h4>제목</h4>
                <div class="create-people">
                  <a href="#"> <img src="../img/people.png" alt="" class="create-people-img" />작가 이름</a>
                </div>
              </div>
              <div class="icon-box">
                <a href="#" class="a__inline-block">
                  <img src="../img/icon-hearts-138533.png" alt="" class="like-icon-img" />
                </a>
                <a href="#" class="a__inline-block">
                  <img src="../img/reply.png" alt="" class="reply-icon-img" />
                </a>
              </div>
            </div>
            <div class="create-card">
              <a href="#">
                <img src="../img/mainpage_examImg04.png" alt="" class="create-card-img" />
              </a>
              <div class="create-title">
                <h4>제목</h4>
                <div class="create-people">
                  <a href="#"> <img src="../img/people.png" alt="" class="create-people-img" />작가 이름</a>
                </div>
              </div>
              <div class="icon-box">
                <a href="#" class="a__inline-block">
                  <img src="../img/icon-hearts-138533.png" alt="" class="like-icon-img" />
                </a>
                <a href="#" class="a__inline-block">
                  <img src="../img/reply.png" alt="" class="reply-icon-img" />
                </a>
              </div>
            </div>
            <div class="create-card">
              <a href="#">
                <img src="../img/mainpage_examImg05.png" alt="" class="create-card-img" />
              </a>
              <div class="create-title">
                <h4>제목</h4>
                <div class="create-people">
                  <a href="#"> <img src="../img/people.png" alt="" class="create-people-img" />작가 이름</a>
                </div>
              </div>
              <div class="icon-box">
                <a href="#" class="a__inline-block">
                  <img src="../img/icon-hearts-138533.png" alt="" class="like-icon-img" />
                </a>
                <a href="#" class="a__inline-block">
                  <img src="../img/reply.png" alt="" class="reply-icon-img" />
                </a>
              </div>
            </div>
            <div class="create-card">
              <a href="#">
                <img src="../img/mainpage_examImg06.png" alt="" class="create-card-img" />
              </a>
              <div class="create-title">
                <h4>제목</h4>
                <div class="create-people">
                  <a href="#"> <img src="../img/people.png" alt="" class="create-people-img" />작가 이름</a>
                </div>
              </div>
              <div class="icon-box">
                <a href="#" class="a__inline-block">
                  <img src="../img/icon-hearts-138533.png" alt="" class="like-icon-img" />
                </a>
                <a href="#" class="a__inline-block">
                  <img src="../img/reply.png" alt="" class="reply-icon-img" />
                </a>
              </div>
            </div>
            <div class="create-card">
              <a href="#">
                <img src="../img/mainpage_examImg07.png" alt="" class="create-card-img" />
              </a>
              <div class="create-title">
                <h4>제목</h4>
                <div class="create-people">
                  <a href="#"> <img src="../img/people.png" alt="" class="create-people-img" />작가 이름</a>
                </div>
              </div>
              <div class="icon-box">
                <a href="#" class="a__inline-block">
                  <img src="../img/icon-hearts-138533.png" alt="" class="like-icon-img" />
                </a>
                <a href="#" class="a__inline-block">
                  <img src="../img/reply.png" alt="" class="reply-icon-img" />
                </a>
              </div>
            </div>
            <div class="create-card">
              <a href="#">
                <img src="../img/mainpage_examImg08.png" alt="" class="create-card-img" />
              </a>
              <div class="create-title">
                <h4>제목</h4>
                <div class="create-people">
                  <a href="#"> <img src="../img/people.png" alt="" class="create-people-img" />작가 이름</a>
                </div>
              </div>
              <div class="icon-box">
                <a href="#" class="a__inline-block">
                  <img src="../img/icon-hearts-138533.png" alt="" class="like-icon-img" />
                </a>
                <a href="#" class="a__inline-block">
                  <img src="../img/reply.png" alt="" class="reply-icon-img" />
                </a>
              </div>
            </div>
            <div class="create-card">
              <a href="#">
                <img src="../img/mainpage_examImg09.png" alt="" class="create-card-img" />
              </a>
              <div class="create-title">
                <h4>제목</h4>
                <div class="create-people">
                  <a href="#"> <img src="../img/people.png" alt="" class="create-people-img" />작가 이름</a>
                </div>
              </div>
              <div class="icon-box">
                <a href="#" class="a__inline-block">
                  <img src="../img/icon-hearts-138533.png" alt="" class="like-icon-img" />
                </a>
                <a href="#" class="a__inline-block">
                  <img src="../img/reply.png" alt="" class="reply-icon-img" />
                </a>
              </div>
            </div>
          </ul>
        </div>
      </div>
    </section>
    <%@include file ="/app/footer.jsp" %>
  </body>
</html>
