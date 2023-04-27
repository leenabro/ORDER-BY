package com.ta.orderby.notice.model.service;

import java.util.List;

import com.ta.orderby.common.util.PageInfo;
import com.ta.orderby.notice.model.vo.Notice;

public interface NoticeService {

	int getBoardCount();

	List<Notice> getBoardList(PageInfo pageInfo);

	Notice findBoardByNo(int n_no);

	int delete(int n_no);

	int save(Notice notice);

	Boolean plusview(int n_no);
	
 

}
