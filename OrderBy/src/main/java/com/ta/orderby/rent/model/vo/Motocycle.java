package com.ta.orderby.rent.model.vo;

import java.util.Date;

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
	private float fuel;
	private int year;
	private int km;
	private String price;
	private String position;
	private String status;
	private String sale;
	private int sno;
	private int pfno;
	private int count;
	private Date enrolldate;
}
