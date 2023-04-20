package com.ta.orderby.car.model.service;

import java.util.List;

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

}
