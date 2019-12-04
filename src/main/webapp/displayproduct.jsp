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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="src/main/webapp/css/displayproduct.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<sql:setDataSource driver="com.mysql.jdbc.Driver"
                      url="jdbc:mysql://localhost:3306/eyewear"
                      user="root"
                      password="root"
                      var="con"/>
                       <sql:query var="data" dataSource="${con}">
         select * from products where productid=?
         <sql:param>${param.productid}</sql:param>
    </sql:query>
    <c:forEach items="${data.rows }" var="row">

<div class="container">
	<div class="card">
	<div class="row">
		<aside class="col-sm-5 border-right">
<article class="gallery-wrap"> 
<div class="img-big-wrap">
  <div> <a href="#"><img src="ImageServlet?productid=${row.productid}" style="width: 500px ;"></a></div>
</div> <!-- slider-product.// -->
<div class="img-small-wrap">
</div> <!-- slider-nav.// -->
</article> <!-- gallery-wrap .end// -->
		</aside>
		<aside class="col-sm-7">
<article class="card-body p-5">
	<h3 class="title mb-3">${row.productname}</h3>

<p class="price-detail-wrap"> 
	<span class="price h3 text-warning"> 
		<span class="currency"></span><span class="num">${row.price }</span>
	</span> 
	<span>/per</span> 
</p> <!-- price-detail-wrap .// -->
<dl class="item-property">
  <dt>Description</dt>
  <dd><p>${row.description} </p></dd>
</dl>
<dl class="param param-feature">
  <dt>Frame Type</dt>
  <dd>${ro.frametype }</dd>
</dl>  <!-- item-property-hor .// -->
<dl class="param param-feature">
  <dt>Frame Color</dt>
  <dd>${row.framecolor}</dd>
</dl>  <!-- item-property-hor .// -->
<dl class="param param-feature">
  <dt>Frame Size</dt>
  <dd>${row.framesize }</dd>
</dl>  <!-- item-property-hor .// -->

<hr>
	<div class="row">
		<div class="col-sm-5">
			<dl class="param param-inline"  >
			  <dt >Quantity: </dt>
			  <dd>
			  	<select class="form-control form-control-sm"  style="width:70px;">
			  		<option> 1 </option>
			  		<option> 2 </option>
			  		<option> 3 </option>
			  	</select>
			  </dd>
			</dl>  <!-- item-property .// -->
		</div> <!-- col.// -->
		 <!-- col.// -->
	</div> <!-- row.// -->
	<hr>
	<a href="#" class="btn btn-lg btn-primary text-uppercase"> Buy now </a>
	<a href="#" class="btn btn-lg btn-outline-primary text-uppercase"> <i class="fas fa-shopping-cart"></i> Add to cart </a>
</article> <!-- card-body.// -->
		</aside> <!-- col.// -->
	</div> <!-- row.// -->
</div> <!-- card.// -->


</div>

</c:forEach>

</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>