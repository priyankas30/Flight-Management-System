<%@page import="com.service.FlightServiceImple"%>
<%@page import="com.service.FlightService" %>

<jsp:useBean id="flight" class="com.dto.Flight" scope="page"></jsp:useBean>
<%@page import ="com.dto.Flight"%>
<jsp:setProperty property="*" name="flight"/>

<% 
	FlightService fs = new FlightServiceImple();
int i = fs.modifyFlight(flight);
if(i>0){
	response.sendRedirect("getflight_list_form.jsp");
}else{
	response.sendRedirect("getflight_list_form.jsp");
}

%>