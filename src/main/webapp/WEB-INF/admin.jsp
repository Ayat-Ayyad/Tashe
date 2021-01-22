<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: tala
  Date: 1/21/2021
  Time: 3:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style><%@include file="../resources/css/admin.css"%></style>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>
<body>
<h1>Landmark form</h1>
    <div class="card-body">
            <form:form method="POST" action="/landmarks" modelAttribute="landmark">
        <div class="input-group form-group">
            <div class="input-group-prepend">
            </div>

            <form:input type="text" path="landmarkName" class="form-control" placeholder="name"/>

        </div>
        <div class="input-group form-group">
            <div class="input-group-prepend">
            </div>
            <form:input type="text" path="description" class="form-control" placeholder="description"/>
        </div>
        <div class="input-group form-group">
            <div class="input-group-prepend">
            </div>
            <form:input type="text" path="city" class="form-control" placeholder="city"/>
        </div>
            <div class="input-group form-group">
                <div class="input-group-prepend">
                </div>
                <form:input type="text" path="category" class="form-control" placeholder="category"/>
            </div>
                <div class="form-group">
                    <input class="button" type="submit" value="add!"/>
                </div>
                </form:form>
    </div>
    </div>
<hr>
<%--Create Trip form--%>
<h1>Trip Form</h1>
<div class="card-body">
    <form:form method="POST" action="/trips/new" modelAttribute="trip">
        <div class="input-group form-group">
            <div class="input-group-prepend">
            </div>

            <form:input type="text" path="tripName" class="form-control" placeholder="name"/>

        </div>
        <div class="input-group form-group">
            <div class="input-group-prepend">
            </div>
            <form:input type="date" path="date" class="form-control" placeholder="date"/>
        </div>
        </div>
        <div class="input-group form-group">
            <div class="input-group-prepend">
            </div>
            <form:input type="text" path="price" class="form-control" placeholder="category"/>
        </div>
        <div class="form-group">
            <input class="button" type="submit" value="add!"/>
        </div>
    </form:form>
</div>
</div>

</body>
</html>
