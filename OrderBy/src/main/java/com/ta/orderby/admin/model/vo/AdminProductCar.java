package com.ta.orderby.admin.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminProductCar {

		private int no;
		
		private String name;
		
		private String mile;
		
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
