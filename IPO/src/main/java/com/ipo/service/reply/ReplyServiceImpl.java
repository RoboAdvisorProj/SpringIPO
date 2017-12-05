package com.ipo.service.reply;

import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ipo.dao.board.BoardDAO;
import com.ipo.dao.reply.ReplyDAO;
import com.ipo.util.board.PageCriteria;
import com.ipo.vo.reply.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject 
	private ReplyDAO replyDAO;
	
	@Inject
	private BoardDAO boardDAO;
	
	@Transactional
	@Override
	public void addReply(ReplyVO replyVO) throws Exception {
		// TODO Auto-generated method stub
		replyDAO.create(replyVO);
		boardDAO.updateReplyCnt(replyVO.getBno(), 1);
	}

	@Override
	public List<ReplyVO> listReply(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return replyDAO.list(bno);
	}

	@Override
	public void modfiyReply(ReplyVO replyVO) throws Exception {
		// TODO Auto-generated method stub
		replyDAO.update(replyVO);
	}

	@Transactional	
	@Override
	public void removeReply(Integer rno) throws Exception {
		// TODO Auto-generated method stub
		int bno=replyDAO.getBno(rno);
		replyDAO.delete(rno);
		boardDAO.updateReplyCnt(bno, -1);
	}
	
	@Override
	public List<ReplyVO> listReplyPage(Integer bno, PageCriteria pageCri) throws Exception {
		// TODO Auto-generated method stub
		return replyDAO.listPage(bno, pageCri);
	}
	@Override
	public int count(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return replyDAO.count(bno);
	}

}
