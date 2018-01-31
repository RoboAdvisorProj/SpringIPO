package com.ipo.controller.portfolio;

import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ipo.controller.board.BoardController;
import com.ipo.service.indicator.IndicatorService;
import com.ipo.util.portfolio.PageMaker;
import com.ipo.util.portfolio.SearchCriteria;

@Controller
@RequestMapping("/portfolio/*")
public class PortfolioController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	private IndicatorService indicatorService;
	
	@RequestMapping(value = "/self_diagnosis", method = RequestMethod.GET)
	public void selfDiagnosisGet() throws Exception {
		logger.info("self_diagnosis get! .........");
	}
	//안정형
	@RequestMapping(value = "/riskAvoid", method = RequestMethod.GET)
	public void riskAvoidGet() throws Exception {
		logger.info("riskAvoid get! .........");
	}
	//안정추구형
	@RequestMapping(value = "/safetyPre", method = RequestMethod.GET)
	public void safetyPreGet() throws Exception {
		logger.info("safetyPre get! .........");
	}
	//위험중립형
	@RequestMapping(value = "/riskNeu", method = RequestMethod.GET)
	public void riskNeuGet() throws Exception {
		logger.info("riskNeu get! .........");
	}
	//적극투자형
	@RequestMapping(value = "/activeInv", method = RequestMethod.GET)
	public void activeInvGet() throws Exception {
		logger.info("activeInvget! .........");
	}
	//공격투자형
	@RequestMapping(value = "/riskPre", method = RequestMethod.GET)
	public void lowRiskGet() throws Exception {
		logger.info("riskPre get! .........");
	}
	
	//5대 성향 리스트 페이지
	
	//안정형 리스트
	@RequestMapping(value = "/list/riskAvoidList", method = RequestMethod.GET)
	public void riskAvoidListGet(@ModelAttribute("cri") SearchCriteria searchCri,Model model) throws Exception {
		logger.info("riskAvoidList get! .........");
		logger.info(searchCri.toString());
		
		model.addAttribute("list",indicatorService.listSearchRiskAvoid(searchCri));
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setPageCri(searchCri);
		pageMaker.setTotalCount(indicatorService.listSearchCountRiskAvoid(searchCri));
		
		model.addAttribute("pageMaker",pageMaker);
		
		
	}
	//안정추구형 리스트
	@RequestMapping(value = "/list/safetyPreList", method = RequestMethod.GET)
	public void safetyPreListGet(@ModelAttribute("cri") SearchCriteria searchCri,Model model) throws Exception {
		logger.info("safetyPreList get! .........");
		logger.info(searchCri.toString());
		
		model.addAttribute("list",indicatorService.listSearchSafetyPre(searchCri));
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setPageCri(searchCri);
		pageMaker.setTotalCount(indicatorService.listSearchCountSafetyPre(searchCri));
		
		model.addAttribute("pageMaker",pageMaker);
	}
	//위험중립형 리스트
	@RequestMapping(value = "/list/riskNeuList", method = RequestMethod.GET)
	public void riskNeuListGet(@ModelAttribute("cri") SearchCriteria searchCri,Model model) throws Exception {
		logger.info("riskNeu get! .........");
		logger.info(searchCri.toString());
		
		model.addAttribute("list",indicatorService.listSearchRiskNeu(searchCri));
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setPageCri(searchCri);
		pageMaker.setTotalCount(indicatorService.listSearchCountRiskNeu(searchCri));
		
		model.addAttribute("pageMaker",pageMaker);
	}
	//적극투자형 리스트
	@RequestMapping(value = "/list/activeInvList", method = RequestMethod.GET)
	public void activeInvListGet(@ModelAttribute("cri") SearchCriteria searchCri,Model model) throws Exception {
		logger.info("activeInvget! .........");
		logger.info(searchCri.toString());
		
		model.addAttribute("list",indicatorService.listSearchActiveInv(searchCri));
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setPageCri(searchCri);
		pageMaker.setTotalCount(indicatorService.listSearchCountActiveInv(searchCri));
		
		model.addAttribute("pageMaker",pageMaker);
	}
	//공격투자형 리스트
	@RequestMapping(value = "/list/riskPreList", method = RequestMethod.GET)
	public void lowRiskListGet(@ModelAttribute("cri") SearchCriteria searchCri,Model model) throws Exception {
		logger.info("riskPre get! .........");
		logger.info(searchCri.toString());
		
		model.addAttribute("list",indicatorService.listSearchRiskPre(searchCri));
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setPageCri(searchCri);
		pageMaker.setTotalCount(indicatorService.listSearchCountRiskPre(searchCri));
		
		model.addAttribute("pageMaker",pageMaker);
	}
}
