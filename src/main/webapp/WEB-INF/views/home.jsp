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
    �α��� �������� ���� ���� ȯ���մϴ�!
</h1>

<P>
    ���� ������ �ð��� ${serverTime.substring(0,serverTime.length()-3)}�Դϴ�.
</P>
<a href="/getuser/index.html">���� ���� ���</a>
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