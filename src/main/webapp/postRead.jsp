<%@page import="com.app.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 보기</title>
</head>
<body>
	<%
		PostVO post = (PostVO)request.getAttribute("post");
		System.out.println(post);
	%>
	<table border="1">
		<tr>
			<th>게시글번호</th>
			<th>게시글제목</th>
			<th>게시글내용</th>
			<th>작성시간</th>
		</tr>
		<tr>
			<td><%=post.getId() %></td>
			<td><%=post.getPostTitle() %></td>
			<td><%=post.getPostContent() %></td>
			<td><%=post.getPostCreateAt().toString().substring(0, 19) %></td>
		</tr>
	</table>
	
	<a href="/mvc/update.post?id=<%=post.getId() %>">글수정</a>	
	<a href="/mvc/delete-ok.post?id=<%=post.getId() %>">글삭제</a>	
	<a href="/mvc/list.post">목록보기</a>
	
</body>
</html>