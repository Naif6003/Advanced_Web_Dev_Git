<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Unit</title>
</head>
<body>

<form action="EditUnits" method="Post">
<table border="1" cellpadding="5" width="300" >

<thead>
<tr>
				<th> id </th>
                <th>Quantity</th>
                <th>Unit 1</th>
                <th>  </th>
                <th>Quantity</th>
                <th>Unit 2</th>
                <th>   </th>
              </tr>

</thead>
<tbody>
			<tr>
					<td><input type="text" id="id" name="id" value="${editThisUnit.id}"></td>
					<td><input type="text" id="quantity1" name="quantity1" value="${editThisUnit.quantity}"></td>
					<td> <input type="text" id="unit1" name="unit1" value="${editThisUnit.units}"></td>
					<td> = </td>
					<td><input type="text" id="quantity2" name="quantity2" value="${editThisUnit.quantity2}"></td>
					<td><input type="text" id="unit2" name="unit2" value="${editThisUnit.units2}"></td>
					<td> <button type="submit" > Save </button> </td>
			</tr>

</tbody>


</table>
</form>
<a href="mainServlet">Back</a>
</body>
</html>