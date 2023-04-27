package com.ta.orderby.reserve.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class Reserve {

	private int no;
	
	private Date rentdate;
	
	private Date returndate;
	
	private int sno;
	
	private int cno;
	
	private int mcno;
	
	private String status;
	
	private int puid;
	
	private int mno;
}
