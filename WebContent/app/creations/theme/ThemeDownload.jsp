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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/themedownload.css" />
  </head>
  <body>
   <%@include file="/app/header.jsp" %>
   <form action="${pageContext.request.contextPath}/creations/creationRead.ct"></form>
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
                        <img src="${pageContext.request.contextPath}/assets/img/folder.png" alt="" />
                      </div>
                      <div class="donwload-name">구버전 아이메세지 분홍.htheme</div>
                      <div class="donwload-icon2">
                        <a href="${pageContext.request.contextPath}/creationsfile/download.ccmf?fileSystemName=${file.getFileSystemName()}&fileOriginalName=${file.getFileOriginalName()}">
                          <img src="${pageContext.request.contextPath}/assets/img/themedownload.png" alt="" />
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
   <%@include file ="/app/footer.jsp" %>
  </body>
</html>
