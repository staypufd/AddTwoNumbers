<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="/common-meta.html"></c:import>
<title>Results</title>
</head>
<body>
	<c:import url="/common-nav.jsp"></c:import>
	Result is: ${result } <br/>
	
<%-- 	Context Path is: ${pageContext.request.contextPath} <br/> --%>

</body>
</html>