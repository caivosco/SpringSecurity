<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<html>

<head>

	<title>	luv2code company home </title>

</head>

<body>

	<h2>luv2code is a great company, repeat it again!</h2>
	<hr>
	
	<p>
	Welcome to the Jungle
	</p>	
	<hr>
		
	<p>
		User: <security:authentication property="principal.username" />
		<br><br>
		Role(s): <security:authentication property="principal.authorities" />	
	</p>
	<hr>
	
	<security:authorize access="hasRole('MANAGER')">
	<!-- add link to point leaders, only for managers -->
	<p>
		<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
		(Only for managers)
	</p>	
	<hr>
	</security:authorize>
	
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	
		<input type="submit" value="Logout" />
	</form:form>	

</body>

</html>