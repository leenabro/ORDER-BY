package com.ta.orderby.payment.model.vo;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reservation {

	private int no;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date rentdate;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date returndate;
	private int sno;
	private int cno;
	private int mcno;
	private String status;
	private String puid;
	private int mno;
}
