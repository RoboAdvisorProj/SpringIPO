package com.ipo.service.board;

import java.util.List;
import com.ipo.util.board.PageCriteria;
import com.ipo.util.board.SearchCriteria;
import com.ipo.vo.board.BoardVO;

public interface BoardService {
	public void regist(BoardVO boardVO) throws Exception;

	public BoardVO read(Integer bno) throws Exception;

	public void modify(BoardVO boardVO) throws Exception;

	public void remove(Integer bno) throws Exception;

	public List<BoardVO> listAll() throws Exception;

	public List<BoardVO> listCriteria(PageCriteria pageCri) throws Exception;

	public int listCountCriteria(PageCriteria pageCri) throws Exception;

	public List<BoardVO> listSearchCriteria(SearchCriteria searchCri) throws Exception;

	public int listSearchCount(SearchCriteria searchCri) throws Exception;
	
	public List<String> getAttach(Integer bno)throws Exception;
	
	public void replyUpdate()throws Exception;
	
	public void boardNumReset()throws Exception; 

	public void updateFileCnt(Integer bno,int amount)throws Exception;
}
