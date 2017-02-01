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

<form action="Calculate"   method="Post">

 <input type="text" id="quantity" name="quantity" >


 <select name="unit1" id="unit1" >
    <c:forEach var="units" items="${units}">
        <option value="${units.units}"> ${units.units}</option>
        <option value="${units.units2}"> ${units.units2}</option>
    </c:forEach>
</select>

=

 <input type="text" id="quantity2" name="quantity2" value="?"> 

   <select name="unit2" id="unit2">
    <c:forEach var="units" items="${units}">
        <option value="${units.units2}">${units.units2}</option>
        <option value="${units.units}"> ${units.units}</option>
    </c:forEach>
</select>   


<button type=submit> Calculate </button> 
</form>

<a href="mainServlet">Back</a>

</body>
</html>