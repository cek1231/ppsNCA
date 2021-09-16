<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NCA-데이터 조회</title>
</head>
<body>
<h1>NCA</h1>
<div>
<table>
<tr>
	<th>제 목</th>		
	<td>${notice.boardTitle}</td>
</tr>
<tr>
	<th>&nbsp;&nbsp;작성자</th>
	<td>${notice.boardDestination}</td>			
</tr>
</table>
<hr>
<br><br>${ notice.boardContents }<br><br><hr>

<button type="button" class="btnList" onclick="location.href='${pageContext.request.contextPath}/NoticeBoardList'">목록으로</button>
<button type="button" class="btnList" onclick="location.href='${pageContext.request.contextPath}/NoticeBoardDelete?no=${notice.boardNo}'">삭제</button>
<button type="button" class="btnList" onclick="location.href='${pageContext.request.contextPath}/NoticeBoardUpdate?no=${notice.boardNo}'">수정</button>

</div>
</body>
</html>