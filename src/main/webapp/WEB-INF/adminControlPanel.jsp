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
<footer id="footer">
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
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"
></script>
</body>
</html>
