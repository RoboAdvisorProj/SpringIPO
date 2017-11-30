package com.ipo.service.board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ipo.dao.board.BoardDAO;
import com.ipo.util.board.PageCriteria;
import com.ipo.vo.board.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO boardDAO;
	
	@Override
	public void regist(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.create(boardVO);
	}

	@Override
	public BoardVO read(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.read(bno);
	}

	@Override
	public void modify(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.update(boardVO);
	}

	@Override
	public void remove(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.delete(bno);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.listAll();
	}
	@Override
	public List<BoardVO> listCriteria(PageCriteria pageCri) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.listCriteria(pageCri);
	}
	@Override
	public int listCountCriteria(PageCriteria pageCri) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.countPaging(pageCri);
	}
}
