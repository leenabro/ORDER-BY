package com.ta.orderby.car.model.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ta.orderby.car.model.mapper.CarMapper;
import com.ta.orderby.car.model.vo.Car;

@Service
public class CarServiceImpl implements CarService {
	@Autowired
	private CarMapper mapper;
	
	@Override
	public Car findCarByName(String name) {

		return mapper.findCarByName(name);
	}

	@Override
	public List<Car> findCarBySale() {
		
		return mapper.findCarBySale();
	}



	@Override
	public List<Car> bestCarList() {
		
		return mapper.bestCarfind();
	}


	@Override
	public Car findCarByNo(int carNo) {

		return mapper.findCarByNo(carNo);
	}
	
	@Override
	public List<Car> getCarList() {
		
		return mapper.selectCarAll();
	}

	@Override
	public List<Car> getCarList(Date rentDate, Date returnDate, String sNo) {
		
		return mapper.selectAllByDateStore(rentDate, returnDate, sNo);
	}

	@Override
	public Car findCarByNameAndStoreNo(Map<String, Object> map) {
		
		return mapper.findCarByNameAndStoreNo(map);
	}

	@Override
	public List<Car> getCarList(Date rentDate, Date returnDate, String sNo, String brand) {

		return mapper.selectAllByDateStoreBrand(rentDate, returnDate, sNo, brand);
	}



}
