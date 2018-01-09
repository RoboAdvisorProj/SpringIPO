package com.ipo.dao.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.ipo.util.board.PageCriteria;
import com.ipo.util.board.SearchCriteria;
import com.ipo.vo.notice.NoticeVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {
	
	@Inject
	private SqlSession session;

	@Override
	public void create(NoticeVO noticeVO) throws Exception {
		// TODO Auto-generated method stub
		session.insert("notice.create", noticeVO);
	}

	@Override
	public NoticeVO read(Integer bno) throws Exception {
		// TODO Auto-generated method stub

		return session.selectOne("notice.read", bno);
	}

	@Override
	public void update(NoticeVO noticeVO) throws Exception {
		// TODO Auto-generated method stub
		session.update("notice.update", noticeVO);
	}

	@Override
	public void delete(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		session.delete("notice.delete", bno);
	}

	@Override
	public List<NoticeVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("notice.listAll");
	}

	@Override
	public List<NoticeVO> listPage(int page) throws Exception {
		// TODO Auto-generated method stub
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 10;

		return session.selectList("notice.listPage", page);
	}

	@Override
	public List<NoticeVO> listCriteria(PageCriteria pageCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("notice.listCriteria", pageCri);
	}

	@Override
	public int countPaging(PageCriteria pageCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("notice.countPaging", pageCri);
	}

	@Override
	public List<NoticeVO> listSearch(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("notice.listSearch", searchCri);
	}

	@Override
	public int listSearchCount(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("notice.listSearchCount", searchCri);
	}

	@Override
	public void updateReplyCnt(Integer bno, int amount) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("bno", bno);
		paramMap.put("amout", amount);

		session.update("notice.updateReplyCnt", paramMap);
	}

	@Override
	public void updateViewCnt(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		session.update("notice.updateViewCnt", bno);
	}

	@Override
	public void addAttach(String fullName) throws Exception {
		// TODO Auto-generated method stub
		session.insert("notice.addAttach", fullName);
	}

	@Override
	public List<String> getAttach(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("notice.getAttach", bno);
	}

	@Override
	public void deleteAttach(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		session.delete("notice.deleteAttach", bno);
	}

	@Override
	public void replaceAttach(String fullName, Integer bno) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("bno", bno);
		paramMap.put("fullName", fullName);

		session.insert("notice.replaceAttach", paramMap);

	}

	@Override
	public void replyUpdate() throws Exception {
		// TODO Auto-generated method stub
		session.update("notice.replyUpdate");
	}

	@Override
	public void boardNumReset() throws Exception {
		// TODO Auto-generated method stub
		session.update("notice.boardNumReset");
	}
}
