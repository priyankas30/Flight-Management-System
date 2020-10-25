package com.dao;

import java.util.ArrayList;

import com.dto.Flight;

public interface FlightDao {

	public int insertFlight(Flight flight);
	public int updateFlight(Flight flight);
	public int deleteFlight(int flightNo);
	public ArrayList<Flight> showFlight();
	public Flight findFlight(int flightNo);
	public int Booking(int flightNo,int fSeat);
	
	

	
}
