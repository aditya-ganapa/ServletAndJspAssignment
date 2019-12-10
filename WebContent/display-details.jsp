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
</style>
</head>
<body>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="employee" scope="request" class="assignment.Employee"/>
<h2>Employee Details Verification</h2>
<div>
	<b>Id</b><br><c:out value="${employee.id}"></c:out>
</div>
<div>
	<b>Name</b><br><c:out value="${employee.name}"></c:out>
</div>
<div>
	<b>Gender</b><br><c:out value="${employee.gender}"></c:out>
</div><br><br>

<div>
	<b>Date of Birth</b><br><fmt:formatDate value="${employee.dateOfBirth}" pattern="d/M/yyyy"/>
</div>
<div>
	<b>Fulltime Employee</b><br><c:if test="${employee.fulltime}">Yes</c:if><c:if test="${!employee.fulltime}">No</c:if>
</div>
<div>
	<b>Department</b><br><c:out value="${employee.department}"></c:out>
</div><br><br>

<div>
	<b>Salary</b><br><fmt:formatNumber value="${employee.salary}" maxFractionDigits="0" type="currency" currencySymbol="Rs."></fmt:formatNumber>
</div>
</body>
</html>