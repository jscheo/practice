<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>로그인</h2>
    <form action="/login" method="post">
    이메일 : <input type="text" name="memberEmail" placeholder="이메일"><br>
    비밀번호 : <input type="text" name="memberPassword" placeholder="비밀번호"><br>
        <input type="submit" value="로그인">
    </form>
</body>
</html>
