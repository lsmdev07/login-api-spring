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
<h1> 로그인에 실패하였습니다. </h1>
<h2>아이디 혹은 비밀번호가 옳지 않습니다.<br>
    다시 입력해주시기 바랍니다.<br><br></h2>

<a href="/getuser/index.html"> Go Main </a> &nbsp;&nbsp; <a href="/getuser/login.html">Go Login</a>
</body>
</html>
