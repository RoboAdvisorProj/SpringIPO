package com.ipo.controller.portfolio;

import java.util.List;
import javax.inject.Inject;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ipo.controller.board.BoardController;
import com.ipo.service.bitcoin.BitcoinService;
import com.ipo.vo.bitcoin.BitcoinVO;

@Controller
@RequestMapping("/portfolio/*")
public class PortfolioController {
	
	@Inject
	BitcoinService bitcoinService;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value = "/self_diagnosis", method = RequestMethod.GET)
	public void selfDiagnosisGet() throws Exception {
		logger.info("self_diagnosis get! .........");
	}
	
	@RequestMapping(value = "/riskAvoid", method = RequestMethod.GET)
	public void riskAvoidGet() throws Exception {
		logger.info("riskAvoid get! .........");
	}
	
	@RequestMapping(value = "/safetyPre", method = RequestMethod.GET)
	public void safetyPreGet() throws Exception {
		logger.info("safetyPre get! .........");
	}
	
	@RequestMapping(value = "/riskNeu", method = RequestMethod.GET)
	public void riskNeuGet() throws Exception {
		logger.info("riskNeu get! .........");
	}
	@RequestMapping(value = "/activeInv", method = RequestMethod.GET)
	public void activeInvGet() throws Exception {
		logger.info("activeInvget! .........");
	}
	@RequestMapping(value = "/riskPre", method = RequestMethod.GET)
	public void lowRiskGet() throws Exception {
		logger.info("riskPre get! .........");
	}
	@RequestMapping(value = "/bitcoin", method = RequestMethod.GET)
	public void bitcoinGet() throws Exception {
		logger.info("bitcoin get! .........");
	}
}
