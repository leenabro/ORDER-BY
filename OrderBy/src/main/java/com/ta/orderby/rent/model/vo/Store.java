package com.ta.orderby.rent.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Store {
	private int no;
	private String name;
	private int count;
	private String location;
	private String address;
	private String lat;
	private String lng;
	private String status;
}
