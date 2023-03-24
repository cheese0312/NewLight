<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>themedownload</title>
    <link rel="stylesheet" href="../css/themedownload.css" />
  </head>
  <body>
    <header>
      <div class="header-box">
        <div class="logo">
          <img src="../img/logo2.png" alt="" />
        </div>
        <div class="main-header-box">
          <div class="mian-nav-box"></div>
          <div class="nav">
            <div class="drop-box">
              <div class="dropdown1">
                <li class="dropbtn1">1차 창작물</li>
                <li class="dropdown-content1">
                  <a href="#">손그림</a>
                  <a href="#">배경화면</a>
                  <a href="#">만화</a>
                  <a href="#">폰트</a>
                  <a href="#">카카오톡 테마</a>
                </li>
              </div>
              <div class="dropdown2">
                <li class="dropbtn2">2차 창작물</li>
                <li class="dropdown-content2">
                  <a href="#">배경화면</a>
                  <a href="#">트레이싱</a>
                  <a href="#">카카오톡 테마</a>
                </li>
              </div>
              <div class="dropdown3">
                <li class="dropbtn3">커뮤니티</li>
                <li class="dropdown-content3">
                  <a href="#">배경화면</a>
                  <a href="#">트레이싱</a>
                  <a href="#">카카오톡 테마</a>
                </li>
              </div>
              <div class="dropdown4">
                <li class="dropbtn4">•••</li>
                <li class="dropdown-content4">
                  <a href="#">공지사항</a>
                  <a href="#">문의</a>
                </li>
              </div>
            </div>
          </div>
        </div>
        <div class="btn-box">
          <div class="login-box"></div>
          <a href="#" class="login-btn">로그인</a>
        </div>
      </div>
    </header>
    <section>
      <div class="download-container">
        <div class="create-download">
          <div class="download-page">
            <form action="">
              <fieldset class="download-box">
                <div class="create-people">
                  <img src="../img/people.png" alt="" class="create-people" /><a href="#">작가</a>
                </div>
                <div class="theme-download">
                  <div class="downloader">
                    <a href="#">
                      <img src="../img/kakaothemeImg01.png" alt="" class="create-card-img" />
                    </a>
                  </div>
                  <div class="download-btn-wrap">
                    <div class="theme-down-box">
                      <div class="donwload-icon">
                        <img src="../img/folder.png" alt="" />
                      </div>
                      <div class="donwload-name">구버전 아이메세지 분홍.htheme</div>
                      <div class="donwload-icon2">
                        <a href="#">
                          <img src="../img/themedownload.png" alt="" />
                        </a>
                      </div>
                    </div>
                  </div>
                  <div class="create-title">
                    <h4>제목</h4>
                  </div>
                  <div class="create-info">
                    <textarea name="info" id="create-info" placeholder="창작물 소개"></textarea>
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
              </fieldset>
            </form>
          </div>
        </div>
      </div>
    </section>
    <footer></footer>
  </body>
</html>
