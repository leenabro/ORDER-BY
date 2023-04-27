package com.ta.orderby.payment.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Payment {
	private int no;
	
	private String method;
	
	private String uid;

	private String productName;
	
	private Date date;
	
	private int totPrice;
	
	private int finPrice;
	
	private String status;
	
	private int memberNo;
	
	private int carNo;
	
	private int motocycleNo;
	
	private String c_name;
	
	private String mc_name;
}
