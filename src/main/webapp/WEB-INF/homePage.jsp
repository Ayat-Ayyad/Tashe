<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
    <style>
        <%@include file="../resources/css/homePage.css" %>
    </style>
    <style>
        <%@include file="../resources/css/profile.css" %>
    </style>

    <title>Welcome to Tasheh</title>
</head>
<body>
<header class="home-header">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark px-5">
        <a class="navbar-brand" href="/home"><img src="https://i.ibb.co/DYdTLHP/final-Logo.png" height="100px"
                                                  class="mr-2">Tasheh</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#tashehNavbar"
                aria-controls="tashehNavbar" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse pt-lg-0 pt-4" id="tashehNavbar">
            <ul class="navbar-nav ml-auto text-center">
                <li class="nav-item">
                    <a class="nav-link" href="/home">HOME</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/trips">DISCOVER TRIPS!</a>
                </li>
                <c:choose>
                    <c:when test="${ currentUser.roles.get(0) != null }">
                        <c:choose>
                            <c:when test="${ currentUser.roles.get(0).name.equals('ROLE_USER') }">
                                <li class="nav-item">
                                    <a class="nav-link" href="/trips/joined">PROFILE</a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="nav-item">
                                    <a class="nav-link" href="/admin/controls">CONTROL PANEL</a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                        <li class="nav-item">
                            <form action="/logout" method="post">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                <input type="submit" class="logout nav-link bg-transparent" value="LOGOUT"/>
                            </form>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="/login">LOGIN</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/registration">REGISTER</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </nav>
    <div id="tashehCarousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100"
                     src="http://getwallpapers.com/wallpaper/full/6/7/5/838696-beautiful-israel-wallpapers-1920x1200-xiaomi.jpg"
                     alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100"
                     src="http://getwallpapers.com/wallpaper/full/7/b/2/838826-large-israel-wallpapers-1920x1200-high-resolution.jpg"
                     alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="http://getwallpapers.com/wallpaper/full/1/6/d/579805.jpg"
                     alt="Third slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100"
                     src="http://getwallpapers.com/wallpaper/full/9/6/4/838635-free-israel-wallpapers-3000x2000-photos.jpg "
                     alt="Fourth slide">
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
            <p class="text-justify">we have what you are looking for, the perfect place for you. Scroll down to discover
                the trips we offer in our website. It's time to explore beautiful Palestine.</p>
            <button class="btn btn-outline-light px-4 py-2" href="/trips">Join Now!</button>
        </div>
    </div>
