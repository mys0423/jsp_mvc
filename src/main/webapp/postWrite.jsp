<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 등록 페이지</title>
</head>
<body>
	<form action="/mvc/write-ok.post" method="post">
		<div>
			<span>제목</span> <br>
			<input name="postTitle" placeholder="제목 입력"/>
		</div>
		<div>
			<span>글 내용</span> <br>
			<textarea name="postContent" rows="10" cols="50" placeholder="내용 입력"></textarea>
		</div>
		<button>게시글 등록</button>
	</form>
</body>
</html>
