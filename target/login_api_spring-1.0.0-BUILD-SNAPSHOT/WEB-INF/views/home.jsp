<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<h1>
    로그인 서버에 오신 것을 환영합니다!
</h1>

<P>
    현재 서버의 시간은 ${serverTime}입니다.
</P>
<a href="/getuser/index.html">move to login</a>
</body>
</html>
<style>
    body {
        text-align: center;
    }
    h1 {
        margin-top: 10vh;
    }

</style>