<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>

<form action="AddProductController" class="form-horizontal" method="post" enctype="multipart/form-data" >
<fieldset>
<legend>PRODUCTS</legend>
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>  
  <div class="col-md-4">
  <input id="product_name" name="productname" placeholder="PRODUCT NAME" class="form-control input-md"  type="text">   
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">PRODUCT DESCRIPTION </label>  
  <div class="col-md-4">
  <input id="product_name_fr" name="description" placeholder="PRODUCT DESCRIPTION" class="form-control input-md"  type="text">    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="available_quantity">AVAILABLE QUANTITY</label>  
  <div class="col-md-4">
  <input id="available_quantity" name="quantity" placeholder="AVAILABLE QUANTITY" class="form-control input-md" required="" type="text">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="online_date">FRAME TYPE</label>  
  <div class="col-md-4">
  <input id="online_date" name="frametype" placeholder="FRAME TYPE" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="author">FRAME SIZE</label>  
  <div class="col-md-4">
  <input id="author" name="framesize" placeholder="FRAME SIZE" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="tutorial_fr">FRAME COLOR</label>
  <div class="col-md-4">
    <input id="tutorial_fr" name="framecolor" placeholder="FRAME COLOR" class="form-control input-md" required="" type="text">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="tutorial">GLASS NUMBER</label>
  <div class="col-md-4">
    <input id="tutorial" name="glassnumber" placeholder="GLASS NUMBER" class="form-control input-md" required="" type="text">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="stock_critical">PRICE</label>
  <div class="col-md-4">
    <input id="stock_critical" name="price" placeholder="PRICE" class="form-control input-md" required="" type="text">
    
  </div>
</div>


 <!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="filebutton">main_image</label>
  <div class="col-md-4">
    <input id="filebutton" name="image" class="input-file" type="file">
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <input type="submit" id="singlebutton" value="Add Product" class="btn btn-primary">
  <input type="reset" id="singlebutton" value="Reset" class="btn btn-danger">
  </div>
  </div>
 
</fieldset>
</form>

</body>
</html>