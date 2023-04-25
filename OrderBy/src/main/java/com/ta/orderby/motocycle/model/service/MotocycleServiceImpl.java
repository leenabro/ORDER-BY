package com.ta.orderby.motocycle.model.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ta.orderby.motocycle.model.mapper.MotocycleMapper;
import com.ta.orderby.motocycle.model.vo.Motocycle;

@Service
public class MotocycleServiceImpl implements MotocycleService {
	@Autowired
	private MotocycleMapper mapper;
	
	@Override
	public List<Motocycle> findMotocycleBySale() {

		return mapper.findMotocycleBySale();
	}

	@Override
	public Motocycle findMotocycleByName(String name) {

		return mapper.findMotocycleByName(name);
	}

	@Override
	public Motocycle findMotocycleByNo(int motocycleNo) {

		return mapper.findMotocycleByNo(motocycleNo);
	}
	
	// 소현
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

	@Override
	public List<Motocycle> findMotoBySale() {
		
		return mapper.findMotoBySale();
	}
	
	@Override
	public List<Motocycle> bestMotoList() {
		
		return mapper.bestMotofind();
	}

}
