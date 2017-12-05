package com.ipo.dao.reply;

import java.util.List;

import com.ipo.util.board.PageCriteria;
import com.ipo.vo.reply.ReplyVO;

public interface ReplyDAO {

	public List<ReplyVO> list(Integer bno)throws Exception;
	
	public void create(ReplyVO replyVO)throws Exception;
	
	public void update(ReplyVO replyVO)throws Exception;
	
	public void delete(Integer bno)throws Exception;
	
	public List<ReplyVO> listPage(Integer bno,PageCriteria pageCri)throws Exception;
	
	public int count(Integer bno)throws Exception;
	
	public int getBno(Integer rno)throws Exception;
}
