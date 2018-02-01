package com.ipo.controller.notice;

import java.util.List;
import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.ipo.service.notice.NoticeService;
import com.ipo.util.board.PageMaker;
import com.ipo.util.board.SearchCriteria;
import com.ipo.vo.notice.NoticeVO;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	private static final Logger logger=LoggerFactory.getLogger(NoticeController.class);
	
	@Inject
	private NoticeService noticeService;
		
	@RequestMapping(value="/n_register",method=RequestMethod.GET)
	public void registerGet(NoticeVO noticeVO,Model model) throws Exception{
		logger.info("register get! .........");
	}
	
	@RequestMapping(value="/n_register",method=RequestMethod.POST)
	public String registPOST(NoticeVO noticeVO,RedirectAttributes rttr) throws Exception{
		logger.info("regist post .........");
		logger.info(noticeVO.toString());
		noticeService.boardNumReset();
		noticeService.regist(noticeVO);
		noticeService.updateFile();
		rttr.addFlashAttribute("msg","register success");
		
		return "redirect:/notice/n_listPage";
	}

	@RequestMapping(value="/n_readPage",method=RequestMethod.GET)
	public void read(@RequestParam("bno") int bno,
							@ModelAttribute("cri") SearchCriteria searchCri,
							Model model)throws Exception{
		model.addAttribute(noticeService.read(bno));
	}
	  @RequestMapping(value = "/n_removePage", method = RequestMethod.POST)
	  public String remove(@RequestParam("bno") int bno, SearchCriteria searchCri, RedirectAttributes rttr) throws Exception {

		noticeService.remove(bno);
		noticeService.boardNumReset();
	    rttr.addAttribute("page", searchCri.getPage());
	    rttr.addAttribute("perPageNum", searchCri.getPerPageNum());
	    rttr.addFlashAttribute("msg", "remove success");

	    return "redirect:/notice/n_listPage";
	  }

	  @RequestMapping(value = "/n_modifyPage", method = RequestMethod.GET)
	  public void modifyPagingGET(int bno, 
			  										@ModelAttribute("cri") SearchCriteria searchCri, Model model) throws Exception {

	    model.addAttribute(noticeService.read(bno));
	  }
		@RequestMapping(value="/n_modifyPage",method=RequestMethod.POST)
		public String modifyPagingPOST(NoticeVO noticeVO,SearchCriteria searchCri,
														RedirectAttributes rttr) throws Exception{

			noticeService.modify(noticeVO);
			rttr.addAttribute("page",searchCri.getPage());
			rttr.addAttribute("perPageNum",searchCri.getPerPageNum());
			rttr.addAttribute("searchType",searchCri.getSearchType());
			rttr.addAttribute("keyword",searchCri.getKeyword());
			noticeService.updateFile();
			rttr.addFlashAttribute("msg","modify success");
			
			logger.info(rttr.toString());
			
			return "redirect:/notice/n_listPage";
		}

		@RequestMapping(value="/n_listPage",method=RequestMethod.GET)
		public void listPage(@ModelAttribute("cri") SearchCriteria searchCri,Model model)throws Exception{
			logger.info(searchCri.toString());
			
			model.addAttribute("list",noticeService.listSearchCriteria(searchCri));
			noticeService.replyUpdate();
			PageMaker pageMaker=new PageMaker();
			pageMaker.setPageCri(searchCri);
			
			pageMaker.setTotalCount(noticeService.listSearchCount(searchCri));
			
			model.addAttribute("pageMaker",pageMaker);

		}
		  @RequestMapping("/getAttach/{bno}")
		  @ResponseBody
		  public List<String> getAttach(@PathVariable("bno")Integer bno)throws Exception{
		    
		    return noticeService.getAttach(bno);
		  }  
}
