package com.ta.orderby.motocycle.model.service;

import java.util.List;

import com.ta.orderby.motocycle.model.vo.Motocycle;

public interface MotocycleService {

	List<Motocycle> findMotocycleBySale();

	Motocycle findMotocycleByName(String name);

	Motocycle findMotocycleByNo(int motocycleNo);

}
