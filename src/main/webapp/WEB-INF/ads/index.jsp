<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar6.jsp" />
<%--<jsp:include page="/WEB-INF/partials/navbar7.jsp" />--%>

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>Title: ${ad.title}</h2>
            <p>Description: ${ad.description}</p>
            <p>Price: ${ad.price}</p>
            <img src=${ad.image} alt="philosorapter">
            <form action = "/seemore" method="POST">
                <button name="button" type= submit value= ${ad.id}>See More</button>
            </form>
        </div>
    </c:forEach>
</div>

</body>
</html>
