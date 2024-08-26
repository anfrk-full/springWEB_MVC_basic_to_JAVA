<%@ page 	language="java" 
			contentType="text/html; charset=UTF-8"
    		pageEncoding="UTF-8"%>
<%@ page	import="mvc.user.domain.UserResponseDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%@ include file="./common/header.jsp" %>
	
	<%!
		private UserResponseDTO user;
	%>
	<%
		user = (UserResponseDTO)session.getAttribute("loginUser");
		if(user == null) {
	%>
	<div align="right">
		<form action="Login.kdt" method="post">
			<label>
				아이디 : 
				<input type="text" name="id">
			</label>
			<label>
				패스워드 : 
				<input type="password" name="pwd">
			</label>
			<button type="submit">LOGIN</button>
			&nbsp;&nbsp;&nbsp;
			<button type="button" onClick="joinHandler()">JOIN</button>
		</form>
	</div>
	<%
		} else {
	%>
	<div align="right">
		<%= user.getName() %>님 환영합니다.
		&nbsp;&nbsp;&nbsp;
		<button type="button">로그아웃</button>
	</div>
	<%
		}
	%>
	<%@ include file="./common/footer.jsp" %>
	<script>
		function joinHandler() {
			location.href="joinform.kdt"
		}
		
	</script>
</body>
</html>