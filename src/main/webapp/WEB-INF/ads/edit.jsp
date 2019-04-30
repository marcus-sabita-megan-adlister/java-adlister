<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing The update profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar1.jsp" />
<div class="container">
    <h1>update profile</h1>
    <form action="/update" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" value="${user.username}">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password" value="${user.password}">
        </div>
        <div class="form-group">
            <label for="email">email</label>
            <input id="email" name="email" class="form-control" type="text" value="${user.email}">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="update">
    </form>
</div>
</body>
</html>