<!--login page-->
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="">Apoca-lister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/ads">All Ads</a></li>
            <li><a href="/login">Login</a></li>
        </ul>
        <form class="form-inline my-2 my-lg-0" action="/results" method="POST">

            <input id="search" name="search" class="form-control mr-sm-2"
                   type="search" placeholder="Search" aria-label="Search">

            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>
