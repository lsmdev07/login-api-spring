<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" />
    <title>Home</title>
</head>
<body>
<h1>
    Hello world!

</h1>

<P> The time on the server is ${serverTime}.
   contextPath is ${pageContext.request}</P>
</body>
</html>
