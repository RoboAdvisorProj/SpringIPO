package com.ipo.vo.bitcoin;

import java.util.Date;

public class BitcoinVO {

	private Date regdate;
	private double data;
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public double getData() {
		return data;
	}
	public void setData(double data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "BitcoinVO [regdate=" + regdate + ", data=" + data + "]";
	}
	
	
}
