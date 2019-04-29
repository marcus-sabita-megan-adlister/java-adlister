<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <jsp:include page="/WEB-INF/css/allStyles.jsp"/>
    <jsp:include page="/WEB-INF/css/allAds_page.jsp"/>

</head>
<body>
<c:choose>
    <c:when test = "${loggedIn}">
        <jsp:include page="/WEB-INF/partials/navbar6.jsp" />
    </c:when>
    <c:otherwise>
        <jsp:include page="/WEB-INF/partials/navbar7.jsp" />
    </c:otherwise>
</c:choose>


<div class="container">
    <h1>Current Apoca-lyster Ads</h1>
    <hr>

    <c:forEach var="ad" items="${ads}">
        <div class="ads col-md-6">
            <h2>${ad.title}</h2>
            <%--<p>Description: ${ad.description}</p>--%>
            <p>Price: ${ad.price}</p>
            <img src="img/${ad.image}" alt="philosorapter">
            <form action = "/seemore" method="POST">
                <button name="button" class="extra" type= submit value= ${ad.id}>See More</button>
            </form>
        </div>
    </c:forEach>
</div>

</body>
</html>
