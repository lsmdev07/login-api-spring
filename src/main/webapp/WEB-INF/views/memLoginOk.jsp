<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" />
	<title>login-api</title>
</head>
<body>
	<h1> memLoginOk </h1>
	ID : ${memId}<br />
	PW : ${memPw}<br />
	
	<a href="/getuser/index.html"> Go Main </a>
</body>
</html>