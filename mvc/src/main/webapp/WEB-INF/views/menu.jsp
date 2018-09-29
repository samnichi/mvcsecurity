<!DOCTYPE HTML>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<sec:authorize access="hasRole('ROLE_USER')">
		<a href="/employee/new">New Employee</a>
		<br>
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_MANAGER')">
		<a href="/maanager">Manager Screens</a>
		<br>
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<a href="/superandadmin">Supervisor & Manager screens</a>
		<br>
	</sec:authorize>
		<sec:authorize access="hasRole('ROLE_OPERATOR')">
		<br>
		<a href="/ope">Operator screens</a>
	</sec:authorize>
		<sec:authorize access="hasRole('ROLE_SUPERVISOR')">
		<a href="/super">Supervisor Screens</a>
		<br>
	</sec:authorize>

	<a href="/logout">Logout</a>
</body>
</html>