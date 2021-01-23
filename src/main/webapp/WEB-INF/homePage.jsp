<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
            crossorigin="anonymous"
    />
    <style>
        <%@include file="../resources/css/homePage.css" %>
    </style>

    <title>Welcome to Tasheh</title>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark px-5">
        <a class="navbar-brand" href="/"><img src="https://i.ibb.co/DYdTLHP/final-Logo.png" height="100px" class="mr-2">Tasheh</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#tashehNavbar"
                aria-controls="tashehNavbar" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse pt-lg-0 pt-4" id="tashehNavbar">
            <ul class="navbar-nav ml-auto text-center">
                <li class="nav-item">
                    <a class="nav-link" href="/">HOME</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/trips">DISCOVER TRIPS!</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/trips/joined">PROFILE</a>
                </li>
                <li class="nav-item">
                    <form action="/logout" method="post">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <input type="submit" class="logout nav-link bg-transparent" value="LOGOUT"/>
                    </form>
                </li>
            </ul>
        </div>
    </nav>
    <div id="tashehCarousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100"
                     src="https://i.ibb.co/5nvC75x/deadsea.jpg"
                     alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="https://i.ibb.co/rsVxtTy/Jordan-River.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="https://i.ibb.co/gzmNMTV/damascusgate.jpg" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#tashehCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#tashehCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="join-now jumbotron">
        <div class="container">
            <h1 class="mb-4">Travel Palestine!</h1>
            <p>Wherever you go, go with all your heart.</p>
            <p class="text-justify">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                dolore magna aliqua. Aenean sed adipiscing diam donec adipiscing tristique. Arcu cursus euismod quis
                viverra nibh cras pulvinar mattis nunc. Lorem ipsum dolor sit amet consectetur. Augue interdum velit
                euismod in pellentesque. Donec enim diam vulputate ut pharetra. Magna fringilla urna porttitor rhoncus.
                Enim diam vulputate ut pharetra sit amet aliquam id diam. Commodo viverra maecenas accumsan lacus.
                Convallis posuere morbi leo urna molestie at elementum eu facilisis. Sed arcu non odio euismod lacinia
                at. In mollis nunc sed id semper risus in hendrerit. At varius vel pharetra vel turpis nunc eget.
                Potenti nullam ac tortor vitae purus faucibus. Sagittis nisl rhoncus mattis rhoncus urna. Integer
                malesuada nunc vel risus commodo viverra. Pharetra diam sit amet nisl suscipit adipiscing bibendum.
            </p>
            <button class="btn btn-outline-light px-4 py-2" href="/trips">Join Now!</button>
        </div>
    </div>
</header>
<main>
    <div class="mr-5 pr-5">
        <h1 class="text-right">Discover Trips!</h1>
        <div class="h-rule mb-5"></div>
    </div>
    <div class="container">

        <div class="row">
            <div class="card col-lg" style="width: 18rem;">
                <img class="card-img-top"
                     src="https://i.ibb.co/17pZ7MR/20181210-Orange-lighting-of-the-Ramallah-Town-Hall-2.jpg"
                     alt="Card image cap">
                <div class="card-body">
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                </div>
            </div>
            <div class="card col-lg" style="width: 18rem;">
                <img class="card-img-top" src="https://i.ibb.co/SQ1yFdK/deadsea.jpg" alt="Card image cap">
                <div class="card-body">
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                </div>
            </div>
            <div class="card col-lg" style="width: 18rem;">
                <img class="card-img-top" src="https://i.ibb.co/sCMZjxQ/Sebastya.jpg" alt="Card image cap">
                <div class="card-body">
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                </div>
            </div>
        </div>
    </div>
</main>
<!-- ./Footer -->
<%--<section id="footer">--%>
<%--    <div class="container">--%>
<%--        <div class="row text-center text-xs-center text-sm-left text-md-left">--%>
<%--            <div class="col-xs-12 col-sm-4 col-md-4">--%>
<%--                <h5>Quick links</h5>--%>
<%--                <ul class="list-unstyled quick-links">--%>
<%--                    <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Home</a></li>--%>
<%--                    <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>About</a></li>--%>
<%--                    <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>FAQ</a></li>--%>
<%--                    <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Get Started</a></li>--%>
<%--                    <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Videos</a></li>--%>
<%--                </ul>--%>
<%--            </div>--%>

<%--        </div>--%>
<%--    </div>--%>
<%--    <!-- ./Footer -->--%>

<%--</section>--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"
></script>
</body>
</html>
