package com.ta.orderby.rent.model.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ta.orderby.rent.model.mapper.MotocycleMapper;
import com.ta.orderby.rent.model.vo.Motocycle;

@Service
public class MotocycleServiceImpl implements MotocycleService {

	@Autowired
	private MotocycleMapper mapper;
	
	
	@Override
	public List<Motocycle> getMotocycleList() {
		return mapper.selectMotocycleAll();
	}


	@Override
	public List<Motocycle> findAllByBrand(String brand) {
		return mapper.selectAllByBrand(brand);
	}


	@Override
	public List<Motocycle> getMotocycleList(Date rentDate, Date returnDate, String sNo) {
		return mapper.selectAllByDateStore(rentDate, returnDate, sNo);
	}


	@Override
	public List<Motocycle> getMotocycleList(Date rentDate, Date returnDate, String sNo, String brand) {
		return mapper.selectAllByDateStoreBrand(rentDate, returnDate, sNo, brand);
	}
	

}