</header>
<main>
    <div class="text-center mx-5 px-5">
        <h1 >Discover Landmarks!</h1>
        <div class="h-rule"></div>
    </div>
    <div class="container">
        <section class="details-card">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 d-flex mb-lg-0 mb-4">
                        <div class="card-content">
                            <div class="card-img">
                                <img src="http://getwallpapers.com/wallpaper/full/6/7/5/838696-beautiful-israel-wallpapers-1920x1200-xiaomi.jpg"
                                     alt="">
                                <span><h4>Dead Sea</h4></span>
                            </div>
                            <div class="card-desc">
                                <h3>Jericho</h3>
                                <p>Jericho is a Palestinian city in the West Bank. It is located in the Jordan Valley,
                                    with the Jordan River to the east and Jerusalem to the wes</p>
                                <a href="/trips" class="btn-card">Discover Trips!</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 d-flex mb-lg-0 mb-4">
                        <div class="card-content">
                            <div class="card-img ">
                                <img src="https://i.ibb.co/sCMZjxQ/Sebastya.jpg " alt="">
                                <span><h4>Sabastya</h4></span>
                            </div>
                            <div class="card-desc">
                                <h3>Nablus</h3>
                                <p>Nablus is a city in the northern West Bank, approximately 49 kilometers north of
                                    Jerusalem, with a population of 126,132</p>
                                <a href="/trips" class="btn-card">Discover Trips!</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 d-flex mb-lg-0 mb-4">
                        <div class="card-content">
                            <div class="card-img">
                                <img src="http://getwallpapers.com/wallpaper/full/1/6/d/579805.jpg" alt="">
                                <span><h4>Marsaba</h4></span>
                            </div>
                            <div class="card-desc">
                                <h3>Bethlehem</h3>
                                <p>Bethlehem is a Palestinian town south of Jerusalem in the West Bank. The biblical
                                    birthplace of Jesus, it’s a major Christian pilgrimage destination</p>
                                <a href="/trips" class="btn-card">Discover Trips</a>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-lg-4 d-flex mb-lg-0 mb-4">
                        <div class="card-content">
                            <div class="card-img">
                                <img src="https://i.ibb.co/17pZ7MR/20181210-Orange-lighting-of-the-Ramallah-Town-Hall-2.jpg"
                                     alt="">
                                <span><h4>Fountain</h4></span>
                            </div>
                            <div class="card-desc">
                                <h3>Ramallah</h3>
                                <p>Ramallah is a Palestinian city in the central West Bank located 10 km north of
                                    Jerusalem at an average elevation of 880 meters above sea level, adjacent to
                                    al-Bireh</p>
                                <a href="/trips" class="btn-card">Discover Trips!</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 d-flex mb-lg-0 mb-4">
                        <div class="card-content">
                            <div class="card-img">
                                <img src="https://i.ibb.co/kDzmDgy/ibrahemi-mosque.jpg" alt="">
                                <span><h4>Al-Ibrahemi</h4></span>
                            </div>
                            <div class="card-desc">
                                <h3>Hebron</h3>
                                <p>Hebron is a Palestinian city in the southern West Bank, 30 km south of Jerusalem.
                                    Nestled in the Judaean Mountains, it lies 930 meters above sea level</p>
                                <a href="/trips" class="btn-card">Discover Trips!</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 d-flex mb-lg-0 mb-4">
                        <div class="card-content">
                            <div class="card-img">
                                <img src="http://getwallpapers.com/wallpaper/full/9/6/4/838635-free-israel-wallpapers-3000x2000-photos.jpg "
                                     alt="">
                                <span><h4>AlAqsa</h4></span>
                            </div>
                            <div class="card-desc">
                                <h3>Jerusalem</h3>
                                <p>Jerusalem is a city in the Middle East. It is one of the oldest cities in the world,
                                    and is considered holy to the three major Abrahamic religions—Judaism, Christianity,
                                    and Islam.</p>
                                <a href="/trips" class="btn-card">Discover Trips!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</main>
<footer class="footer">
    <div class="row text-center text-lg-left">
        <div class="col-lg-6 px-4 pb-4">
            <h4 class="navbar-brand mb-3">Tasheh</h4>
            <p class="foo text-justify">
                Tasheh allows users to browse through many interesting day-trips around Palestine. Families and friends
                can join to have fun visit lots of different places and do many types of activities.This platform is much needed especially during the time of Covid-19. Tasheh facilitates joining fun
                activities to stop people from feeling trapped during lock-downs while also staying safe and being back
                home before the night lock down.I believe this website will be a profitable business as well as a way to providing support to our local
                market and internal tourism.
            </p>
        </div>
        <div class="col-lg-3 px-5 py-4">
            <h4 class="mb-3">Contact</h4>
            <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/6nWwZm0/phone-solid.png" alt="phone-solid" border="0" width="30px"></a> 00970-345-xxx-xxx</p>
            <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/xYVv5Hk/envelope-solid.png" alt="envelope-solid" border="0" width="30px"></a> tashe@ex.com</p>
            <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/zS5b1Xt/facebook.png" alt="facebook" border="0" width="30px"></a> tashe/facebook.com</p>
        </div>
        <div class="col-lg-3 px-5 py-4">
            <h4 class="mb-3">Follow Us</h4>
            <div class="social-media">
                <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/kq3BtsV/twitter-square-brands.png" alt="twitter-square-brands" border="0" width="30px"></a> tashe/twitter.com</p>
                <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/cFkzBRH/instagram.png" alt="instagram" border="0" width="30px"></a> tashe/instagram.com</p>
                <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/T2wcS0z/snapchat-square-brands.png" alt="snapchat-square-brands" border="0" width="30px"></a> tashe/snapchat.com</p>
            </div>
        </div>
    </div>
    <hr/>
    <div class="copyright text-center pb-3">Copyright&copy;2021 - All Rights Reserved</div>
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"
></script>
</body>
</html>
