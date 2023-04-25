package com.ta.orderby.motocycle.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ta.orderby.motocycle.model.vo.Motocycle;

@Mapper
public interface MotocycleMapper {
	List<Motocycle> findMotocycleBySale();

	Motocycle findMotocycleByName(String name);

	Motocycle findMotocycleByNo(int motocycleNo);
	
	List<Motocycle> bestMotofind();

	List<Motocycle> findMotoBySale();
}
