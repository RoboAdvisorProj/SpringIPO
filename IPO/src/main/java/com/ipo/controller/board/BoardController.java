package com.ipo.controller.board;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
		
		rttr.addFlashAttribute("msg","register success");
		
		return "redirect:/board/listPage";
	}
	
	@RequestMapping(value="/remove",method=RequestMethod.POST)
	public String remove(@RequestParam("bno") int bno,RedirectAttributes rttr) throws Exception{
		boardService.remove(bno);
		rttr.addFlashAttribute("msg","remove success");
		
		return "redirect:/board/listPage";
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
	
	@RequestMapping(value="/readPage",method=RequestMethod.GET)
	public void read(@RequestParam("bno") int bno,
							@ModelAttribute("cri") PageCriteria pageCri,
							Model model)throws Exception{
		model.addAttribute(boardService.read(bno));
	}
	  @RequestMapping(value = "/removePage", method = RequestMethod.POST)
	  public String remove(@RequestParam("bno") int bno, PageCriteria pageCri, RedirectAttributes rttr) throws Exception {

	    boardService.remove(bno);

	    rttr.addAttribute("page", pageCri.getPage());
	    rttr.addAttribute("perPageNum", pageCri.getPerPageNum());
	    rttr.addFlashAttribute("msg", "remove success");

	    return "redirect:/board/listPage";
	  }

	  @RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	  public void modifyPagingGET(@RequestParam("bno") int bno, @ModelAttribute("cri") PageCriteria pageCri, Model model)
	      throws Exception {

	    model.addAttribute(boardService.read(bno));
	  }
		@RequestMapping(value="/modifyPage",method=RequestMethod.POST)
		public String modifyPagingPOST(BoardVO boardVO,PageCriteria pageCri,
														RedirectAttributes rttr) throws Exception{
			logger.info("modify post.........");
			boardService.modify(boardVO);
			rttr.addAttribute("page",pageCri.getPage());
			rttr.addAttribute("perPageNum",pageCri.getPerPageNum());
			rttr.addFlashAttribute("msg","modify success");
			return "redirect:/board/listPage";
		}
}
