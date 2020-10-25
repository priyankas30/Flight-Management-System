<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <jsp:useBean id="admin" class="com.dto.Admin" scope="session"></jsp:useBean>
  <%@ include file="header.jsp" %>
  <%@ include file="cachecontrol.jsp" %>
  <%
  if((admin!=null) && (admin.getAdminId()>0))
  
  %>
  
  
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Homepage</title>
</head>
<body>
	
		<table align="center" style="background-color:orange;  font-size: 45px" >
			<thead>
				<tr>
					<th colspan="2" >Home Page</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a href="addFlight_form.jsp" >Add Flight</a></td>
					
				</tr>
				<tr>
					<td><a href="getflight_list_form.jsp" >Get Flights List</a></td>				
				</tr>
				
			</tbody>
		</table>
	
</body>
</html>