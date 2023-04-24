<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원 관리</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/admin/admin.css">
</head>
<body>
	<!-- 헤더 -->
	<%@include file="/app/header.jsp"%>
	<hr>
	
	<form action="${pageContext.request.contextPath}/admin/adminOk.ad" method="post">
	
	<main>
		<div class="main">
			<div class="main-box-bin"></div>
			<div class="admin-main">
				<div class="admin-btn">
					<div class="admin-member">
						<a href="#">회원 관리</a>
					</div>
					<div class="admin-creations">
						<a href="#">게시물 관리</a>
					</div>
				</div>

				<div class="member-box">
					<div class="member-main">
						<div class="member-name">
							<span>회원 이름</span>
						</div>
						<div class="member-creations">
							<span>회원 게시물 갯수</span>
						</div>
						<div class="member-status">
							<span>회원 상태</span>
						</div>
					</div>
					<hr>
					
					<c:choose>
					<c:when test="${not empty memberList}">
					<c:forEach var="admin" items="${memberList }">
					<c:if test="${admin.getMemberName() != '관리자' }">
					<div class="member-list">
						<div class="member-list-name"><c:out value="${admin.getMemberName()}"/></div>
						<div class="member-list-creations"><c:out value="${admin.getCreationCount()}"/></div>

						<div class="member-list-status member-list-status1">
							
							<c:if test="${admin.getMemberStatus() eq 'Y' }">
							<span class="status none">
								<c:out value="${admin.getMemberStatus()}" />		
							</span>	
							<span class="statusM statusY">활동 가능</span> 
							</c:if>
							
							<c:if test="${admin.getMemberStatus() eq 'N' }">
							<span class="status none">
							<c:out value="${admin.getMemberStatus()}" />
							</span>
							<span class="statusM statusN">활동 불가능</span>
							</c:if>
							
							
							<span class="btn">
								<c:if test="${admin.getMemberStatus() eq 'Y'}">
									<button type="button" class="member-status-btn" data-status="N" data-number="${admin.getMemberNumber() }">활동 불가능</button>
								</c:if>
								<c:if test="${admin.getMemberStatus() eq 'N'}">
									<button type="button" class="member-status-btn" data-status="Y" data-number="${admin.getMemberNumber()}">활동 가능</button>
								</c:if>
							</span>
						</div>
					</div>
					
					<hr>
					</c:if>
					</c:forEach>
					</c:when>
					</c:choose>

					
					<!-- <div class="member-list">
						<div class="member-list-name">아무개2</div>
						<div class="member-list-creations">21개</div>
						<div class="member-list-status member-list-status1">
							활동 가능
							<button type="button" class="member-status-btn">X</button>


						</div>
					</div>


					<hr>
					<div class="member-list">
						<div class="member-list-name">아무개3</div>
						<div class="member-list-creations">9개</div>
						<div class="member-list-status member-list-status2">
							활동 불가능
							<a href="#">▼</a>
							<button type="button" class="member-status-btn">O</button>

						</div>
					</div>


					<hr>
					<div class="member-list">
						<div class="member-list-name">아무개4</div>
						<div class="member-list-creations">16개</div>
						<div class="member-list-status member-list-status1">
							활동 가능
							<button type="button" class="member-status-btn">X</button>


						</div>
					</div> -->


				</div>
			</div>
		</div>
	</main>
	</form>
	<!-- 푸터 -->
	<%@include file="/app/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="${pagetContext.request.contextPath}/assets/js/admin/admin.js">
	</script>
</body>
</html>