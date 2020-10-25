<%@page import="com.dto.Flight"%>
<%@page import="com.service.FlightServiceImple"%>
<%@page import="com.service.FlightService"%>
<% 
	int flightNo=Integer.parseInt(request.getParameter("flightNo"));
	FlightService fs=new FlightServiceImple();
	Flight fl = fs.getFlight(flightNo);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="logic.jsp" method="post">
	<table align="center">
		<thead>
		<tr>
			<th colspan="2">Book Flight</th>
			
		</tr>
		</thead>
		
		<tbody>
		
		
		<tr>
			<td>Flight No:</td>		
			<td><input type="text" name="flightNo" value=<%=fl.getFlightNo() %> /> </td>
		</tr>
		
		
		<tr>
			<td>Customer Name:</td>
			<td><input type="text" name="custName" ></td>
		</tr>
		
		
		<tr>
			<td>Customer No:</td>
			<td><input type="text" name="custNo"  /> </td>
		</tr>
		
		
		<tr>
			<td>No of Seats:</td>
			<td><input type="text" name="bookSeat" ></td>
		</tr>
		
		
		
		
		<tr>
			<td><a href = "home.jsp">Back</a></td>
			<td> <input type="submit" value="Book"></td>
		</tr>
		
		
		
		</tbody>
	
	
	
	</table>


</form>

</body>
</html>
