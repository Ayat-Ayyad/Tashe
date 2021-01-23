<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/leaflet.css"/>
    <style>
        <%@include file="../resources/css/tripInfoPage.css" %>
    </style>
    <style>
        <%@include file="../resources/css/style.css" %>
    </style>
    <title>${ trip.tripName }</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">TASHEH</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
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
    <div id='map'></div>
    <div class="formBlock">
        <h4>${ trip.tripName }</h4>
        <p>${ trip.date }</p>
        <p>${ trip.price }NIS</p>
        <p>Number of people joined: ${ trip.users.size() }</p>
        <div class="ml-5">
            <c:forEach var="landmark" items="${ trip.landmarks }">
           <h5>${ landmark.landmarkName }</h5>
                <p>${ landmark.city }</p>
                <p>${ landmark.description }</p>
                <p>${ landmark.category }</p>
                <p>${ landmark.activity }</p>

            </c:forEach>
        </div>
        <form id="form">
            <input type="hidden" name="landmarks" class="input" id="landmarks" value="${ landmarks }"/>
            <button style="" type="submit">Get Route</button>
        </form>
    </div>
</main>
<!-- Footer -->
<section id="footer">
    <div class="container">
        <div class="row text-center text-xs-center text-sm-left text-md-left">
            <div class="col-xs-12 col-sm-4 col-md-4">
                <h5>Quick links</h5>
                <ul class="list-unstyled quick-links">
                    <li><a href="#"><i class="fa fa-angle-double-right"></i>Home</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i>About</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i>Get Started</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i>Videos</a></li>
                </ul>
            </div>
        </div>
    </div>
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"
></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/leaflet.js"></script>
<script src="https://www.mapquestapi.com/sdk/leaflet/v2.2/mq-map.js?key=S8d7L47mdyAG5nHG09dUnSPJjreUVPeC"></script>
<script
        src="https://www.mapquestapi.com/sdk/leaflet/v2.2/mq-routing.js?key=S8d7L47mdyAG5nHG09dUnSPJjreUVPeC"></script>
<script>
    <%@include file="../resources/js/tripInfoPage.js" %>
</script>
</body>
</html>
