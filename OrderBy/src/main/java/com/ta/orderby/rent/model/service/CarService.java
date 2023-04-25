package com.ta.orderby.rent.model.service;

import java.util.Date;
import java.util.List;

import com.ta.orderby.rent.model.vo.Car;

public interface CarService {
	List<Car> getCarList();

	List<Car> getCarList(Date rentDate, Date returnDate, String sNo);
}
