<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
div {
	display: inline-block;
	width: 120px;
}
input[type=submit] {
	margin-left: 100px;
}
</style>
</head>
<body>
<h3>Personal Information</h3>
<form action="PersonalInformationHandlerServlet" method="post">
	<div>Name</div>: <input name="name" value="${user.name}"/><br><br>
	<div>Email Address</div>: <input name="emailAddress" value="${user.emailAddress}"/><br><br>
	<input type="submit" value="Next"/>
</form>
</body>
</html>