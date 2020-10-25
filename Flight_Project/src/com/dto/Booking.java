package com.dto;

public class Booking {

	private int bookId;
	private int flightNo;
	private String custName;
	private String custNo;
	private int bookSeat;
	
	//Zero parameter constructor
	public Booking() {
		
	}
	//paramterised

	public Booking(int bookId, int flightNo, String custName, String custNo, int bookSeat) {
		super();
		this.bookId = bookId;
		this.flightNo = flightNo;
		this.custName = custName;
		this.custNo = custNo;
		this.bookSeat = bookSeat;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public int getFlightNo() {
		return flightNo;
	}

	public void setFlightNo(int flightNo) {
		this.flightNo = flightNo;
	}

	public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public String getCustNo() {
		return custNo;
	}

	public void setCustNo(String custNo) {
		this.custNo = custNo;
	}

	public int getBookSeat() {
		return bookSeat;
	}

	public void setBookSeat(int bookSeat) {
		this.bookSeat = bookSeat;
	}

	@Override
	public String toString() {
		return "Booking [bookId=" + bookId + ", flightNo=" + flightNo + ", custName=" + custName + ", custNo=" + custNo
				+ ", bookSeat=" + bookSeat + "]";
	}
	
	
	
	
}
