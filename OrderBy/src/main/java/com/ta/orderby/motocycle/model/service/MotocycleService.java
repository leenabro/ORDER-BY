package com.ta.orderby.motocycle.model.service;

import java.util.Date;
import java.util.List;

import com.ta.orderby.motocycle.model.vo.Motocycle;

public interface MotocycleService {

	List<Motocycle> findMotocycleBySale();

	Motocycle findMotocycleByName(String name);

	Motocycle findMotocycleByNo(int motocycleNo);
	
	// 소현
	List<Motocycle> getMotocycleList();

	List<Motocycle> getMotocycleList(Date rentDate, Date returnDate, String sNo);


	List<Motocycle> findMotoBySale();

	List<Motocycle> bestMotoList();
}
