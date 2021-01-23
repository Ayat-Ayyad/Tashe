<%--
  Created by IntelliJ IDEA.
  User: tala
  Date: 1/22/2021
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <style>
        <%@include file="../resources/css/style.css" %>
    </style>
    <style>
        <%@include file="../resources/css/profile.css" %>
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>User Profile</title>
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
                <a class="nav-link" href="/">HOMEPAGE</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/trips">DISCOVER TRIPS!</a>
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
<section class="details-card">
    <div class="container">
        <div class="row">
            <c:forEach var="trip" items="${ trips }">
                <div class="col-lg-4">
                    <div class="card-content">
                        <div class="card-img">
                            <img src="http://getwallpapers.com/wallpaper/full/6/7/5/838696-beautiful-israel-wallpapers-1920x1200-xiaomi.jpg" alt="">
                        </div>
                        <div class="card-desc">
                            <h3>${ trip.tripName }</h3>
                            <p>${ trip.date }</p>
                            <p>${ trip.price }</p>
                            <a href="/trips/${ trip.id }" class="btn btn-warning">More Details</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
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

</section></body>
</html>
