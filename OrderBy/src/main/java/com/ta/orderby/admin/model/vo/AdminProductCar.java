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
		
		private String price;
		
		private String position;
		
		private String status;
		
		private String sale;
		
		private int s_no;
		
		private String pf_no;
		
		private int count;
		
		private Date enrolldate;
}
