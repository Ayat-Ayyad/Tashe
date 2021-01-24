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
        <%@include file="../resources/css/homePage.css" %>
    </style>
    <style>
        <%@include file="../resources/css/tripInfoPage.css" %>
    </style>
    <title>${ trip.tripName }</title>
</head>
<body>
<header>
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
</header>
<main role="main">
    <div id='map'></div>
    <div class="formBlock py-5 px-4">
        <h2 class="text-warning">${ trip.tripName }</h2>
        <h6>${ trip.date }</h6>
        <h6>${ trip.price } NIS</h6>
        <h6 class="mb-4">Number of people joined: ${ trip.users.size() }</h6>
        <div class="ml-5">
            <c:forEach var="landmark" items="${ trip.landmarks }">
                <h5 class="text-success">${ landmark.landmarkName }</h5>
                <h6>${ landmark.city }</h6>
                <p>${ landmark.description }</p>
                <p>${ landmark.category }</p>
                <p class="mb-5">${ landmark.activity }</p>
            </c:forEach>
        </div>
        <form id="form" class="text-center">
            <input type="hidden" name="landmarks" class="input" id="landmarks" value="${ landmarks }"/>
            <button type="submit" class="btn btn-outline-warning py-2 px-4">Get Route</button>
        </form>
    </div>
</main>
<footer class="footer">
    <div class="row text-center text-lg-left">
        <div class="col-lg-6 px-4 pb-4">
            <h4 class="navbar-brand mb-3">Tasheh</h4>
            <p class="foo text-justify">
                Tasheh allows users to browse through many interesting day-trips around Palestine. Families and friends
                can join to have fun visit lots of different places and do many types of activities.This platform is
                much needed especially during the time of Covid-19. Tasheh facilitates joining fun
                activities to stop people from feeling trapped during lock-downs while also staying safe and being back
                home before the night lock down.I believe this website will be a profitable business as well as a way to
                providing support to our local
                market and internal tourism.
            </p>
        </div>
        <div class="col-lg-3 px-5 py-4">
            <h4 class="mb-3">Contact</h4>
            <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/6nWwZm0/phone-solid.png" alt="phone-solid"
                                                 border="0" width="30px"></a> 00970-345-xxx-xxx</p>
            <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/xYVv5Hk/envelope-solid.png" alt="envelope-solid"
                                                 border="0" width="30px"></a> tashe@ex.com</p>
            <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/zS5b1Xt/facebook.png" alt="facebook" border="0"
                                                 width="30px"></a> tashe/facebook.com</p>
        </div>
        <div class="col-lg-3 px-5 py-4">
            <h4 class="mb-3">Follow Us</h4>
            <div class="social-media">
                <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/kq3BtsV/twitter-square-brands.png"
                                                     alt="twitter-square-brands" border="0" width="30px"></a>
                    tashe/twitter.com</p>
                <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/cFkzBRH/instagram.png" alt="instagram"
                                                     border="0" width="30px"></a> tashe/instagram.com</p>
                <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/T2wcS0z/snapchat-square-brands.png"
                                                     alt="snapchat-square-brands" border="0" width="30px"></a>
                    tashe/snapchat.com</p>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/leaflet.js"></script>
<script src="https://www.mapquestapi.com/sdk/leaflet/v2.2/mq-map.js?key=74uP9PYEEAdpGNKssHcfAONHzfyCaLUy"></script>
<script
        src="https://www.mapquestapi.com/sdk/leaflet/v2.2/mq-routing.js?key=74uP9PYEEAdpGNKssHcfAONHzfyCaLUy"></script>
<script>
    <%@include file="../resources/js/tripInfoPage.js" %>
</script>
</body>
</html>
