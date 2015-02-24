<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="common-meta.html"></c:import>
<title>Input Numbers</title>
</head>
<body>
	<c:import url="/common-nav.jsp"></c:import>
	
	<c:if test="${not empty error }">
		<p>${error }</p>
	</c:if>

	
	<div class="page-header col-md-offset-2">
  		<h1>Number Adder <small>Fun with Floats</small></h1>
	</div>

	<div class="form-group">
		<form class="col-md-8" action="AddNumbersServlet"
			method="post">
			<input class="form-control" type="hidden" name="action" value="add"> 
			
			<label for="num1">Number One:</label> 
			<input class="form-control"  id="num1" type="number" step="any" name="number1"
				placeholder="Enter a Double" required><br /> 
				
			<label for="num2">Number Two:</label> 
			<input class="form-control" id="num2" type="number" step="any" name="number2"
				placeholder="Enter a Double" required><br /> 
				
			<label>&nbsp;</label> 
			<input class="col-md-4" type="submit" value="Add" id="submit">
		</form>
	</div>
</body>
</html>