<%@page import="com.service.BookingServiceImple"%>
<%@page import="com.service.BookingService"%>
<jsp:useBean id="booking" class="com.dto.Booking" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="booking"/>

<% 
 	
	BookingService bs = new BookingServiceImple();
	int i = bs.addBooking(booking);
	if(i>0){
		response.sendRedirect("done.jsp");
	}
	else{
		response.sendRedirect("fail.jsp");
	}
%>