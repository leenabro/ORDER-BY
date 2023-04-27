package com.ta.orderby.reserve.model.service;

import java.util.List;

import com.ta.orderby.reserve.model.vo.Reserve;
import com.ta.orderby.common.util.PageInfo;

public interface ReserveService {

	int getReserveCount();

	List<Reserve> getReserveList(PageInfo pageInfo);

	Reserve findreserveByNo(int no);

	int delete(int no);



}
