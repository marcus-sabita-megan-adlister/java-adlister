<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
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
    <h1>Interested in the Ad?</h1>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>Title: ${ad.title}</h2>
            <p>Description: ${ad.description}</p>
            <p>Price: ${ad.price}</p>
            <p>Posted By: ${user.username}</p>
            <p><img src="${ad.image}" alt="philosorapter"></p>
        </div>
    </c:forEach>
</div>

</body>
</html>
