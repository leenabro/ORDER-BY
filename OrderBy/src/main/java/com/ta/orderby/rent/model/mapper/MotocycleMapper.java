package com.ta.orderby.rent.model.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ta.orderby.rent.model.vo.Motocycle;

@Mapper
public interface MotocycleMapper {
	
	List<Motocycle> selectMotocycleAll();

	List<Motocycle> selectAllByBrand(@Param("brand") String brand);


	List<Motocycle> selectAllByDateStore(@Param("rentDate") Date rentDate, @Param("returnDate")Date returnDate, @Param("sNo") String sNo);

	List<Motocycle> selectAllByDateStoreBrand(
			@Param("rentDate") Date rentDate, @Param("returnDate") Date returnDate,
			@Param("sNo") String sNo, @Param("brand") String brnad);



}
