package com.ta.orderby.motocycle.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Motocycle {
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
	
	private int storeNo;
	
	private int count;
	
	private Date enrollDate;
	
	private int productNo;
}
