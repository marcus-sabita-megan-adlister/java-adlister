<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
    <jsp:include page="/WEB-INF/css/allStyles.jsp"/>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar8.jsp" />
    <div class="container form">
        <h1>Create a new Ad</h1>
        <hr>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control use" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control use" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="image">Image</label>
                <input id="image" name="image" class="form-control use" type="text"></input>
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <input id="price" name="price" class="form-control use" type="text">
            </div>
            <input type="submit" class="btn btn-block extra" value="Create Ad">
        </form>
    </div>
</body>
</html>
