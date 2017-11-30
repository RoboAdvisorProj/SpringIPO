package com.ipo.controller.board;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ipo.service.board.BoardService;
import com.ipo.util.board.PageCriteria;
import com.ipo.util.board.PageMaker;
import com.ipo.vo.board.BoardVO;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger logger=LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	private BoardService boardService;
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public void registerGet(BoardVO board,Model model) throws Exception{
		logger.info("register get! .........");
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String registPOST(BoardVO boardVO,RedirectAttributes rttr) throws Exception{
		logger.info("regist post .........");
		logger.info(boardVO.toString());
		boardService.regist(boardVO);
		
		rttr.addFlashAttribute("msg","success");
		
		return "redirect:/board/listAll";
	}
	
	@RequestMapping(value="/listAll",method=RequestMethod.GET)
	public void listAll(Model model) throws Exception {
		logger.info("show all list.......");
		model.addAttribute("list",boardService.listAll());
	}
	@RequestMapping(value="/read",method=RequestMethod.GET)
	public void read(@RequestParam("bno") int bno,Model model) throws Exception{
		  
		model.addAttribute(boardService.read(bno));
	}
	@RequestMapping(value="/remove",method=RequestMethod.POST)
	public String remove(@RequestParam("bno") int bno,RedirectAttributes rttr) throws Exception{
		boardService.remove(bno);
		rttr.addFlashAttribute("msg","SUCCESS");
		
		return "redirect:/board/listAll";
	}
	@RequestMapping(value="/modify",method=RequestMethod.GET)
	public void modifyGET(int bno,Model model) throws Exception{
		model.addAttribute(boardService.read(bno));
	}
	@RequestMapping(value="/modify",method=RequestMethod.POST)
	public String modifyPOST(BoardVO boardVO,RedirectAttributes rttr) throws Exception{
		logger.info("modify post.........");
		boardService.modify(boardVO);
		rttr.addFlashAttribute("msg","service");
		String str="abc";
		str.toCharArray();
		return "redirect:/board/listAll";
	}
	 
	@RequestMapping(value="/listCri",method=RequestMethod.GET)
	public void listAll(PageCriteria pageCri,Model model)throws Exception{
		logger.info("listAll() 호출............");
		model.addAttribute("list",boardService.listAll());
	}
	@RequestMapping(value="/listPage",method=RequestMethod.GET)
	public void listPage(PageCriteria pageCri,Model model)throws Exception{
		logger.info(pageCri.toString());
		
		model.addAttribute("list",boardService.listCriteria(pageCri));
		PageMaker pageMaker=new PageMaker();
		pageMaker.setPageCri(pageCri);
		pageMaker.setTotalCount(boardService.listCountCriteria(pageCri));
		
		model.addAttribute("pageMaker",pageMaker);
	}
}
