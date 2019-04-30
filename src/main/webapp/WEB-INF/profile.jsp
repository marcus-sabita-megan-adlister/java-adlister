<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <jsp:include page="/WEB-INF/css/allStyles.jsp"/>

</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar3.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <hr>

    <div class="container">
    <div class="profile_info">
        <div class="pInfo">
            <h4>Profile Information</h4>
            <p>Username: ${sessionScope.user.username}</p>
            <p>Email: ${sessionScope.user.email}</p>
            <p>Password: **********</p>
            <p>User ID: ${sessionScope.user.id}</p>
            <p class="updateBtn"><a href="/update">Update Information ?</a></p>
        </div>
    </div>

    <hr>

    <h2>Your Current Ads</h2>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h3>${ad.title}</h3>
            <p>${ad.description}</p>
            <p><strong>Price:</strong> ${ad.price}</p>
            <p><img src="${ad.image}" alt="philosorapter" class="image"></p>
            <form method="post" action="/delete">
                <button name="button1" class="deletebtn" type= submit value= ${ad.id}>Delete</button>
            </form>

        </div>
    </c:forEach>
    </div>
<script>

</script>

</body>
</html>
