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
<h1> memLoginFalse </h1>
<h2>${mem.getMemId()}는 존재하지 않는 아이디입니다.<br>
    다시 입력해주시기 바랍니다.<br><br></h2>

<a href="/getuser/index.html"> Go Main </a> &nbsp;&nbsp; <a href="/getuser/login.html">Go Login</a>
</body>
</html>
