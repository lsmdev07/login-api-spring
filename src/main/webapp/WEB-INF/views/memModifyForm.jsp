<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=euc-kr" language="java" %>
<% request.setCharacterEncoding("euc-kr"); %>
<% response.setContentType("text/html; charset=euc-kr"); %>
<html>
<head>
    <meta charset="euc-kr">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" />
    <title>login-api</title>
</head>
<body>
<div class="form-div">
    <form action="/member/memModify" method="post">
        ID : <input type="text" name="memId" value="${member.memId}"><br>
        PW : <input type="password" name="memPw" value="${member.memPw}"><br>
        MAIL : <input type="text" name="memMail" value="${member.memMail}"><br>
        PHONE1 : <input type="text" name="memPhones[0].memPhone1" size="5"  value="${member.memPhones[0].memPhone1}"> -
        <input type="text" name="memPhones[0].memPhone2" size="5" value="${member.memPhones[0].memPhone2}"> -
        <input type="text" name="memPhones[0].memPhone3" size="5" value="${member.memPhones[0].memPhone3}"><br/>
        PHONE2 : <input type="text" name="memPhones[1].memPhone1" size="5" value="${member.memPhones[1].memPhone1}"> -
        <input type="text" name="memPhones[1].memPhone2" size="5" value="${member.memPhones[1].memPhone2}"> -
        <input type="text" name="memPhones[1].memPhone3" size="5" value="${member.memPhones[1].memPhone3}"><br/>
        AGE : <input type="text" name="memAge" size="4" value="${member.memAge}"><br>
        ADULT : <input type="radio" name="memAdult" value="true">Yes,
        <input type="radio" name="memAdult" value="false">No<br>
        GENDER : <input type="radio" name="memGender" value="M">Man,
        <input type="radio" name="memGender" value="W">Woman<br>

        <input type="submit" value="Modify">
        <input type="reset" value="Cancel">
    </form>
</div>
</body>
</html>
