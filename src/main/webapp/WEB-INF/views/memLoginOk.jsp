<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=euc-kr" language="java" %>
<% request.setCharacterEncoding("euc-kr"); %>
<% response.setContentType("text/html; charset=euc-kr"); %>
<html>
<head>
	<meta charset="euc-kr">
	<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" />
	<title>login-api</title>
</head>
<body>
	<h1>로그인에 성공하였습니다.</h1>
	ID : ${member.memId}<br />
	PW : ${member.memPw}<br />
	
	<a href="/getuser/index.html"> Go Main </a>
</body>
</html>