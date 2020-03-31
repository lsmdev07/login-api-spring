<% request.setCharacterEncoding("euc-kr"); %>
<% response.setContentType("text/html; charset=euc-kr"); %>
<%@ page contentType="text/html;charset=euc-kr" language="java" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet"/>
    <title>login-api</title>
</head>
<body>
<h1>탈퇴에 실패하였습니다.</h1>
<h2>아이디 혹은 비밀번호를 잊어버리셨나요?<br>
다시 시도해주시기 바랍니다.</h2><br>
<a href="/getuser/index.html">Go Main</a>
</body>
</html>
