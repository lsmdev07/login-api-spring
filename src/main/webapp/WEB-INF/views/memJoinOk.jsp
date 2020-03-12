<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet"/>
    <title>login-api</title>
</head>
<body>
<h1> memJoinOk </h1>
<div class="form-div">
    <div class="join-result">
        ID : ${member.memId}<br/>
        PW : ${member.memPw}<br/>
        Mail : ${member.memMail} <br/>
        Phone : ${member.memPhone.memPhone1} - ${member.memPhone.memPhone2} - ${member.memPhone.memPhone3}<br/>
    </div>
</div>
<a href="/getuser/memJoin.html"> &lt; Go Member Join &gt; </a>
</body>
</html>
<style>
    .join-result {
        margin: 20px 0;
        text-align: left;
    }
    a {
        margin-top: 50px;
    }
</style>