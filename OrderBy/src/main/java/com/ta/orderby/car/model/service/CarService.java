package com.ta.orderby.car.model.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.ta.orderby.car.model.vo.Car;

public interface CarService {

	Car findCarByName(String name);

	List<Car> findCarBySale();


	List<Car> bestCarList();


	Car findCarByNo(int carNo);
	
	List<Car> getCarList();

	List<Car> getCarList(Date rentDate, Date returnDate, String sNo);

	Car findCarByNameAndStoreNo(Map<String, Object> map);
	
	List<Car> getCarList(Date rentDate, Date returnDate, String sNo, String brand);

}
