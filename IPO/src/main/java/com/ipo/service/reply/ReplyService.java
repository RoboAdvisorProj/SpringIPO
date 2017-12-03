package com.ipo.service.reply;

import java.util.List;

import com.ipo.util.board.PageCriteria;
import com.ipo.vo.reply.ReplyVO;

public interface ReplyService {

	public void addReply(ReplyVO replyVO) throws Exception;
	
	public List<ReplyVO> listReply(Integer bno)throws Exception;
	
	public void modfiyReply(ReplyVO replyVO)throws Exception;
	
	public void removeReply(Integer bno)throws Exception;
	
	public List<ReplyVO> listReplyPage(Integer bno,PageCriteria pageCri)throws Exception;
	
	public int count(Integer bno)throws Exception;
}
