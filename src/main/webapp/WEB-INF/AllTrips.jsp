<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <style>
        <%@include file="../resources/css/homePage.css" %>
    </style>
    <style>
        <%@include file="../resources/css/profile.css" %>
    </style>

    <title>All Trips</title>
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
<main>
    <section class="details-card">
        <div class="container">
            <div class="row">
                <c:forEach var="trip" items="${ trips }">
                    <div class="col-lg-4 mb-lg-0 mb-4">
                        <div class="card-content">
                            <div class="card-img">
                                <img src="${ trip.landmarks.get(0).imgUrl }">
                            </div>
                            <div class="card-desc">
                                <h3>${ trip.tripName }</h3>
                                <p>${ trip.date }</p>
                                <p>${ trip.price } NIS</p>
                                <a href="/trips/${ trip.id }" class="btn btn-warning">More Details</a>
                                <c:choose>
                                    <c:when test="${ trip.users.contains(currentUser) }">
                                        <span class="btn btn-success">Joined!</span>
                                    </c:when>
                                    <c:otherwise>
                                        <c:choose>
                                            <c:when test="${ currentUser.roles.get(0).name.equals('ROLE_USER') }">
                                                <a href="/trips/${ trip.id }/join" class="btn btn-warning">Join</a>
                                            </c:when>
                                            <c:otherwise>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </section>
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
</body>
</html>
