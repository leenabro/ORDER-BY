package com.ta.orderby.admin.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AdminStore {

	private int no;
	
	private String name;
	
	private int count;
	
	private String location;
	
	private String address;
	
	private String slat;
	
	private String slong;
	
	private String status;
}
