package com.ipo.dao.board;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ipo.util.board.PageCriteria;
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
}
