package com.service;

import java.util.ArrayList;

import com.dao.FlightDao;
import com.dao.FlightDaoImple;
import com.dto.Flight;

public class FlightServiceImple implements FlightService{

	private FlightDao flightdao;
	
	
	
	
	public FlightServiceImple() {
		flightdao=new FlightDaoImple();
	}

	@Override
	public int addFligt(Flight flight) {
		// TODO Auto-generated method stub
		return flightdao.insertFlight(flight);
	}

	@Override
	public int modifyFlight(Flight flight) {
		// TODO Auto-generated method stub
		return flightdao.updateFlight(flight);
		
	}

	@Override
	public int removeFlight( int flightNo) {
		// TODO Auto-generated method stub
		return flightdao.deleteFlight(flightNo);
	}

	@Override
	public ArrayList<Flight> displayFlight() {
		// TODO Auto-generated method stub
		return flightdao.showFlight();
	}

	@Override
	public Flight getFlight(int flightNo) {
		// TODO Auto-generated method stub
		return flightdao.findFlight(flightNo);
	}

	@Override
	public int Reserveflight(int flightNo, int fSeat) {
		// TODO Auto-generated method stub
		return flightdao.Booking(flightNo, fSeat);
	}
	

}
