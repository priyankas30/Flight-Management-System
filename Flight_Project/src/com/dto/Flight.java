package com.dto;

import java.sql.Time;
import java.util.Date;

public class Flight {
	private int flightNo;
	private String source;
	private String destination;
	private String arrDate;
	private String bookTime;
	private int bookSeat;
	private int totSeat;
	private float fare;
	
	//Zero parameter constructor
	public Flight() {
		
	}
 
	//Parametrize construcotr
	public Flight(int flightNo, String source, String destination, String arrDate, String bookTime, int bookSeat,
			int totSeat, float fare) {
	
		this.flightNo = flightNo;
		this.source = source;
		this.destination = destination;
		this.arrDate = arrDate;
		this.bookTime = bookTime;
		this.bookSeat = bookSeat;
		this.totSeat = totSeat;
		this.fare = fare;
	}

	public int getFlightNo() {
		return flightNo;
	}

	public void setFlightNo(int flightNo) {
		this.flightNo = flightNo;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getArrDate() {
		return arrDate;
	}

	public void setArrDate(String arrDate) {
		this.arrDate = arrDate;
	}

	public String getBookTime() {
		return bookTime;
	}

	public void setBookTime(String bookTime) {
		this.bookTime = bookTime;
	}

	public int getBookSeat() {
		return bookSeat;
	}

	public void setBookSeat(int bookSeat) {
		this.bookSeat = bookSeat;
	}

	public int getTotSeat() {
		return totSeat;
	}

	public void setTotSeat(int totSeat) {
		this.totSeat = totSeat;
	}

	public float getFare() {
		return fare;
	}

	public void setFare(float fare) {
		this.fare = fare;
	}

	@Override
	public String toString() {
		return "Flight [flightNo=" + flightNo + ", source=" + source + ", destination=" + destination + ", arrDate="
				+ arrDate + ", bookTime=" + bookTime + ", bookSeat=" + bookSeat + ", totSeat=" + totSeat + ", fare="
				+ fare + "]";
	}
	
	
	
	
	
	
	
	


}
