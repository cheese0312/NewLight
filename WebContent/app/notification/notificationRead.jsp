<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/notification/notificationRead.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

</head>
<%@include file ="/app/header.jsp" %> 
<body>
<form action="${pageContext.request.contextPath}/notification/notificationReadOk.nc" method ="post">
    <section>
    <br>
            <div class="big-box">
           <h1>공지사항</h1>
                <div class="title">
                    <h1>
                     <c:out value="${notification.getNotificationTitle()}"/>
                    </h1>
                    <div class="date">
                        <p>
                        <c:out value="${notification.getNotificationWriteDay()}"/>
                        </p>
                    </div>
                </div>
                <hr>
                <div class="else">
                    <p>
                    <c:out value="${notification.getNotificationContent()}"/>
					</p>
                </div>
                				<div class="remove">
					<c:if test = "${sessionScope.memberId == 'admin'}">
						
						<button type="button" class="edit">수정</button>
						<button type="button" class="delete">삭제</button>
					</c:if>
					<button type="button" class="list"
						data-notificationnumber="${notification.getNotificationNumber()}">목록</button>
				</div>
        </div>
    </section>
    </form>
    <br> 
    <br> 
    <br> 
    <br> 
    <br> 
    <%@include file ="/app/footer.jsp" %> 
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
    	 let memberId = "${sessionScope.memberId}";
	</script>
	<script src="${pagetContext.request.contextPath}/assets/js/notification/notificationRead.js"></script>
</body>
</html>