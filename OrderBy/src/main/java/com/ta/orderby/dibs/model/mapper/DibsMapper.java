package com.ta.orderby.dibs.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.ta.orderby.dibs.model.vo.dibs;

@Mapper
public interface DibsMapper {

	int selecdibsCount();
	
	List<dibs> selectAll(RowBounds bounds);
	
	dibs selectdibsByNo(@Param("m_no")int m_no);
	
	int updateStatus(@Param("m_no")int m_no);
	
}
