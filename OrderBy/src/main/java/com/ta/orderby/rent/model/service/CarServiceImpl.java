package com.ta.orderby.rent.model.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ta.orderby.rent.model.mapper.CarMapper;
import com.ta.orderby.rent.model.vo.Car;

@Service
public class CarServiceImpl implements CarService{

	@Autowired
	private CarMapper mapper;
	
	@Override
	public List<Car> getCarList() {
		
		return mapper.selectCarAll();
	}

	@Override
	public List<Car> getCarList(Date rentDate, Date returnDate, String sNo) {
		return mapper.selectAllByDateStore(rentDate, returnDate, sNo);
	}

}
