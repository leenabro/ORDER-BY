package com.ta.orderby.car.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.RequestParam;

import com.ta.orderby.car.model.vo.Car;

@Mapper
public interface CarMapper {
	Car findCarByName(@RequestParam("name") String name);
	
	List<Car> findCarBySale();


	List<Car> bestCarfind();



}
