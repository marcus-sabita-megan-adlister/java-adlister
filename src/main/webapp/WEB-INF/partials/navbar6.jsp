<!--Show All Logged In Page-->
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="">Apoca-lister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">

            <li><a href="/ads/create">Create Ad</a></li>
            <li><a href="/logout">Logout</a></li>
            <li><a href="/profile">Profile</a></li>
        </ul>
        <jsp:include page="/WEB-INF/partials/search.jsp" />
    </div><!-- /.navbar-collapse -->
    <%--</div><!-- /.container-fluid -->--%>
</nav>
