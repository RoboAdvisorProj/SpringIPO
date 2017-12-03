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
import com.ipo.util.board.PageMaker;
import com.ipo.util.board.SearchCriteria;
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

	@RequestMapping(value="/readPage",method=RequestMethod.GET)
	public void read(@RequestParam("bno") int bno,
							@ModelAttribute("cri") SearchCriteria searchCri,
							Model model)throws Exception{
		model.addAttribute(boardService.read(bno));
	}
	  @RequestMapping(value = "/removePage", method = RequestMethod.POST)
	  public String remove(@RequestParam("bno") int bno, SearchCriteria searchCri, RedirectAttributes rttr) throws Exception {

	    boardService.remove(bno);

	    rttr.addAttribute("page", searchCri.getPage());
	    rttr.addAttribute("perPageNum", searchCri.getPerPageNum());
	    rttr.addFlashAttribute("msg", "remove success");

	    return "redirect:/board/listPage";
	  }

	  @RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	  public void modifyPagingGET(int bno, 
			  										@ModelAttribute("cri") SearchCriteria searchCri, Model model) throws Exception {

	    model.addAttribute(boardService.read(bno));
	  }
		@RequestMapping(value="/modifyPage",method=RequestMethod.POST)
		public String modifyPagingPOST(BoardVO boardVO,SearchCriteria searchCri,
														RedirectAttributes rttr) throws Exception{

			boardService.modify(boardVO);
			rttr.addAttribute("page",searchCri.getPage());
			rttr.addAttribute("perPageNum",searchCri.getPerPageNum());
			rttr.addAttribute("searchType",searchCri.getSearchType());
			rttr.addAttribute("keyword",searchCri.getKeyword());
			
			rttr.addFlashAttribute("msg","modify success");
			
			logger.info(rttr.toString());
			
			return "redirect:/board/listPage";
		}
		/*	@RequestMapping(value="/listPage",method=RequestMethod.GET)
		public void listPage(PageCriteria pageCri,Model model)throws Exception{
			logger.info(pageCri.toString());
			
			model.addAttribute("list",boardService.listCriteria(pageCri));
			PageMaker pageMaker=new PageMaker();
			pageMaker.setPageCri(pageCri);
			pageMaker.setTotalCount(boardService.listCountCriteria(pageCri));
			
			model.addAttribute("pageMaker",pageMaker);
		}
		*/
		@RequestMapping(value="/listPage",method=RequestMethod.GET)
		public void listPage(@ModelAttribute("cri") SearchCriteria searchCri,Model model)throws Exception{
			logger.info(searchCri.toString());
			
			model.addAttribute("list",boardService.listSearchCriteria(searchCri));

			PageMaker pageMaker=new PageMaker();
			pageMaker.setPageCri(searchCri);
			
			pageMaker.setTotalCount(boardService.listSearchCount(searchCri));
			
			model.addAttribute("pageMaker",pageMaker);
		}
}
