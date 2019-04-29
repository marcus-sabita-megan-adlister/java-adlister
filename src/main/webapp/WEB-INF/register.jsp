<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
    <jsp:include page="/WEB-INF/css/allStyles.jsp"/>
    <jsp:include page="/WEB-INF/css/register_form.jsp"/>
</head>
<body>
    <jsp:include page="partials/navbar1.jsp" />
    <div class="container registration form">
        <h1>Please fill in your information.</h1>
        <hr>

        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control use" type="text">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control use" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control use" type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control use" type="password">
            </div>
            <input type="submit" class="btn btn-block extra">
        </form>
    </div>
</body>
</html>
