<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>회원가입</h2>
    <form action="/save" method="post">
        이메일 : <input type="text" name="memberEmail" placeholder="이메일"><br>
        비밀번호: <input type="text" name="memberPassword" placeholder="비밀번호"><br>
        이름 : <input type="text" name="memberName" placeholder="이름"><br>
        생년월일 : <input type="text" name="memberBirth" placeholder="생년월일"><br>
        전화번호 : <input type="text" name="memberMobile" placeholder="전화번호"><br>
        <input type="submit" value="등록">
    </form>

</body>
</html>
