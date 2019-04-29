<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Search Results" />
    </jsp:include>
    <jsp:include page="/WEB-INF/css/allStyles.jsp"/>
</head>
<body>

<c:choose>
    <c:when test = "${loggedIn}">
        <jsp:include page="/WEB-INF/partials/navbar4.jsp" />
    </c:when>
    <c:otherwise>
        <jsp:include page="/WEB-INF/partials/navbar5.jsp" />
    </c:otherwise>
</c:choose>

<div class="container">
    <h1>Search Results for: '${sessionScope.searchTerm}'</h1>
    <hr>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>Title: ${ad.title}</h2>
            <p>Price: ${ad.price}</p>
            <p><img src="${ad.image}" alt="philosorapter"></p>

            <form action = "/seemore" method="POST">

                <button class="extra" name="button" type= submit value= ${ad.id}>See More</button>

            </form>
        </div>
    </c:forEach>
</div>

</body>
</html>
