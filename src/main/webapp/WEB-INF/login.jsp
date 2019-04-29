<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <jsp:include page="/WEB-INF/css/allStyles.jsp"/>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar2.jsp" />
    <div class="container form">
        <h1>Please Log In</h1>
        <hr>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control use" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control use" type="password">
            </div>
            <input type="submit" class="btn btn-block extra" value="Log In">
        </form>
    </div>
</body>
</html>
