<%@page import="java.util.List"%>
<%@page import="com.app.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록 페이지</title>
</head>
<body>

<%
	List<PostVO> posts = (List<PostVO>)request.getAttribute("posts");
	System.out.println(posts);
%>

	<table border="1">
	<tr>
		<th>게시글번호</th>
		<th>게시글제목</th>
		<th>게시글내용</th>
		<th>작성시간</th>	
	</tr>
	<%
		for(PostVO post : posts) {
	%>
		<tr>
			<td><%=post.getId() %></td>
			<td>
				<a href="/mvc/read.post?id=<%=post.getId() %>">
					<%=post.getPostTitle() %>
				</a>
			</td>
			<td>
				<a href="/mvc/read.post?id=<%=post.getId() %>">
					<%=post.getPostContent() %>
				</a>
			</td>
			<td><%=post.getPostCreateAt().toString().substring(0, 19) %></td>
		</tr>
	<% 
		}
	%>
	</table>
	
	<a href="/mvc/write.post">글쓰기</a>

</body>
</html>