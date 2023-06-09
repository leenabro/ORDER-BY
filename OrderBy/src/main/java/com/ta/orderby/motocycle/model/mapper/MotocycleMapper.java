package com.ta.orderby.motocycle.model.mapper;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ta.orderby.motocycle.model.vo.Motocycle;

@Mapper
public interface MotocycleMapper {
	List<Motocycle> findMotocycleBySale();

	Motocycle findMotocycleByName(String name);

	Motocycle findMotocycleByNo(int motocycleNo);
	
	// 소현
	List<Motocycle> selectMotocycleAll();


	List<Motocycle> selectAllByDateStore(@Param("rentDate") Date rentDate, @Param("returnDate")Date returnDate, @Param("sNo") String sNo);

	List<Motocycle> findMotoBySale();

	List<Motocycle> bestMotofind();

	Motocycle findMotoByNameAndStoreNo(Map<String, Object> map);
	
	List<Motocycle> selectAllByDateStoreBrand(@Param("rentDate") Date rentDate, @Param("returnDate") Date returnDate, @Param("sNo")String sNo, @Param("brand")String brand);
}
