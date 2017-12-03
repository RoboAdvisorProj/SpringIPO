package com.ipo.test.board;

import java.util.List;

import javax.inject.Inject;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import com.ipo.dao.board.BoardDAO;
import com.ipo.util.board.PageCriteria;
import com.ipo.util.board.SearchCriteria;
import com.ipo.vo.board.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BoardDAOTest {

	@Inject 
	private BoardDAO boardDAO;
	
	private static Logger logger=LoggerFactory.getLogger(BoardDAOTest.class);
	
	//@Test
	@Ignore
	public void testCreate() throws Exception{
		BoardVO boardVO=new BoardVO();
		boardVO.setTitle("new title");
		boardVO.setContent("new content");
		boardVO.setWriter("new writer");
		boardDAO.create(boardVO);
	}
	
	//@Test
	@Ignore
	public void testRead() throws Exception{
		logger.info(boardDAO.read(1).toString());
	}
	
	//@Test
	@Ignore
	public void testUpdate() throws Exception{
		BoardVO boardVO = new BoardVO();
		boardVO.setBno(1);
		boardVO.setTitle("update title");
		boardVO.setContent("update content");
		boardVO.setWriter("update writer");
		boardDAO.update(boardVO);
	}
	
	//@Test
	@Ignore
	public void testDelete() throws Exception{
		boardDAO.delete(4);
	}
	
	
	//@Test
	@Ignore
	public void testListPage()throws Exception{
		int page=3;
		List<BoardVO> list=boardDAO.listPage(page);
		
		for(BoardVO boardVO:list) {
			logger.info(boardVO.getBno()+":"+boardVO.getTitle());
		}
	}
	
	@Ignore
	public void testListCriteria() throws Exception{
		
		PageCriteria pageCri=new PageCriteria();
		pageCri.setPage(2);
		pageCri.setPerPageNum(20);
		
		List<BoardVO> list=boardDAO.listCriteria(pageCri);
		
		for(BoardVO boardVO:list) {
			logger.info(boardVO.getBno()+":"+boardVO.getTitle());
		}
	}
	@Ignore
	public void testURI() throws Exception{
		
		UriComponents uriComponents=UriComponentsBuilder.newInstance()
				.path("/board/read.ipo")
				.queryParam("bno", 12)
				.queryParam("perPageNum", 20)
				.build();
		
		logger.info("/board/read.ipo=12&perPageNum=20");
		
	}
	
	@Test
	public void testDynamic1() throws Exception{
		SearchCriteria searchCri=new SearchCriteria();
		
		searchCri.setPage(1);
		searchCri.setKeyword("글");
		searchCri.setSearchType("t");
		logger.info("======================");
		
		List<BoardVO> list=boardDAO.listSearch(searchCri);
		
		for(BoardVO boardVO:list) {
			logger.info(boardVO.getBno()+":"+boardVO.getTitle());
		}
		logger.info("======================");
		
		logger.info("COUNT:"+boardDAO.listSearchCount(searchCri));
	}
}
