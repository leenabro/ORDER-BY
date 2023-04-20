package com.ta.orderby.car.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Car {
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
	
	// 매장 번호
	private int storeNo;
	
	// 상품파일 번호
	private int pFileNo;
	
	private int count;
	
	private Date enrollDate;
}
