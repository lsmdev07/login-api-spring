<jsp:useBean id="memBef" scope="request" type="com.bs.login_api_spring.member.Member"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<h1>정보가 수정되었습니다.</h1>

ID : ${memAft.memId} <br/>
PW : ${memAft.memPw} <br/>
Mail : ${memAft.memMail} <br/>
PHONE1 : ${memAft.memPhones[0].memPhone1} - ${memAft.memPhones[0].memPhone2} - ${memAft.memPhones[0].memPhone3} <br/>
PHONE2 : ${memAft.memPhones[1].memPhone1} - ${memAft.memPhones[1].memPhone2} - ${memAft.memPhones[1].memPhone3} <br/>
AGE : ${memAft.memAge} <br/>
ADULT : ${memAft.memAdult} <br/>
GENDER : ${memAft.memGender} <br/>

<a href="/getuser/index.html">Go Main</a>
</body>
</html>
