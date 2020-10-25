<%@page import="com.service.FlightServiceImple"%>
<%@page import="com.service.FlightService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="flight" class="com.dto.Flight" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="flight"/>
<%@ include file="cachecontrol.jsp" %>
<jsp:useBean id="admin" class="com.dto.Admin" scope="session"></jsp:useBean>

<% 
if((admin!=null) && (admin.getAdminId()>0)){

%>
<%
	FlightService fs = new FlightServiceImple();
	int i = fs.addFligt(flight);
	if(i>0)
	{
		response.sendRedirect("home.jsp");
	}
	else{
		response.sendRedirect("addFlight_form.jsp");
	}
%>
	
<% } else 
{
	response.sendRedirect("login.jsp");	
	}
%>
