package com.ipo.service.reply;

import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.ipo.dao.reply.ReplyDAO;
import com.ipo.util.board.PageCriteria;
import com.ipo.vo.reply.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject 
	private ReplyDAO replyDAO;
	
	@Override
	public void addReply(ReplyVO replyVO) throws Exception {
		// TODO Auto-generated method stub
		replyDAO.create(replyVO);
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

	@Override
	public void removeReply(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		replyDAO.delete(bno);
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
