<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <style>
        <%@include file="../resources/css/style.css" %>
    </style>
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
            crossorigin="anonymous"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js%22%3E</script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
    crossorigin="anonymous"
    ></script>


    <title>Welcome Page</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">TASHEH</a>
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
                <a class="nav-link" href="#">ABOUT US</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">SERVICES</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">CONTACTS</a>
            </li>
            <li>
                <form id="logoutForm" method="POST" action="/logout">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <input type="submit" class="logout" value="Logout!"/>
                </form>
            </li>
        </ul>
    </div>
</nav>
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
    <!-- ./Footer -->

</section>
</body>
</html>
