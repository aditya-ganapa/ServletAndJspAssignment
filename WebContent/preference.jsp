<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	width: 200px;
}
input[type=submit] {
	margin-left: 100px;
}
</style>
</head>
<body>
<c:out value="${user.preference }"></c:out>
<h3>Personal Information</h3>
<form action="PreferenceHandlerServlet" method="post">
	<div>Include Promos and Offers</div>: <input type="checkbox" name="preference" value="yes" <c:if test="${user.preference}">checked</c:if>/><br><br>
	<input type="submit" value="Back"/>
</form>
</body>
</html>