<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <style>
        <%@include file="../resources/css/style.css" %>
    </style>
<%--    <style>--%>
<%--        <%@include file="../resources/css/slider.css" %>--%>
<%--    </style>--%>
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
            crossorigin="anonymous"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
            crossorigin="anonymous"
    ></script>


    <title>Welcome Page</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <img src="https://i.ibb.co/DYdTLHP/final-Logo.png" height="100px">
    <a class="navbar-brand" href="#" style="font-family: 'Tw Cen MT'">TASHEH</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <!-- Links -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">

            <li class="nav-item">
                <a class="nav-link" href="#">HOMEPAGE</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">DISCOVER TRIPS!</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">PROFILE</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">CONTACT US</a>
            </li>
            <div class="logout">
                <li>
                    <form id="logoutForm" method="POST" action="/logout">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <input type="submit" class="logout" value="Logout!"/>
                    </form>
                </li>
            </div>
        </ul>
    </div>
</nav>
<%--<div class="home-banner">
    <div id="myCarousels" class="carousel slide" data-ride="carousel" data-interval="false">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousels" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousels" data-slide-to="1"></li>
            <li data-target="#myCarousels" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="img-overlay">
                    <img src="http://getwallpapers.com/wallpaper/full/6/7/5/838696-beautiful-israel-wallpapers-1920x1200-xiaomi.jpg alt="Second slide">
                </div>
                <!-- Static Header -->
                <div class="header-text text-center hidden-xs">
                    <div class="main_title ">
                        <span> Welcome to Tasheh Website </span>
                        <h2>Enjoy the views</h2>
                    </div>
&lt;%&ndash;                    <div class="">&ndash;%&gt;
&lt;%&ndash;                        <div class="gap-t-30"></div>&ndash;%&gt;
&lt;%&ndash;                        <a class="btn btn-lg btn-primary site-btn" href="#">Learn More</a>&ndash;%&gt;
&lt;%&ndash;                    </div>&ndash;%&gt;

                </div><!-- /header-text -->
            </div>
            <div class="item">
                <div class="img-overlay">
                    <img src="http://getwallpapers.com/wallpaper/full/7/b/2/838826-large-israel-wallpapers-1920x1200-high-resolution.jpg" alt="Second slide">
                </div>
                <!-- Static Header -->
                <div class="header-text text-center hidden-xs">
                    <div class="main_title ">
                        <h2>Paris <span>Top</span> Tours</h2>
                        <p>Quisque at tortor a libero posuere laoreet vitae sed arcu. Curabitur consequat.</p>
                    </div>
                    <div class="">
                        <a class="btn btn-lg btn-primary site-btn" href="#">Learn More</a>
                    </div>
                </div><!-- /header-text -->
            </div>
            <div class="item">
                <div class="img-overlay">
                    <img src="http://getwallpapers.com/wallpaper/full/4/6/2/838601-most-popular-israel-wallpapers-1920x1080-macbook.jpg" alt="Second slide">
                </div>
                <!-- Static Header -->
                <div class="header-text text-center hidden-xs">
                    <div class="main_title ">
                        <h2>Paris <span>Top</span> Tours</h2>
                        <p>Quisque at tortor a libero posuere laoreet vitae sed arcu. Curabitur consequat.</p>
                    </div>
                    <div class="">
                        <a class="btn btn-lg btn-primary site-btn" href="#">Learn More</a>

                    </div>
                </div><!-- /header-text -->
            </div>
        </div>
        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousels" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#myCarousels" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div><!-- /carousel -->
</div>--%>
<main role="main">

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">Travel Palestine!</h1>
            <p>Wherever you go , go with all your heart.</p>
            <button class="button" href="#" role="button"><span>Learn more</span></button>
        </div>
    </div>

    <hr>

    <div class="container">
        <!-- Example row of columns -->
        <h2 class="text-center">Our Trips</h2>

        <div class="row">
            <div class=" card col-md-3" style="margin:30px;">
                <img src="https://i.ibb.co/17pZ7MR/20181210-Orange-lighting-of-the-Ramallah-Town-Hall-2.jpg"
                     height="200px" width="100%">
                <P>Ramallah</P>
                <p><a class="button" href="#" role="button">View details</a></p>
            </div>
            <div class=" card col-md-3" style="margin:30px;">
                <img src="https://i.ibb.co/SQ1yFdK/deadsea.jpg" height="200px"
                     width="100%">
                <p>Jericho</p>
                <p><a class="button" href="#" role="button">View details</a></p>
            </div>
            <div class="card col-md-3" style="margin:30px;">
                <img src="https://i.ibb.co/sCMZjxQ/Sebastya.jpg"
                     height="200px" width="100%">
                <P>Nablus</P>
                <p><a class="button" href="#" role="button">View details </a></p>

            </div>
        </div>

        <div class="row">
            <div class=" card col-md-3" style="margin:30px;">
                <img src="https://i.ibb.co/Jjs1Zg5/the-old-city-jerusalem.jpg"
                     height="200px" width="100%">
                <P>Jerusalem</P>
                <p><a class="button" href="#" role="button">View details</a></p>
            </div>
            <div class=" card col-md-3" style="margin:30px;">
                <img src="https://i.ibb.co/6R3KPJ2/Solomon-s-Pools.jpg" height="200px"
                     width="100%">
                <p>Bethlehem</p>
                <p><a class="button" href="#" role="button">View details</a></p>
            </div>
            <div class="card col-md-3" style="margin:30px;">
                <img src="https://i.ibb.co/82TdPB8/Al-Ibrahimi-Mosque.jpg"
                     height="200px" width="100%">
                <P>Hebron</P>
                <p><a class="button" href="#" role="button">View details </a></p>

            </div>
        </div>


        <br>
    </div> <!-- /container -->
    <hr>
</main>
<!-- ./Footer -->
<section id="footer">
    <div class="container">
        <div class="row text-center text-xs-center text-sm-left text-md-left">
            <div class="col-xs-12 col-sm-4 col-md-4">
                <h5>Quick links</h5>
                <ul class="list-unstyled quick-links">
                    <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Home</a></li>
                    <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>About</a></li>
                    <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
                    <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Get Started</a></li>
                    <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Videos</a></li>
                </ul>
            </div>

        </div>
    </div>
        <!-- ./Footer -->

</section>
</body>
</html>
