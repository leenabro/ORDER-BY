package com.ta.orderby.motocycle.model.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

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

	Motocycle findMotoByNameAndStoreNo(Map<String, Object> map);
	
	List<Motocycle> getMotocycleList(Date rentDate, Date returnDate, String sNo, String brand);
}
