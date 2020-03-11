<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" />
    <title>Home</title>
</head>
<body>
<h1> memJoinOk </h1>

ID : ${member.memId}<br/>
PW : ${member.memPw}<br/>
Mail : ${member.memMail} <br/>
Phone : ${member.memPhone.memPhone1} - ${member.memPhone.memPhone2} - ${member.memPhone.memPhone3}<br/>

<a href="/getuser/memJoin.html"> Go MemberJoin </a>
</body>
</html>