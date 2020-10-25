<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
   <jsp:useBean id="admin" class="com.dto.Admin"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addFlight.jsp">
	<table>
		<thead>
		<tr>
			<th colspan="2">Add Flight Details</th>
			
		</tr>
		</thead>
		
		<tbody>
		<tr>
			<td>Source:</td>
			<td><input type="text" name="source"></td>
		</tr>
		
		
		<tr>
			<td>Destination:</td>
			<td><input type="text" name="destination"></td>
		</tr>
		
		
		
		<tr>
			<td>Arrival Date:</td>
			<td><input type="text" name="arrDate"></td>
		</tr>
		
		
		
		
		<tr>
			<td>Arrival Time:</td>
			<td><input type="text" name="bookTime"></td>
		</tr>
		
		
		
		
		<tr>
			<td>Total Seats:</td>
			<td><input type="text" name="totSeat"></td>
		</tr>
		
		
		
		
		<tr>
			<td>Booked Seats:</td>
			<td><input type="text" name="bookSeat"></td>
		</tr>
		
		
		<tr>
			<td>Fare:</td>
			<td><input type="text" name="fare"></td>
		</tr>
		
		<tr>
			<td><a href = "home.jsp">Back</a></td>
			<td> <input type="submit" value="Add"></td>
		</tr>
		
		
		
		</tbody>
	
	
	
	</table>


</form>

</body>
</html>