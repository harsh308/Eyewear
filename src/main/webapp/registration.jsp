<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<form class="col-lg-6 col-md-6 col-sm-12">
<div class="form-group">
<label>Enter your Username</label>
<input type="text" name="username" class="form-control"/>
</div>
<div class="form-group">
<label>Enter your Email</label>
<input type="email" name="email" class="form-control"/>
</div>
<div class="form-group">
<label>Enter your Password</label>
<input type="password" name="password" class="form-control"/>
</div>
<div class="form-group">
<label>Enter your Mobile Number</label>
<input type="number" name="number" class="form-control"/>
</div>
<div class="form-group">
<input type="submit" value="registration" class="btn btn-primaryl"/>
<input type="submit" value="rese" class="btn btn-danger"/>
</div>
</form>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>