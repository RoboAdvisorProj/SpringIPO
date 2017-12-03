package com.ipo.dao.board;

import java.util.List;

import com.ipo.util.board.PageCriteria;
import com.ipo.util.board.SearchCriteria;
import com.ipo.vo.board.BoardVO;

public interface BoardDAO {

	public void create(BoardVO boardVO)throws Exception;
	public BoardVO read(Integer bno)throws Exception;
	public void update(BoardVO boardVO)throws Exception;
	public void delete(Integer bno)throws Exception;
	public List<BoardVO> listAll()throws Exception;
	public List<BoardVO> listPage(int page)throws Exception;
	public List<BoardVO> listCriteria(PageCriteria pageCri)throws Exception;
	public int countPaging(PageCriteria pageCri)throws Exception;
	public List<BoardVO> listSearch(SearchCriteria searchCri)throws Exception;
	public int listSearchCount(SearchCriteria searchCri)throws Exception;
}
