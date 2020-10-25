<%@page import="com.dto.Flight"%>
<%@page import="com.service.FlightServiceImple"%>
<%@page import="com.service.FlightService"%>
<jsp:useBean id="booking" class="com.dto.Booking" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="booking"/>

<% 
	int bseat = booking.getBookSeat();
	int flightNo = booking.getFlightNo();
	FlightService fs = new FlightServiceImple();
	Flight fl = fs.getFlight(flightNo);
	int flSeat=	fl.getBookSeat();
	int fseat = bseat + flSeat;
	if(fseat > fl.getTotSeat() || (bseat>fl.getTotSeat())){
		response.sendRedirect("fail.jsp");
	}
	else{
		int i = fs.Reserveflight(flightNo, fseat);
		response.sendRedirect("done.jsp");
	}
		
	

%>