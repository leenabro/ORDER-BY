package com.ta.orderby.reserve.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.ta.orderby.reserve.model.vo.Reserve;

@Mapper
public interface ReserveMapper {
	
	int selecReserveCount();
	
	List<Reserve> selectAll(RowBounds bounds);
	
	Reserve selectReserveByNo(@Param("no")int no);
	
	int updateStatus(@Param("no") int no, @Param("status") String status);
}
