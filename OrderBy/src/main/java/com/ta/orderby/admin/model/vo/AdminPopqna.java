package com.ta.orderby.admin.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminPopqna {

	private int no;
	
	private String title;
	
	private String content;
	
	private Date enrolldate;
	
	private String status;
	
	private String phone;
}
