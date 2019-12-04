<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page isELIgnored="false" %>
 <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="css/displayproduct.css" rel="stylesheet"/>
<style>
.myclass {font-size: x-large;}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
      <sql:setDataSource driver="com.mysql.jdbc.Driver"
                      url="jdbc:mysql://localhost:3306/eyewear"
                      user="root"
                      password="root"
                      var="con"/>
                       <sql:query var="data" dataSource="${con}">
         select * from products
    </sql:query>
    <c:forEach items="${data.rows }" var="row">
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-4">
            <div class="card" data-href='displayproduct.jsp?productidid=${row.productid}'>
            <a href="displayproduct.jsp?productid=${row.productid}">
                    <img src="ImageServlet?productid=${row.productid}"/>
                    </a>
                <br />
                <div class="card-content">
                    <h4 class="card-title">
                            ${row.productname}
                    </h4>
                    <div class="myclass">
                        ${row.price }
                    </div>
                </div>
                <div class="card-read-more">
                    <a class="btn btn-link btn-block" href="buy.jsp">
                        BUY NOW
                    </a>
                </div>
            </div>
        </div>
        <%-- 
        <div class="col-xs-12 col-sm-4">
            <div class="card">
                <a class="img-card" href="http://www.fostrap.com/">
                    <img src="https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?w=940&h=650&auto=compress&cs=tinysrgb"/>
                </a>
                <br />
                <div class="card-content">
                    <h4 class="card-title">
                        <a href="http://www.fostrap.com/">
                            BMW X5 SERIES
                        </a>
                    </h4>
                    <div class="">
                        New Delhi, 2005, Petrol
                    </div>
                </div>
                <div class="card-read-more">
                    <a class="btn btn-link btn-block" href="http://www.fostrap.com/">
                        BID NOW
                    </a>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-4">
            <div class="card">
                <a class="img-card" href="http://www.fostrap.com/">
                    <img src="https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?w=940&h=650&auto=compress&cs=tinysrgb"/>
                </a>
                <br />
                <div class="card-content">
                    <h4 class="card-title">
                        <a href="http://www.fostrap.com/">
                            BMW X5 SERIES
                        </a>
                    </h4>
                    <div class="">
                        New Delhi, 2005, Petrol
                    </div>
                </div>
                <div class="card-read-more">
                    <a class="btn btn-link btn-block" href="http://www.fostrap.com/">
                        BID NOW
                    </a>
                </div>
            </div>
        </div>
        
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-4">
            <div class="card">
                <a class="img-card" href="http://www.fostrap.com/">
                    <img src="https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?w=940&h=650&auto=compress&cs=tinysrgb"/>
                </a>
                <br />
                <div class="card-content">
                    <h4 class="card-title">
                        <a href="http://www.fostrap.com/">
                            BMW X5 SERIES
                        </a>
                    </h4>
                    <div class="">
                        New Delhi, 2005, Petrol
                    </div>
                </div>
                <div class="card-read-more">
                    <a class="btn btn-link btn-block" href="http://www.fostrap.com/">
                        BID NOW
                    </a>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-4">
            <div class="card">
                <a class="img-card" href="http://www.fostrap.com/">
                    <img src="https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?w=940&h=650&auto=compress&cs=tinysrgb"/>
                </a>
                <br />
                <div class="card-content">
                    <h4 class="card-title">
                        <a href="http://www.fostrap.com/">
                            BMW X5 SERIES
                        </a>
                    </h4>
                    <div class="">
                        New Delhi, 2005, Petrol
                    </div>
                </div>
                <div class="card-read-more">
                    <a class="btn btn-link btn-block" href="http://www.fostrap.com/">
                        BID NOW
                    </a>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-4">
            <div class="card">
                <a class="img-card" href="http://www.fostrap.com/">
                    <img src="https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?w=940&h=650&auto=compress&cs=tinysrgb"/>
                </a>
                <br />
                <div class="card-content">
                    <h4 class="card-title">
                        <a href="http://www.fostrap.com/">
                            BMW X5 SERIES
                        </a>
                    </h4>
                    <div class="">
                        New Delhi, 2005, Petrol
                    </div>
                </div>
                <div class="card-read-more">
                    <a class="btn btn-link btn-block" href="http://www.fostrap.com/">
                        BID NOW
                    </a>
                </div>
            </div>
        </div>
        --%>
        
    </div>
</div>
</c:forEach>
<script>
            $(document).ready(function($) {
    $(".card").click(function() {
        window.document.location = $(this).data("href");
    });
});
</script>
</body>
</html>