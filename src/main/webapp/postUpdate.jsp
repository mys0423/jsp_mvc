<%@page import="com.app.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정 페이지</title>
</head>
<body>

	<%
		PostVO post = (PostVO)request.getAttribute("post");
	%>
	<form action="/mvc/update-ok.post" method="post">
		<input name="id" type="hidden" value="<%=post.getId() %>">
		<div>
			<span>제목</span> <br>
			<input name="postTitle" value="<%=post.getPostTitle() %>" />
		</div>
		<div>
			<span>글 내용</span> <br>
			<textarea name="postContent" rows="10" cols="50"><%=post.getPostContent() %></textarea>
		</div>
		<button>게시글 수정</button>
	</form>
</body>
</html>