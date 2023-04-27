package com.ta.orderby.car.model.mapper;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.ta.orderby.car.model.vo.Car;

@Mapper
public interface CarMapper {
	Car findCarByName(@RequestParam("name") String name);
	
	List<Car> findCarBySale();


	List<Car> bestCarfind();

	Car findCarByNo(int carNo);
	
	List<Car> selectCarAll();

	List<Car> selectAllByDateStore(@Param("rentDate") Date rentDate, @Param("returnDate")Date returnDate, @Param("sNo") String sNo);

	Car findCarByNameAndStoreNo(Map<String, Object> map);

	List<Car> selectAllByDateStoreBrand(@Param("rentDate")Date rentDate, @Param("returnDate") Date returnDate, @Param("sNo")String sNo, @Param("brand")String brand);


}
