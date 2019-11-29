<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page isELIgnored="false" %>
 <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>
<body>
   <sql:setDataSource driver="com.mysql.jdbc.Driver"
                      url="jdbc:mysql://localhost:3306/eyewear"
                      user="root"
                      password="root"
                      var="con"/>
                    
    <sql:query var="data" dataSource="$(con)">
         select * from products where productid=?
    </sql:query>
<div class="col-md-2 column productbox">
    <img src="http://placehold.it/460x250/e67e22/ffffff&text=HTML5" class="img-responsive">
    <div class="producttitle">Product 2</div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">BUY</a></div><div class="pricetext">£8.95</div></div>
</div>
<div class="col-md-2 column productbox">
    <img src="http://placehold.it/460x250/e67e22/ffffff&text=HTML5" class="img-responsive">
    <div class="producttitle">Product 2</div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">BUY</a></div><div class="pricetext">£8.95</div></div>
</div>
<div class="col-md-2 column productbox">
    <img src="http://placehold.it/460x250/e67e22/ffffff&text=HTML5" class="img-responsive">
    <div class="producttitle">Product 3</div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">BUY</a></div><div class="pricetext">£8.95</div></div>
</div>
<div class="col-md-2 column productbox">
    <img src="http://placehold.it/460x250/e67e22/ffffff&text=HTML5" class="img-responsive">
    <div class="producttitle">Product 4</div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">BUY</a></div><div class="pricetext">£8.95</div></div>
</div>

</body>
</html>