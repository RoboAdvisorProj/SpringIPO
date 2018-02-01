package com.ipo.service.notice;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.ipo.dao.notice.NoticeDAO;
import com.ipo.util.board.PageCriteria;
import com.ipo.util.board.SearchCriteria;
import com.ipo.vo.notice.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Inject
	private NoticeDAO noticeDAO;
	
	@Transactional
	@Override
	public void regist(NoticeVO noticeVO) throws Exception {
		// TODO Auto-generated method stub
		noticeDAO.create(noticeVO);

		String[] files = noticeVO.getFiles();

		if (files == null) {
			return;
		}

		for (String fileName : files) {
			noticeDAO.addAttach(fileName);
		}
	}

	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public NoticeVO read(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		noticeDAO.updateViewCnt(bno);
		return noticeDAO.read(bno);
	}

	@Override
	public void modify(NoticeVO noticeVO) throws Exception {
		// TODO Auto-generated method stub
		noticeDAO.update(noticeVO);

		Integer bno = noticeVO.getBno();

		noticeDAO.deleteAttach(bno);

		String[] files = noticeVO.getFiles();

		if (files == null) {
			return;
		}

		for (String fileName : files) {
			noticeDAO.replaceAttach(fileName, bno);
		}
	}

	@Transactional
	@Override
	public void remove(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		noticeDAO.deleteAttach(bno);
		noticeDAO.delete(bno);
	}

	@Override
	public List<NoticeVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.listAll();
	}

	@Override
	public List<NoticeVO> listCriteria(PageCriteria pageCri) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.listCriteria(pageCri);
	}

	@Override
	public int listCountCriteria(PageCriteria pageCri) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.countPaging(pageCri);
	}

	@Override
	public List<NoticeVO> listSearchCriteria(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.listSearch(searchCri);
	}

	@Override
	public int listSearchCount(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.listSearchCount(searchCri);
	}

	@Override
	public List<String> getAttach(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.getAttach(bno);
	}

	@Override
	public void replyUpdate() throws Exception {
		// TODO Auto-generated method stub
		noticeDAO.replyUpdate();
	}
	@Override
	public void boardNumReset() throws Exception {
		// TODO Auto-generated method stub
		noticeDAO.boardNumReset();
	}
	@Override
	public void updateFile() throws Exception {
		// TODO Auto-generated method stub
	noticeDAO.updateFile();	
	}
}
