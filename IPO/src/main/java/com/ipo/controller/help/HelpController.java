package com.ipo.controller.help;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ipo.controller.board.BoardController;

@Controller
@RequestMapping("/help/*")
public class HelpController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public void faqGet() throws Exception {
		logger.info("faq get! .........");
	}
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public void qnaGet() throws Exception {
		logger.info("qna get! .........");
	}
}
