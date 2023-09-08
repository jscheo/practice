<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
    <h2>메인페이지</h2>
    로그인 이메일 : ${sessionScope.loginEmail} <br><br>

    <button class="btn btn-dark" onclick="update_fn(${member.memberEmail})">회원정보 수정</button>

    <c:if test="${sessionScope.loginEmail == 'admin'}">
        <a href="/list" >회원 목록</a>
    </c:if>

    <button class="btn btn-dark"><a href="/logout">로그아웃</a></button>
    <button class="btn btn-dark"><a href="/">index로 이동</a></button>
</body>
<script>
    const update_fn =(memberEmail)=>{
        location.href="/update?memberEmail=" + memberEmail;
    }
</script>
</html>
