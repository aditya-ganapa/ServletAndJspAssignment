<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	div {
		width: 125px;
		display: inline-block;
}
	input[type=submit] {
		margin-left: 100px;
}
</style>
</head>
<body>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<jsp:useBean id="employee" scope="request" class="assignment.Employee"/>

<h4>Employee Details</h4>
<form action="DisplayEmployeeServlet" method="post">
<div>Id</div>: <c:out value="${employee.id}"></c:out><br><br>
<div>Name</div>: <input name="name" value="<c:out value="${employee.name}"></c:out>"><br><br>
<div>Gender</div>: <input type="radio" name="gender" value="Male" <c:if test="${employee.gender == 'Male' }">checked</c:if>> Male <input type="radio" name="gender" value="Female" <c:if test="${employee.gender == 'Female' }">checked</c:if>> Female<br><br>
<div>Date of Birth</div>: <input name="dateOfBirth" value="<fmt:formatDate value="${employee.dateOfBirth}" pattern="dd/MM/yyyy"/>"><br><br>
<div>Fulltime Employee</div> <input type="checkbox" name="fulltime" value="Yes" <c:if test="${employee.fulltime}">checked</c:if>><br><br>
<div>Department</div>:
<select name="branch">
	<c:forEach items="${departments}" var="x">
		<c:if test="${employee.department == x}"><option value="${x}" selected>${x}</option></c:if>
		<c:if test="${employee.department != x}"><option value="${x}">${x}</option></c:if>
	</c:forEach>
</select><br><br>
<div>Salary</div>: <input name="salary" value='<c:out value="${employee.salary}"></c:out>'><br><br>
<input type="submit" value="Submit">
</form>
</body>
</html>