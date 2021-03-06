<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
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
    <h1>Interested in the Ad?</h1>
    <hr>
    <c:forEach var="ad" items="${ads}">
        <div class="col">
            <h1 class="seeMoreTitle">${ad.title}</h1>
            <p class="seeMoreDescription">${ad.description}</p>
            <p class="seeMore">Price: ${ad.price}</p>
            <p class="seeMore">By User: ${user.username}</p>
            <p><img src="${ad.image}" alt="philosorapter" class="seeMoreImage"></p>
        </div>
    </c:forEach>
</div>

</body>
</html>
