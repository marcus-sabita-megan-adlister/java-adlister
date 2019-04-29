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
    <form action="/updateAds" method="POST">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <input id="description" name="description " class="form-control" type="text" value="${ad.description}">
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <input id="price" name="price" class="form-control" type="text" value="${ad.price}">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="updateAds">
    </form>
</div>
</body>
</html>