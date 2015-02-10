<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="common-meta.html"></c:import>
<title>Input Numbers</title>
</head>
<body>

	<c:if test="${not empty error }">
		<p>${error }</p>
	</c:if>

	<form action="AddNumbersServlet" method="post">
		<input type="hidden" name="action" value="add">
		
		<label>Number One:</label>
		<input type="number" step="any" name="number1" placeholder="Enter a Double" required><br/>
		
		<label>Number Two:</label>
		<input type="number" step="any" name="number2" placeholder="Enter a Double" required><br/>
		
		<label>&nbsp;</label>
		<input type="submit" value="Add" id="submit">
	</form>
</body>
</html>