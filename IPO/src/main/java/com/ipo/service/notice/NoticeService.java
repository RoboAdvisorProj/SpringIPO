package com.ipo.service.notice;

import java.util.List;
import com.ipo.util.board.PageCriteria;
import com.ipo.util.board.SearchCriteria;
import com.ipo.vo.notice.NoticeVO;

public interface NoticeService {
	public void regist(NoticeVO noticeVO) throws Exception;

	public NoticeVO read(Integer bno) throws Exception;

	public void modify(NoticeVO noticeVO) throws Exception;

	public void remove(Integer bno) throws Exception;

	public List<NoticeVO> listAll() throws Exception;

	public List<NoticeVO> listCriteria(PageCriteria pageCri) throws Exception;

	public int listCountCriteria(PageCriteria pageCri) throws Exception;

	public List<NoticeVO> listSearchCriteria(SearchCriteria searchCri) throws Exception;

	public int listSearchCount(SearchCriteria searchCri) throws Exception;
	
	public List<String> getAttach(Integer bno)throws Exception;
	
	public void replyUpdate()throws Exception;
	
	public void boardNumReset()throws Exception;
}
