package com.ipo.dao.reply;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ipo.util.board.PageCriteria;
import com.ipo.vo.reply.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {

	@Inject 
	private SqlSession sqlSession;
	
	@Override
	public List<ReplyVO> list(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("reply.list",bno);
	}

	@Override
	public void create(ReplyVO replyVO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert("reply.create",replyVO);
	}

	@Override
	public void update(ReplyVO replyVO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update("reply.update",replyVO);
		
	}

	@Override
	public void delete(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete("reply.delete",bno);
	}
	@Override
	public List<ReplyVO> listPage(Integer bno, PageCriteria pageCri) throws Exception {
		// TODO Auto-generated method stub
		
		Map<String,Object> paramMap=new HashMap<>();
		
		paramMap.put("bno", bno);
		paramMap.put("cri", pageCri);
		return sqlSession.selectList("reply.listPage",paramMap);
	}
	@Override
	public int count(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("reply.count",bno);
	}
	@Override
	public int getBno(Integer rno) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("reply.getBno",rno);
	}

}
