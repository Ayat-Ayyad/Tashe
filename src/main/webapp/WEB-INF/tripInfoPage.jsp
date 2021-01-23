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
  <%--  <style>
        <%@include file="../resources/css/homePage.css" %>
    </style>--%>
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
                <a class="nav-link" href="/">HOMEPAGE</a>
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
<%--<!-- Footer -->--%>
<%--<footer class="footer">
    <div class="row text-center text-lg-left">
        <div class="col-lg-5 px-4 pb-4">
            <h4 class="mb-3">TASHEH</h4>
            <p class="foo">
                Tasheh allows users to browse through many interesting day-trips around Palestine. Families and friends can join to have fun visit lots of different places and do many types of activities.

                This platform is much needed especially during the time of Covid-19. Tasheh facilitates joining fun activities to stop people from feeling trapped during lock-downs while also staying safe and being back home before the night lock down.

                I believe this website will be a profitable business as well as a way to providing support to our local market and internal tourism. </p>
        </div>
        <div  class="col-lg-5 px-4 pb-4">
            <h4 class="mb-3">Contact</h4>
            <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/6nWwZm0/phone-solid.png" alt="phone-solid" border="0" width="30px"></a> 00972-345-xxx-xxx</p>
            <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/xYVv5Hk/envelope-solid.png" alt="envelope-solid" border="0" width="30px"></a> tashe@ex.com</p>
            <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/zS5b1Xt/facebook.png" alt="facebook" border="0" width="30px"></a> tashe/facebook.com</p>
        </div>
        <div class="col-lg-2 px-4 pb-4">
            <h4 class="mb-3">Follow Us</h4>
            <div class="social-media">
                <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/kq3BtsV/twitter-square-brands.png" alt="twitter-square-brands" border="0" width="30px"></a>  tashe/twitter.com</p>
                <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/cFkzBRH/instagram.png" alt="instagram" border="0" width="30px"></a>  tashe/instagram.com</p>
                <p><a href="https://imgbb.com/"><img src="https://i.ibb.co/T2wcS0z/snapchat-square-brands.png" alt="snapchat-square-brands" border="0" width="30px"></a>   tashe/snapchat.com</p>
            </div>
        </div>
    </div>
    <hr/>

    <div class="copyright text-center pb-3">Copyright&copy;2021 - All Rights Reserved</div>
</footer>--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"
></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/leaflet.js"></script>
<script src="https://www.mapquestapi.com/sdk/leaflet/v2.2/mq-map.js?key=74uP9PYEEAdpGNKssHcfAONHzfyCaLUy"></script>
<script
        src="h ttps://www.mapquestapi.com/sdk/leaflet/v2.2/mq-routing.js?key=74uP9PYEEAdpGNKssHcfAONHzfyCaLUy"></script>
<script>
    <%@include file="../resources/js/tripInfoPage.js" %>
</script>
</body>
</html>
