package com.ta.orderby.admin.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminProductMotocycle {
	private int no;
	
	private String name;
	
	private String brand;
	
	private String engine;
	
	private int cc;
	
	private int output;
	
	private int torque;
	
	private int fuel;
	
	private int year;

	private int km;
	
	private int price;
	
	private String position;
	
	private String status;
	
	private String sale;
	
	private int sno;
	
	private int pfno;
	
	private int count;
	
	private Date enrolldate;
}

