<%@ page 	language="java" 
			contentType="text/html; charset=UTF-8"
    		pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%@ include file="./common/header.jsp" %>
	
	<c:if test="${ loginUser == null}">
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
	</c:if>
	<c:if test="${ loginUser != null}">
		<div align="right">
			${ loginUser.name } 님 환영합니다.
			<button type="button">로그아웃</button>
		</div>
		
		<div>
			<a href="list.kdt">목록보기</a>
		</div>
	</c:if>

	<%@ include file="./common/footer.jsp" %>
	<script>
		function joinHandler() {
			location.href="joinform.kdt"
		}
		
	</script>
</body>
</html>