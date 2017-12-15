package com.ipo.service.board;

import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import com.ipo.dao.board.BoardDAO;
import com.ipo.util.board.PageCriteria;
import com.ipo.util.board.SearchCriteria;
import com.ipo.vo.board.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO boardDAO;
	
	@Transactional
	@Override
	public void regist(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.create(boardVO);
		
		String[] files=boardVO.getFiles();
		
		if(files==null) {return;}
		
		for(String fileName:files) {
			boardDAO.addAttach(fileName);
		}
	}

	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public BoardVO read(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.updateViewCnt(bno);
		return boardDAO.read(bno);
	}

	@Override
	public void modify(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.update(boardVO);
		
		Integer bno=boardVO.getBno();
		
		boardDAO.deleteAttach(bno);
		
		String[] files=boardVO.getFiles();
		
		if(files==null) {return;}
		
		for(String fileName:files) {
			boardDAO.replaceAttach(fileName, bno);
		}
	}

	@Transactional
	@Override
	public void remove(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.deleteAttach(bno);
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
	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.listSearch(searchCri);
	}
	@Override
	public int listSearchCount(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.listSearchCount(searchCri);
	}
	@Override
	public List<String> getAttach(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.getAttach(bno);
	}
	@Override
	public void replyUpdate() throws Exception {
		// TODO Auto-generated method stub
	boardDAO.replyUpdate();	
	}
}
