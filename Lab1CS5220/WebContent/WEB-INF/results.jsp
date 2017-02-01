<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1" cellpadding="5" width="300">
<tr>
<td><c:out value="${q1}"></c:out></td>
 <td><c:out value="${unit1}"></c:out></td>
 <td><c:out value="${q2}"></c:out></td>
<td><c:out value="${unit2}"></c:out></td> 
</tr>
</table>


<a href="Calculate">Back</a>
<a href="mainServlet">Main Page</a>


</body>
</html>