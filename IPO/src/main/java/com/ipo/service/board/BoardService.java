package com.ipo.service.board;

import java.util.List;

import com.ipo.util.board.PageCriteria;
import com.ipo.util.board.SearchCriteria;
import com.ipo.vo.board.BoardVO;
import com.ipo.vo.reply.ReplyVO;

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
}
