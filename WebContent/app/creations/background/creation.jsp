<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/creations/creations.css">
</head>
<body>
	<!-- 헤더 -->
	<%@include file="/app/header.jsp"%>
	<form action="${pageContext.request.contextPath}/creations/creationRead.ct" method="post">
	<hr>
  <main>
  <input type="hidden" name="creationNumber" value="${creation.getCreationNumber()}" >
    <div class="main">
      <div class="main-box-bin"></div>
      <div class="creations-background-title">
        <h3> <c:out value="${creation.getCreationTitle()}"/> </h3>
      </div>
      <div class="background-creations-main">
        <div class="creations-info">
          <div class="creations-img">
			<img src="${pageContext.request.contextPath}/assets/images/member/—Pngtree—vector business men icon_4186858.png">
          </div>
          <div class="creations-author">
            <span> <c:out value="${creation.getMemberNickname()}"/> </span>
          </div>
          <div class="follow-btn">
            <a href="#">팔로우 ✔</a>
          </div>
        </div>
        <div class="creations-main">
          <div class="creations-main-content">
          <c:forEach var="creationFile" items="${creation.getFiles()}">
          	<img src="${pageContext.request.contextPath}/upload/${creationFile.getFileSystemName()}">
          </c:forEach>
          </div>
          <div class="creations-comment-content">
           <span> <c:out value="${creation.getCreationContent()}"/> </span>
          </div>
        </div>
        <div class="click-main">
        <div class="click">
          <div class="creations-like">
            <img src="${pageContext.request.contextPath}/assets/images/member/free-icon-hearts-138533.png">
            <c:out value="${likeCount }"/>
          </div>
          <div class="creations-comment">
            <img src="${pageContext.request.contextPath}/assets/images/member/pngegg.png">
            <c:out value="${creationComment }"/>
          </div>
          </div>
          
          <div class="click-btn">
          <c:if test="${sessionScope.memberNumber == creation.getMemberNumber() }">
          <div class="edit-btn">
            <a href="${pageContext.request.contextPath}/creations/creationUpdate.ct?creationNumber=${creation.getCreationNumber()}">수정</a>
          </div>
          <div class="delete-btn">
            <a href="#">삭제</a>
          </div>
          </c:if>
          <div class="list-btn" data-creationNumber="${creation.getCreationNumber() }">
            <a href="${pageContext.request.contextPath}/creations/pageListOk.ct">목록</a>
          </div>
          
        </div>
        </div>
        </div>

        <div class="comment">
          <div class="comment-input">
          <input type="hidden" name="creationNumber" value="${creation.getMemberNumber() }">
            <div class="comment-text">
              <textarea name="commentContent" id="content" placeholder="댓글 내용을 입력하세요."></textarea>
            </div>
            <div class="comment-ok-btn">
              <button type="button" class="comment-submit">작성</button>
            </div>
          </div>

          <div class="comment-border">
          <%-- 	<c:choose>
          		<c:when test="${not empty commentList}">
          			<c:forEach var="commentList" items="${commentList}">
          				<div class="comment-main">
				            <div class="comment-img-box">
				          <div class="comment-img">
				            <img src="${pageContext.request.contextPath}/assets/images/member/—Pngtree—vector business men icon_4186858.png">
				          </div>
				        </div>
				          <div class="comment-box">
				            
				            <div class="comment-member">
				              <c:out value="${commentList.getMemberNickname() }"/>
				              <div class="comment-content">
				               <c:out value="${commentList.getCommentContent()}"/> 
				              </div>
				            </div>
				            <div class="comment-writeday">
				             <c:out value="${commentList.getCommentWritedate()}"/> 
				            </div>
				            </div>
				            
				            <div class="comment-btn">
				              <button type="button">수정</button>
				              <button type="button">삭제</button>
				            </div>
				          </div>
          			</c:forEach>
          			
          		</c:when>
          		
          		<c:otherwise>
          			<h4>현재 작성된 댓글이 없습니다.</h4>
          		</c:otherwise>
          	</c:choose> --%>
            </div>
        </div>
      </div>
    </main>
</form>
  	<!-- 푸터 -->
	<%@include file="/app/footer.jsp"%>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		let memberNumber = "${sessionScope.memberNumber}";
	</script>
	<script src="${pagetContext.request.contextPath}/assets/js/creation/creation.js"></script>
</body>
</html>