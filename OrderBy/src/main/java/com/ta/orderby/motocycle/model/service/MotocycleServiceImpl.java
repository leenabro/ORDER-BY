package com.ta.orderby.motocycle.model.service;

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

}
