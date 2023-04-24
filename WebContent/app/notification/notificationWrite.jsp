<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>글쓰기</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/community/communityWrite.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
</head>
<body>

     <%@include file ="/app/header.jsp" %>
    <form action="${pageContext.request.contextPath}/notification/notificationWriteOk.nc" method="post" >
    <section>
        <div class="big-box">

            
            
            <div class="small-box">
              <div class="text1"><p>제목</p></div>
              <input type="text" class="title" name="notificationTitle">
              <br>

              <br>
              <div class="word1"> <p>내용</p></div>
             <!--  <input type="text" class="word" name="communityContent"> -->
              <textarea type="text" class="word" name="notificationContent"></textarea>
            </div>
              <br>
              <br>

                  <div class="button">
                  <button>작성완료</button>
                  <button type="button" class="cancel-btn">취소</button></div> 
                </div>
                 
                  <br>
        
       
    </section>
    </form>
       <%@include file ="/app/footer.jsp" %>
       <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
       <script src="${pageContext.request.contextPath}/assets/js/notification/notificationWrite.js"></script> 
</body>
</html>