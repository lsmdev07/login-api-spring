<%@ page contentType="text/html;charset=euc-kr" language="java" %>
<% request.setCharacterEncoding("euc-kr"); %>
<% response.setContentType("text/html; charset=euc-kr"); %>
<html>
<head>
    <meta charset="euc-kr">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet"/>
    <title>login-api</title>
</head>
<body>
<h1>탈퇴되었습니다.</h1>
ID : ${mem.memId}
<a href="/getuser/index.html">Go Main</a>
</body>
</html>
