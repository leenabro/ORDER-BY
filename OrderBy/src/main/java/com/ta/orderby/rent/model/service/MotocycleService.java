package com.ta.orderby.rent.model.service;

import java.util.Date;
import java.util.List;

import com.ta.orderby.rent.model.vo.Motocycle;

public interface MotocycleService {


	List<Motocycle> findAllByBrand(String brand);


	List<Motocycle> getMotocycleList();

	List<Motocycle> getMotocycleList(Date rentDate, Date returnDate, String sNo);


	List<Motocycle> getMotocycleList(Date rentDate, Date returnDate, String sNo, String brand);


	
}
