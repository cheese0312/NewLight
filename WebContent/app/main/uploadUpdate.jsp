<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>창작물 업로드</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/creations/upload.css">
</head>
<body>

	<!-- 헤더 -->
    <%@include file ="/app/header.jsp" %>
  <main>
    <form id="write-form" action="${pageContext.request.contextPath}/creations/creationUpdateOk.ct" method="post"
	enctype="multipart/form-data">
    <div class="creations-main">
   	<input type="hidden" name="creationNumber" value="${creations.getCreationNumber()}" >
   	<div class="main-title">
      <h3>나만의 새로운 빛 만들기 - <label><c:out value="${creations.getMemberNickname()}"/></label></h3>
      </div>
    
    <div class="creations-title">
      <div class="content-mente">
      <label>제목을 입력하세요 :)</label>
      </div>
      <input type="text" value="${creations.getCreationTitle()}" name="creationTitle">
    </div>
    <div class="creations-option">
      <div class="category-name">
        <div class="content-mente">
     <label>카테고리를 선택하세요</label> 
     </div>
    </div>
    <div class="category">
    <div class="category1">
      <select name="category1" id="category1">
        <option value="0">----</option>
        <option value="101">별구름</option>
        <option value="201">별숲</option>
      </select>
    </div>
    <div class="category2">
      <select name="category2" id="category2">
        <option value="0">----</option>
        <option value="손그림">손그림</option>
        <option value="배경화면">배경화면</option>
        <option value="트레이싱">트레이싱</option>
        <option value="카톡테마">카카오톡 테마</option>
        <option value="폰트">폰트</option>
        <option value="만화">만화</option>
      </select>
    </div>
  </div>
    </div>
    <div class="creations-content">
      <div class="content-mente">
      <label> 창작물 소개를 적어주세요 :) </label>
    </div>
      <textarea name="creationContent" id="creations-content" cols="70" rows="12"><c:out value="${creations.getCreationContent()}"/></textarea>
    </div>

    <div class="form-group">
      <label for="file">파일 첨부</label>
      <div class="image-upload-wrap">
       <input type="file" id="file" name="boardFile" accept=".jpg, .jpeg, .png" multiple/>
          <div class="image-upload-box">
             <div class="upload-text">
                <div class="upload-icon">
                   <svg viewBox="0 0 48 48"><path fill-rule="evenodd" clip-rule="evenodd" d="M25.9087 8.12155L36.4566 18.3158C37.2603 18.7156 38.2648 18.6156 38.968 18.3158C39.6712 17.5163 39.6712 16.4169 38.968 15.7173L25.3059 2.5247C24.6027 1.8251 23.4977 1.8251 22.7945 2.5247L9.03196 15.8172C8.32877 16.5168 8.32877 17.6162 9.03196 18.3158C9.73516 19.0154 10.9406 19.0154 11.6438 18.3158L22.2922 8.12155V28.4111C22.2922 29.4106 23.0959 30.2091 24.1005 30.2091C25.105 30.2091 25.9087 29.4106 25.9087 28.4111V8.12155ZM5.61644 29.4104C5.61644 28.4109 4.81279 27.6104 3.80822 27.6104C2.80365 27.6104 2 28.5099 2 29.5093V44.202C2 45.2015 2.80365 46 3.80822 46H44.1918C45.1963 46 46 45.2015 46 44.202V29.5093C46 28.5099 45.1963 27.7113 44.1918 27.7113C43.1872 27.7113 42.3836 28.5099 42.3836 29.5093V42.3021H5.61644V29.4104Z"></path></svg>
                </div>
                <div class="upload-count">
                   이미지 업로드
                </div>
             </div>
             <div class="upload-text">
                최대 10개까지 업로드 가능
             </div>
             <div class="upload-text">
                파일 형식 : jpg, png, ktheme, apk, ttf
             </div>
             <div class="upload-text">
                ※ 이미지를 등록하면 즉시 반영됩니다.
             </div>
          </div>
       </div>
         <div class="img-controller-box">
            <ul class="file-list">
               
            </ul>
         </div>          
    </div>

    <div class="submit-btn">
      <button type="button" class="submit">올리기</button>
      <button type="button" class="cancel-btn">취소</button>
    </div>
    
  </div>
  </form>
  </main>
  <!-- 푸터 -->
    <%@include file ="/app/footer.jsp" %>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="${pagetContext.request.contextPath}/assets/js/creation/boardUpload.js"></script>
</body>
</html>
