<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>회원목록</h2>
<div class="container">
    <div id="member-list">
        <table class="table table-bordered">
            <tr>
                <td>아이디</td>
                <td>이메일</td>
                <td>비밀번호</td>
                <td>이름</td>
                <td>생년월일</td>
                <td>전화번호</td>
                <td>조회</td>
                <td>삭제</td>

            </tr>

            <c:forEach items="${memberList}" var="member">
                <tr>
                    <td>${member.id}</td>
                    <td>${member.memberEmail}</td>
                    <td>${member.memberPassword}</td>
                    <td>${member.memberName}</td>
                    <td>${member.memberBirth}</td>
                    <td>${member.memberMobile}</td>

                    <td>
                        <button class="btn btn-primary" onclick="detail_fn(${member.id})">조회</button>
                    </td>
                    <td>
                        <button class="btn btn-dark" onclick="delete_fn(${member.id}">삭제</button>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
<script>
    const detail_fn = (id) => {
        location.href = "/detail?id=" + id;
    }
    const delete_fn = (id) => {
        location.href = "/detail?id=" + id;
    }
</script>
</html>
