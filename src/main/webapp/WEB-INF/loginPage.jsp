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
        <%@include file="../resources/css/style.css" %>
    </style>
    <style>
        <%@include file="../resources/css/main.css" %>
    </style>

    <title>Login Page</title>
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
            <%--            <li class="nav-item">--%>
            <%--                <a class="nav-link" href="#">PROFILE</a>--%>
            <%--            </li>--%>
            <li class="nav-item">
                <a class="nav-link" href="#">CONTACT US</a>
            </li>
            <%--            <div class="logout">--%>
            <%--                <li>--%>
            <%--                    <form id="logoutForm" method="POST" action="/logout">--%>
            <%--                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
            <%--                        <input type="submit" class="logout" value="Logout!"/>--%>
            <%--                    </form>--%>
            <%--                </li>--%>
            <%--            </div>--%>
        </ul>
    </div>
</nav>

<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>Sign In</h3>
                <div class="d-flex justify-content-end social_icon">
                    <span><i class="fab fa-facebook-square"></i></span>
                    <span><i class="fab fa-google-plus-square"></i></span>
                    <span><i class="fab fa-twitter-square"></i></span>
                </div>
            </div>
            <div class="card-body">
                <c:if test="${errorMessage != null}">
                    <p class="text-danger"><c:out value="${errorMessage}"/></p>
                </c:if>
                <c:if test="${logoutMessage != null}">
                    <p class="text-success"><c:out value="${logoutMessage}"/></p>
                </c:if>
                <form method="POST" action="/login">
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="text" name="username" class="form-control" placeholder="username">

                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input type="password" name="password" class="form-control" placeholder="password">
                    </div>
                    <div class="row align-items-center remember">
                        <input type="checkbox">Remember Me
                    </div>
                    <div class="form-group mb-0">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <input type="submit" class="button" value="Login!"/>
                    </div>
                </form>
            </div>
            <div class="card-footer">
                <div class="d-flex justify-content-center links">
                    Don't have an account?<a href="/registration">Sign Up</a>
                </div>
                <div class="d-flex justify-content-center">
                    <a href="#">Forgot your password?</a>
                </div>
            </div>
        </div>
    </div>
</div>
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
