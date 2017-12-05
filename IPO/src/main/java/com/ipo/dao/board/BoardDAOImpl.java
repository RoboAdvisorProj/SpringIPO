package com.ipo.dao.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.ipo.util.board.PageCriteria;
import com.ipo.util.board.SearchCriteria;
import com.ipo.vo.board.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession session;

	@Override
	public void create(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		session.insert("board.create", boardVO);
	}

	@Override
	public BoardVO read(Integer bno) throws Exception {
		// TODO Auto-generated method stub

		return session.selectOne("board.read", bno);
	}

	@Override
	public void update(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		session.update("board.update", boardVO);
	}

	@Override
	public void delete(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		session.delete("board.delete", bno);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("board.listAll");
	}

	@Override
	public List<BoardVO> listPage(int page) throws Exception {
		// TODO Auto-generated method stub
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 10;

		return session.selectList("board.listPage", page);
	}
	@Override
	public List<BoardVO> listCriteria(PageCriteria pageCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("board.listCriteria",pageCri);
	}
	@Override
	public int countPaging(PageCriteria pageCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("board.countPaging",pageCri);
	}
	@Override
	public List<BoardVO> listSearch(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("board.listSearch",searchCri);
	}
	@Override
	public int listSearchCount(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("board.listSearchCount",searchCri);
	}
	@Override
	public void updateReplyCnt(Integer bno, int amount) throws Exception {
		// TODO Auto-generated method stub
		Map<String,Object> paramMap=new HashMap<String,Object>();
		
		paramMap.put("bno", bno);
		paramMap.put("amout", amount);
		
		session.update("board.updateReplyCnt",paramMap);
	}
	@Override
	public void updateViewCnt(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		session.update("board.updateViewCnt",bno);
	}
	@Override
	public void addAttach(String fullName) throws Exception {
		// TODO Auto-generated method stub
	session.insert("board.addAttach",fullName);	
	}
	@Override
	public List<String> getAttach(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("board.getAttach",bno);
	}
	@Override
	public void deleteAttach(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		session.delete("board.deleteAttach",bno);
	}
	@Override
	public void replaceAttach(String fullName, Integer bno) throws Exception {
		// TODO Auto-generated method stub
		Map<String,Object> paramMap=new HashMap<String,Object>();
		
		paramMap.put("bno", bno);
		paramMap.put("fullName", fullName);
		
		session.insert("board.replaceAttach",paramMap);
		
	}
}
