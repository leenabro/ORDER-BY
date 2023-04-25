package com.ta.orderby.car.model.service;

import java.util.List;

import com.ta.orderby.admin.model.vo.AdminProductMotocycle;
import com.ta.orderby.car.model.vo.Car;

public interface CarService {

	Car findCarByName(String name);

	List<Car> findCarBySale();

	List<AdminProductMotocycle> findMotoBySale();

	List<Car> bestCarList();

	List<AdminProductMotocycle> bestMotoList();

	Car findCarByNo(int carNo);

}
