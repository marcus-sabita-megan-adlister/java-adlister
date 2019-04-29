<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<jsp:include page="/WEB-INF/partials/head.jsp">--%>
        <%--<jsp:param name="title" value="Viewing All The Ads" />--%>
    <%--</jsp:include>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/partials/navbar6.jsp" />--%>

<%--<div class="container">--%>
    <%--<h1>Here Are all the ads!</h1>--%>

    <%--<c:forEach var="ad" items="${ads}">--%>
        <%--<div class="col-md-6">--%>
            <%--<h2>Title: ${ad.title}</h2>--%>
            <%--<p>Description: ${ad.description}</p>--%>
            <%--<p>Price: ${ad.price}</p>--%>
            <%--<p><img src="${ad.image}" alt="philosorapter"></p>--%>

            <%--<form action = "/update" method="GET">--%>

                <%--<button name="button" type= submit value= ${ad.id}>edit</button>--%>

            <%--</form>--%>
        <%--</div>--%>
    <%--</c:forEach>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>



<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing The update profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>update profile</h1>
    <form action="/update" method="POST">
        <div class="form-group">
            <label for="title">tile</label>
            <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <input id="description" name="description" class="form-control" type="text" value="${ad.description}">
        </div>
        <div class="form-group">
            <label for="price">price</label>
            <input id="price" name="price" class="form-control" type="text" value="${ad.price}">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="update" name="button3">
    </form>
</div>
</body>
</html>
