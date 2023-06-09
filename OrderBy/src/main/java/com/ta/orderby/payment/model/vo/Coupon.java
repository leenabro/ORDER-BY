package com.ta.orderby.payment.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Coupon {
	private int ciNumber;
	
	private int coNumber;
	
	private int memberNo;
	
	private String coStatus;
	
	private String ciStatus;
	
	private Date regiDate;
	
	private String name;
	
	private int percent;
	
	private Date createDate;
	
	private int period;
	
	
}
