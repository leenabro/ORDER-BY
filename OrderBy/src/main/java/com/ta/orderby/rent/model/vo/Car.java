package com.ta.orderby.rent.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Car {
	public int no;
	public String name;
	public String mile;
	private int km;
	private int cc;
	private int year;
	private String engine;
	private String brand;
	private String fuel;
	private int price;
	private String position;
	private String status;
	private String sale;
	private int sno;
	private int pfno;
	private int count;
	private Date enrolldate;
	
	
	
}
