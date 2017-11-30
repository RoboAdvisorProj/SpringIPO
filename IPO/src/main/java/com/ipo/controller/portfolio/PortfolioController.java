package com.ipo.controller.portfolio;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ipo.controller.board.BoardController;

@Controller
@RequestMapping("/portfolio/*")
public class PortfolioController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value = "/self_diagnosis", method = RequestMethod.GET)
	public void selfDiagnosisGet() throws Exception {
		logger.info("self_diagnosis get! .........");
	}
	
	@RequestMapping(value = "/high_risk", method = RequestMethod.GET)
	public void highRiskGet() throws Exception {
		logger.info("high_risk get! .........");
	}
	
	@RequestMapping(value = "/moderate_risk", method = RequestMethod.GET)
	public void moderateRiskGet() throws Exception {
		logger.info("moderate_risk get! .........");
	}
	
	@RequestMapping(value = "/low_risk", method = RequestMethod.GET)
	public void lowRiskGet() throws Exception {
		logger.info("low_risk get! .........");
	}
}
