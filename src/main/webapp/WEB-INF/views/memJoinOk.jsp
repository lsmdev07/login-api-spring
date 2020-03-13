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
        ID : ${member.memId} <br />
        PW : ${member.memPw} <br />
        Mail : ${member.memMail} <br />
        PHONE1 : ${member.memPhones[0].memPhone1} - ${member.memPhones[0].memPhone2} - ${member.memPhones[0].memPhone3} <br />
        PHONE2 : ${member.memPhones[1].memPhone1} - ${member.memPhones[1].memPhone2} - ${member.memPhones[1].memPhone3} <br />
        AGE : ${member.memAge} <br />
        ADULT : ${member.memAdult} <br />
        GENDER : ${member.memGender} <br />

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