package com.ta.orderby.payment.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Coupon {
	private String code;
	
	private String name;
	
	private int percent;
	
	private Date createDate;
	
	private String status;
	
	private Date regiDate;
	
	private String period;
	
	private int memberNo;
}
