<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar2.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>Title: ${ad.title}</h2>
            <p>Description: ${ad.description}</p>
            <p>Price: ${ad.price}</p>
            <p><img src="${ad.image}" alt="philosorapter"></p>
        </div>
    </c:forEach>

</body>
</html>