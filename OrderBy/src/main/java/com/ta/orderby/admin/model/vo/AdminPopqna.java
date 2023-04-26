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
	
	private String name;
	
	private String email;
	
	private String phone;
	
	private String content;
	
	private Date enrolldate;
	
	private String status;

}
