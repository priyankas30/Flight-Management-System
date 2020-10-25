<%@page import="com.service.FlightServiceImple"%>
<%@page import="com.dto.Flight"%>
<%@page import="com.service.FlightService"%>
<%@ include file="cachecontrol.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
   <jsp:useBean id="admin" class="com.dto.Admin" scope="session"></jsp:useBean>
<%
	if((admin!=null) && (admin.getAdminId() > 0))  { 
		
%>

<%

	int flightNo=Integer.parseInt(request.getParameter("flightNo"));
	FlightService fs = new FlightServiceImple();
	Flight fl=fs.getFlight(flightNo);
%>





<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="update.jsp" method="post">
	<table>
		<thead>
		<tr>
			<th colspan="2">Update Flight Details</th>
			
		</tr>
		</thead>
		
		<tbody>
		
		<tr>
					
					<td><input type="hidden" name="flightNo" value=<%=fl.getFlightNo() %> /> </td>
				</tr>
		
		
		<tr>
			<td>Source:</td>
			<td><input type="text" name="source" value=<%=fl.getSource()%>></td>
		</tr>
		
		
		<tr>
			<td>Destination:</td>
			<td><input type="text" name="destination" value=<%=fl.getDestination() %> /> </td>
		</tr>
		
		
		
		<tr>
			<td>Arrival Date:</td>
			<td><input type="text" name="arrDate" value=<%=fl.getArrDate()%> ></td>
		</tr>
		
		
		
		
		<tr>
			<td>Arrival Time:</td>
			<td><input type="text" name="bookTime" value=<%=fl.getBookTime()%> ></td>
		</tr>
		
		
		
		
		<tr>
			<td>Total Seats:</td>
			<td><input type="text" name="totSeat" value=<%=fl.getTotSeat()%> ></td>
		</tr>
		
		
		
		
		<tr>
			<td>Booked Seats:</td>
			<td><input type="text" name="bookSeat" value=<%=fl.getBookSeat()%>></td>
		</tr>
		
		
		<tr>
			<td>Fare:</td>
			<td><input type="text" name="fare" value=<%=fl.getFare()%>></td>
		</tr>
		
		<tr>
			<td><a href = "home.jsp">Back</a></td>
			<td> <input type="submit" value="Update"></td>
		</tr>
		
		
		
		</tbody>
	
	
	
	</table>


</form>

</body>
</html>


<%}
	else{
		response.sendRedirect("login.jsp");
	}
%>