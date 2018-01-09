package com.ipo.dao.notice;

import java.util.List;
import com.ipo.util.board.PageCriteria;
import com.ipo.util.board.SearchCriteria;
import com.ipo.vo.notice.NoticeVO;

public interface NoticeDAO {
	public void create(NoticeVO noticeVO)throws Exception;
	public NoticeVO read(Integer bno)throws Exception;
	public void update(NoticeVO noticeVO)throws Exception;
	public void delete(Integer bno)throws Exception;
	public List<NoticeVO> listAll()throws Exception;
	public List<NoticeVO> listPage(int page)throws Exception;
	public List<NoticeVO> listCriteria(PageCriteria pageCri)throws Exception;
	public int countPaging(PageCriteria pageCri)throws Exception;
	public List<NoticeVO> listSearch(SearchCriteria searchCri)throws Exception;
	public int listSearchCount(SearchCriteria searchCri)throws Exception;
	public void updateReplyCnt(Integer bno,int amount)throws Exception;
	public void updateViewCnt(Integer bno)throws Exception;
	public void addAttach(String fullName)throws Exception;
	public List<String> getAttach(Integer bno)throws Exception;
	public void deleteAttach(Integer bno)throws Exception;
	public void replaceAttach(String fullName,Integer bno)throws Exception;
	public void replyUpdate()throws Exception;
	public void boardNumReset()throws Exception;
}
