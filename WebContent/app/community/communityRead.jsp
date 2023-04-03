<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>커뮤니티글보기&댓글</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/community/communityRead.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
</head>
<body>
<%@include file="/app/header3.jsp"%>
<form
		action="${pageContext.request.contextPath}/community/communityReadOk.cm"
		method="post">
	<section>
		<div class="big-box">
			<div class="title">
				<h1> <c:out value="${community.getCommunityTitle()}"></c:out> </h1>
			</div>
			<div class="menu">
				<div class="writer">
					<h1> <c:out value="${community.getCommunityReadCount()}"/> </h1>
					<div class="writer2">
						<c:out value="${community.getMemberNickName()}"/>
					</div>
					<div class="date">
                        <p> <c:out value="${community.getCommunityWriteDay()}"/> </p>
                    </div>
				</div>

			</div>
			<hr>
			<div class="img-box">
				<img src="../img/오리_배경화면.jpg" width="100%" height="600px">
			</div>

			<div class="else">
				<p> <c:out value="${community.getCommunityContent()}"/> </p>
				<div class="comment">
					<img src="../img/free-icon-hearts-138533.png" width="2%">10+
					<div class="blank"></div>
					<img src="../img/pngegg.png" width="2%">12
				</div>
			</div>
			<div class="line">
				<hr>
			</div>

			<div class="comment2">
				<div class="small-box">
					<h1>댓글</h1>
				</div>
				<div class="hello">
					<div class="date">
						<p3>estherk773</p3>
						<div class="none"></div>
						<div class="fuck">
							<p1>2023-03-20</p1>
						</div>
					</div>
					<div class="commtent-sub">
						<div class="delete">
							<p2>안녕하세요. 오리가 너무 귀엽네요 ㅎㅎ </p2>
						</div>
						<div class="comment-btn">
							<button>수정</button>
							<button>삭제</button>
						</div>
					</div>
				</div>
				<!-- </div> -->
				<div class="hello">
					<div class="date">
						<p3>estherk773</p3>
						<div class="none"></div>
						<div class="fuck">
							<p1>2023-03-20</p1>
						</div>
					</div>
					<div class="commtent-sub">
						<div class="delete">
							<p2>잘보고 갑니다~ ㅎㅎ </p2>
						</div>
						<div class="comment-btn">
							<button>수정</button>
							<button>삭제</button>
						</div>
					</div>
				</div>
				<div class="hello">
					<div class="date">
						<p3>estherk773</p3>
						<div class="none"></div>
						<div class="fuck">
							<p1>2023-03-20</p1>
						</div>
					</div>
					<div class="commtent-sub">
						<div class="delete">
							<p2>저도 요즘 우울한데 그림 보니 기분이 조금 나아졌어요! </p2>
						</div>
						<div class="comment-btn">
							<button>수정</button>
							<button>삭제</button>
						</div>
					</div>
				</div>
				<div class="hello">
					<div class="date">
						<p3>estherk773</p3>
						<div class="none"></div>
						<div class="fuck">
							<p1>2023-03-20</p1>
						</div>
					</div>
					<div class="commtent-sub">
						<div class="delete">
							<p2>저도 요즘 우울한데 그림 보니 기분이 조금 나아졌어요! </p2>
						</div>
						<div class="comment-btn">
							<button>수정</button>
							<button>삭제</button>
						</div>
					</div>
				</div>
				<div class="hello">
					<div class="date">
						<p3>estherk773</p3>
						<div class="none"></div>
						<div class="fuck">
							<p1>2023-03-20</p1>
						</div>
					</div>
					<div class="commtent-sub">
						<div class="delete">
							<p2>저도 요즘 우울한데 그림 보니 기분이 조금 나아졌어요! </p2>
						</div>
						<div class="comment-btn">
							<button>수정</button>
							<button>삭제</button>
						</div>
					</div>
				</div>
				<div class="hello">
					<div class="date">
						<p3>estherk773</p3>
						<div class="none"></div>
						<div class="fuck">
							<p1>2023-03-20</p1>
						</div>
					</div>
					<div class="commtent-sub">
						<div class="delete">
							<p2>저도 요즘 우울한데 그림 보니 기분이 조금 나아졌어요! </p2>
						</div>
						<div class="comment-btn">
							<button>수정</button>
							<button>삭제</button>
						</div>
					</div>
				</div>
				<div class="hello">
					<div class="date">
						<p3>estherk773</p3>
						<div class="none"></div>
						<div class="fuck">
							<p1>2023-03-20</p1>
						</div>
					</div>
					<div class="commtent-sub">
						<div class="delete">
							<p2>저도 요즘 우울한데 그림 보니 기분이 조금 나아졌어요! </p2>
						</div>
						<div class="comment-btn">
							<button>수정</button>
							<button>삭제</button>
						</div>
					</div>
				</div>
				<div class="hello">
					<div class="date">
						<p3>estherk773</p3>
						<div class="none"></div>
						<div class="fuck">
							<p1>2023-03-20</p1>
						</div>
					</div>
					<div class="commtent-sub">
						<div class="delete">
							<p2>저도 요즘 우울한데 그림 보니 기분이 조금 나아졌어요! </p2>
						</div>
						<div class="comment-btn">
							<button>수정</button>
							<button>삭제</button>
						</div>
					</div>
				</div>

				<div class="hello2">
					<h1>댓글 더 보기</h1>

				</div>

			</div>
		</div>
		<!--big-box-->
	</section>
	</form>
	<br>
	<br>
	<br>
	   <%@include file ="/app/footer.jsp" %>
</body>
</html>