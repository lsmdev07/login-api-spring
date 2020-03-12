<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet"/>
    <title>Home</title>
</head>
<body>
<h1>
    welcome to login server!

</h1>

<P>
    The time on the server is ${serverTime}.
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