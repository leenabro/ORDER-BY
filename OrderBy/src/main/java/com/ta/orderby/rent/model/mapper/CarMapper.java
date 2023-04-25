package com.ta.orderby.rent.model.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ta.orderby.rent.model.vo.Car;

@Mapper
public interface CarMapper {

	List<Car> selectCarAll();

	List<Car> selectAllByDateStore(@Param("rentDate") Date rentDate, @Param("returnDate")Date returnDate, @Param("sNo") String sNo);

}
