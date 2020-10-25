package com.service;

import java.util.ArrayList;

import com.dao.BookingDao;
import com.dao.BookingDaoImple;
import com.dto.Booking;
import com.dto.Flight;

public class BookingServiceImple implements BookingService {

	private BookingDao bookingdao;
	
	public BookingServiceImple() {
		bookingdao = new BookingDaoImple();
	}

	@Override
	public int addBooking(Booking booking) {
		// TODO Auto-generated method stub
		return bookingdao.insertBooking(booking);
	}

	@Override
	public ArrayList<Flight> findFlights(String source, String destination, String arrDate) {
		// TODO Auto-generated method stub
		return bookingdao.searchFlights(source, destination, arrDate);
	}

}
