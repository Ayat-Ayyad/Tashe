<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
        <%@include file="../resources/css/newTripLandmarkForm.css" %>
    </style>
    <style>
        <%@include file="../resources/css/homePage.css" %>
    </style>

    <title>Control Panel</title>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">TASHEH</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#responsiveNavbar"
                aria-controls="responsiveNavbar" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="responsiveNavbar">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">HOME</a>
                </li>
                <li class="nav-item">
                    <form method="post" action="/logout">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <button type="submit" style="border: none" class="nav-link bg-transparent">LOGOUT</button>
                    </form>
                </li>
            </ul>
        </div>
    </nav>
</header>
<main class="container pt-5">

    <div class="row mb-5">
        <div class="col-lg form-block mx-3 mb-5 mb-lg-0">
            <h5 class="mb-4">Add New Landmark:</h5>
            <form:form action="/admin/addlandmark" method="post" modelAttribute="landmark">
                <div class="form-group">
                    <form:label path="landmarkName">Name</form:label>
                    <form:input class="form-control" path="landmarkName"/>
                    <form:errors class="text-danger" path="landmarkName"/>
                </div>
                <div class="form-group">
                    <form:label path="description">Description</form:label>
                    <form:textarea class="form-control" path="description"/>
                    <form:errors class="text-danger" path="description"/>
                </div>
                <div class="form-group">
                    <form:label path="city">City</form:label>
                    <form:select class="form-control" path="city">
                        <c:forEach var="city" items="${ cities }">
                            <option value="${ city }">${ city }</option>
                        </c:forEach>
                    </form:select>
                    <form:errors path="city"/>
                </div>
                <div class="form-group">
                    <form:label path="category">Category</form:label>
                    <form:select class="form-control" path="category">
                        <c:forEach var="category" items="${ categories }">
                            <option value="${ category }">${ category }</option>
                        </c:forEach>
                    </form:select>
                    <form:errors path="category"/>
                </div>
                <div class="form-group">
                    <form:label path="activity">Activity</form:label>
                    <form:select class="form-control" path="activity">
                        <c:forEach var="activity" items="${ activities }">
                            <option value="${ activity }">${ activity }</option>
                        </c:forEach>
                    </form:select>
                    <form:errors path="activity"/>
                </div>
                <div class="form-group">
                    <form:label path="imgUrl">Image Url</form:label>
                    <form:input class="form-control" path="imgUrl"/>
                    <form:errors class="text-danger" path="imgUrl"/>
                </div>
                <button type="submit" class="btn btn-outline-info px-4 py-2">Add Landmark</button>
            </form:form>
        </div>
        <div class="col-lg form-block mx-3">
            <h5 class="mb-4">Add New Trip:</h5>
            <form:form action="/admin/addtrip" method="post" modelAttribute="trip">
                <div class="form-group">
                    <form:label path="tripName">Name</form:label>
                    <form:input class="form-control" path="tripName"/>
                    <form:errors class="text-danger" path="tripName"/>
                </div>
                <div class="form-group">
                    <form:label path="date">Date</form:label>
                    <form:input type="date" class="form-control" path="date"/>
                    <form:errors class="text-danger" path="date"/>
                </div>
                <div class="form-group">
                    <form:label path="price">Price</form:label>
                    <form:input type="number" class="form-control" path="price"/>
                    <form:errors class="text-danger" path="price"/>
                </div>
                <div class="form-group">
                    <form:label path="landmarks">Landmark</form:label>
                    <form:select class="form-control" path="landmarks">
                        <c:forEach var="landmark" items="${ landmarks }">
                            <option value="${ landmark.id }">${ landmark.landmarkName }</option>
                        </c:forEach>
                    </form:select>
                    <form:errors path="landmarks"/>
                </div>
                <button type="submit" class="btn btn-outline-info px-4 py-2">Add Trip</button>
            </form:form>
        </div>
    </div>
</main>
<footer class="footer">
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
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"
></script>
</body>
</html>
