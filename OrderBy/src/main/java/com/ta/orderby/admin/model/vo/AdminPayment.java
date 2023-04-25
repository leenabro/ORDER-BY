package com.ta.orderby.admin.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AdminPayment {
	
	private int no;
	
	private String uid;
	
	private String name;

	private String method;
	
	private Date enrollDate; 
	
	private int totprice;
	
	private int finprice;
	
	private String status;
	
	private String username;
	
	private int mno;
		
	private int cno;
	
	private int mcno;
}
